# Movie Studio + Music-Video Handoff Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a Boss Man `movie-studio` skill that writes approved job cards and hands music-video (then explainer/narrative) work to the Video Studio teammate after an explicit owner yes.

**Architecture:** Pack-only approach A. New orchestrator skill + job-card template under `creative/jobs/`; existing creative/Hailuo/JSON2Video/ffmpeg skills stay as callees. No paid API calls in v1 — dry-run validation only. Publish remains held.

**Tech Stack:** Markdown skills (Grok Bot skill store), bash smoke check, git on `/workspace/boss-man-godmode`.

## Global Constraints

- Owner must approve every Video Studio handoff before SendToAgent.
- Music videos first; explainers and narrative share the same card schema.
- Hybrid engines: JSON2Video | Hailuo/Pixel Dojo | Remotion | FFmpeg — pick per brief and state why.
- Never publish the pack or post media publicly as part of this plan.
- Never burn paid credits in plan verification steps.
- Match existing skill frontmatter style (`name`, `description` YAML).
- Spec source of truth: `docs/superpowers/specs/2026-10-25-movie-studio-design.md`.

## File map

| Path | Responsibility |
|------|----------------|
| `creative/jobs/_template.md` | Canonical job-card schema + filled example stubs |
| `creative/jobs/README.md` | How cards are written, approved, handed off |
| `skills/movie-studio/SKILL.md` | Orchestrator: brief → engine → cost → card → stop → handoff |
| `scripts/validate_job_card.sh` | Smoke: required headings/fields present in a card file |
| `README.md` | List `movie-studio` in skills table |
| `START.md` | One-line pointer to movie studio flow |
| `profiles/BOSS_MAN.md` | Creative routing note + Video Studio handoff rule |
| `docs/superpowers/specs/2026-10-25-movie-studio-design.md` | Already committed — do not rewrite unless owner asks |

---

### Task 1: Job card template + jobs README

**Files:**
- Create: `creative/jobs/_template.md`
- Create: `creative/jobs/README.md`
- Test: `scripts/validate_job_card.sh` (created in Task 2; Task 1 ends with manual field checklist)

**Interfaces:**
- Consumes: design schema table in the spec
- Produces: template with exact required headings that Task 2/3 validators and skill will reference: `# Job`, `## Meta`, `## Brief`, `## Shot list`, `## Engine`, `## Cost`, `## Output`, `## Success`, `## Never`, `## Handoff`

- [ ] **Step 1: Create `creative/jobs/_template.md` with this exact content**

```markdown
# Job: {{id}}

## Meta

| Field | Value |
|-------|-------|
| id | {{id}} |
| genre | music-video \| explainer \| narrative |
| length_s | |
| aspect | 9:16 \| 16:9 \| 1:1 |
| status | draft \| approved \| handed-off \| done \| failed |
| created | YYYY-MM-DD |
| owner_yes | no |

## Brief

- Hook:
- Style:
- Platform:
- Notes:

## Audio

| Field | Value |
|-------|-------|
| audio | path/URL or `none` |
| lyrics | path, inline, or `n/a` |

## Shot list

1. Beat / lyric → visual
2.

## Engine

| Field | Value |
|-------|-------|
| primary | json2video \| hailuo-pixeldojo \| remotion \| ffmpeg |
| fallback | |
| models | |
| why | |

## Cost

| Field | Value |
|-------|-------|
| estimate | free path / N credits |
| ceiling | do not exceed without re-ask |
| path | sandbox \| free \| paid |

## Output

- `output_dir`: `/workspace/outputs/video/{{id}}/`
- Expected files: `final.mp4` (required); optional `still.png`, `vo.wav`, `captions.srt`

## Success

- [ ] `final.mp4` exists under output_dir
- [ ] Duration within ±20% of length_s
- [ ] Aspect matches Meta
- [ ] No publish / upload performed

## Never

- Publish to social / YouTube / X without named owner yes
- Voice-clone without consent of the voice owner
- Exceed cost ceiling without re-ask
- Start Video Studio before `owner_yes: yes`

## Handoff

After owner sets `owner_yes` to yes, Boss Man messages **Grok Bot Video Studio** (`b32c19ad-772e-48f8-b5fe-41c763c04025`) with:

1. Absolute path to this job card
2. `output_dir`
3. Engine + cost ceiling
4. Success criteria (copy of Success section)
5. Instruction: report paths/errors; do not publish
```

- [ ] **Step 2: Create `creative/jobs/README.md` with this exact content**

```markdown
# Creative jobs

Job cards for the **movie-studio** skill.

1. Copy `_template.md` → `<slug>.md` (slug = job `id`).
2. Boss Man fills Meta → Never; leaves `owner_yes: no`.
3. Owner approves → set `owner_yes: yes` and `status: approved`.
4. Boss Man hands off to Video Studio; set `status: handed-off`.
5. On delivery, set `status: done` (or `failed`) and keep the card as the audit trail.

Do not commit secrets, API keys, or private audio into this folder — link to box paths under `/workspace/` instead.
```

- [ ] **Step 3: Manual checklist (stand-in until Task 2 validator exists)**

Run:

```bash
test -f /workspace/boss-man-godmode/creative/jobs/_template.md && \
test -f /workspace/boss-man-godmode/creative/jobs/README.md && \
rg -n '^## (Meta|Brief|Audio|Shot list|Engine|Cost|Output|Success|Never|Handoff)$' \
  /workspace/boss-man-godmode/creative/jobs/_template.md
```

Expected: both files exist; rg lists all ten headings.

- [ ] **Step 4: Commit**

```bash
cd /workspace/boss-man-godmode
git add creative/jobs/_template.md creative/jobs/README.md
git commit -m "feat(jobs): movie-studio job card template"
```

---

### Task 2: Job card validator script

**Files:**
- Create: `scripts/validate_job_card.sh`
- Test: run against `_template.md` (must PASS) and a broken temp file (must FAIL)

**Interfaces:**
- Consumes: job card path as `$1`
- Produces: exit 0 if required `##` headings exist; exit 1 with missing list on stderr

- [ ] **Step 1: Write `scripts/validate_job_card.sh`**

```bash
#!/usr/bin/env bash
# Validate a movie-studio job card has required section headings.
set -euo pipefail
file="${1:-}"
if [[ -z "$file" || ! -f "$file" ]]; then
  echo "usage: $0 path/to/job.md" >&2
  exit 2
fi
required=(Meta Brief Audio "Shot list" Engine Cost Output Success Never Handoff)
missing=()
for h in "${required[@]}"; do
  if ! grep -qE "^## ${h}\$" "$file"; then
    missing+=("$h")
  fi
done
if ((${#missing[@]})); then
  echo "FAIL $file — missing sections: ${missing[*]}" >&2
  exit 1
fi
echo "OK $file"
```

- [ ] **Step 2: Make executable and verify PASS on template**

```bash
chmod +x /workspace/boss-man-godmode/scripts/validate_job_card.sh
/workspace/boss-man-godmode/scripts/validate_job_card.sh \
  /workspace/boss-man-godmode/creative/jobs/_template.md
```

Expected stdout: `OK .../_template.md`

- [ ] **Step 3: Verify FAIL on broken card**

```bash
echo '# Job: broken' > /tmp/broken-job.md
set +e
/workspace/boss-man-godmode/scripts/validate_job_card.sh /tmp/broken-job.md
code=$?
set -e
test "$code" -eq 1
```

Expected: exit code 1; stderr mentions missing sections.

- [ ] **Step 4: Commit**

```bash
cd /workspace/boss-man-godmode
git add scripts/validate_job_card.sh
git commit -m "feat(scripts): validate movie-studio job cards"
```

---

### Task 3: `movie-studio` skill

**Files:**
- Create: `skills/movie-studio/SKILL.md`
- Test: validator on a dry-run sample card written while following the skill

**Interfaces:**
- Consumes: `_template.md`, `validate_job_card.sh`, Video Studio agent id `b32c19ad-772e-48f8-b5fe-41c763c04025`
- Produces: skill that stops for owner yes before any SendToAgent

- [ ] **Step 1: Create `skills/movie-studio/SKILL.md` with this exact content**

```markdown
---
name: movie-studio
description: >-
  Route movie / music-video / explainer / narrative jobs: brief → hybrid engine
  pick → cost gate → job card → owner yes → hand off to Video Studio teammate.
  Use when the owner asks for a music video, movie studio, short film, explainer
  clip, or multi-shot story. Music videos first.
---

# Movie studio (Boss Man router)

Boss Man **routes**. Grok Bot Video Studio (`b32c19ad-772e-48f8-b5fe-41c763c04025`) **ships the cuts**. Owner must approve **every** handoff.

## When to use

- Music video (priority), explainer, or multi-shot narrative.
- Owner says “movie studio”, “music video”, or “hand this to Video Studio”.

## Pipeline

```text
Brief → Engine pick → Cost estimate → creative/jobs/<id>.md
     → STOP for owner yes → SendToAgent(Video Studio)
     → /workspace/outputs/video/<id>/ → report paths + credits
```

## Steps

1. **Brief** — genre, `length_s`, aspect (`9:16` / `16:9` / `1:1`), hook, style, platform. For music videos, require `audio` path/URL and/or `lyrics` before writing a card; if missing, ask and stop.
2. **Engine (hybrid)** — pick one primary and optional fallback; write **why** on the card:
   - `json2video` — lyric/template timelines, text overlays, structured assembly
   - `hailuo-pixeldojo` — generative T2V/I2V look/motion; mux via `media-ffmpeg-suite`
   - `remotion` — code-driven captions / motion graphics
   - `ffmpeg` — owner already has clips; cut/crop/duck/caption only
3. **Cost gate** — prefer free/sandbox; state estimate + ceiling. If paid path would exceed ceiling, re-ask before writing `owner_yes` path.
4. **Job card** — copy `creative/jobs/_template.md` → `creative/jobs/<id>.md`; fill all sections; leave `owner_yes: no`, `status: draft`. Run `scripts/validate_job_card.sh` on it.
5. **STOP** — show summary + cost; wait for explicit owner yes. Do **not** message Video Studio yet.
6. **Handoff** — on yes: set `owner_yes: yes`, `status: approved` then `handed-off`; message Video Studio with card path, `output_dir`, engine + ceiling, Success criteria, “report back; do not publish”.
7. **Deliver** — when Video Studio returns, verify `final.mp4` under `output_dir` when present; report paths and credit use; set `status: done` or `failed`. Offer retry / engine switch (new yes) on failure.

## Delegate skills (do not reinvent)

- `creative-video-pipeline`, `creative-music-bed`, `creative-voice`, `media-ffmpeg-suite`
- `hailuo-via-fal` (backup only; prefer official MiniMax-Hailuo MCP)
- JSON2Video / Pixel Dojo / Remotion docs already in this pack / bot skills

## Never

- Hand off without owner yes on that job card
- Publish / upload / voice-clone without named owner yes
- Exceed cost ceiling without re-ask
- Commit secrets or private media into `creative/jobs/`
```

- [ ] **Step 2: Dry-run sample card (no APIs)**

```bash
cp /workspace/boss-man-godmode/creative/jobs/_template.md \
   /workspace/boss-man-godmode/creative/jobs/dry-run-hello-mv.md
# Fill required tables with a fake music-video brief (keep owner_yes: no)
python3 - <<'PY'
from pathlib import Path
p = Path('/workspace/boss-man-godmode/creative/jobs/dry-run-hello-mv.md')
t = p.read_text()
t = t.replace('{{id}}', 'dry-run-hello-mv')
t = t.replace('| genre | music-video \\| explainer \\| narrative |', '| genre | music-video |')
t = t.replace('| length_s | |', '| length_s | 30 |')
t = t.replace('| aspect | 9:16 \\| 16:9 \\| 1:1 |', '| aspect | 9:16 |')
t = t.replace('| created | YYYY-MM-DD |', '| created | 2026-10-25 |')
t = t.replace('| audio | path/URL or `none` |', '| audio | /workspace/media/example-track.mp3 |')
t = t.replace('| lyrics | path, inline, or `n/a` |', '| lyrics | Hello from Boss Man / test chorus |')
t = t.replace('| primary | json2video \\| hailuo-pixeldojo \\| remotion \\| ffmpeg |', '| primary | json2video |')
t = t.replace('| estimate | free path / N credits |', '| estimate | ~5 JSON2Video credits (dry-run; do not render) |')
t = t.replace('| ceiling | do not exceed without re-ask |', '| ceiling | 10 credits |')
t = t.replace('| path | sandbox \\| free \\| paid |', '| path | free |')
t = t.replace('1. Beat / lyric → visual\n2.', '1. Intro hook → title card\n2. Chorus → kinetic lyrics\n3. Outro → logo hold')
t = t.replace('| why | |', '| why | Lyric timeline + text overlays; no generative burn for dry-run |')
p.write_text(t)
print('wrote', p)
PY
/workspace/boss-man-godmode/scripts/validate_job_card.sh \
  /workspace/boss-man-godmode/creative/jobs/dry-run-hello-mv.md
```

Expected: `OK .../dry-run-hello-mv.md`

- [ ] **Step 3: Commit**

```bash
cd /workspace/boss-man-godmode
git add skills/movie-studio/SKILL.md creative/jobs/dry-run-hello-mv.md
git commit -m "feat(skills): add movie-studio router skill + dry-run card"
```

---

### Task 4: Wire README, START, profile

**Files:**
- Modify: `README.md` (skills table — add `movie-studio` row after `creative-video-pipeline`)
- Modify: `START.md` (add step pointing at movie-studio)
- Modify: `profiles/BOSS_MAN.md` (creative section: route via movie-studio; approve handoffs)

**Interfaces:**
- Consumes: skill name `movie-studio`, Video Studio id above
- Produces: discoverable docs for humans and bots

- [ ] **Step 1: Insert skills table row in `README.md`**

After the `creative-video-pipeline` row, add:

```markdown
| `movie-studio` | Route music-video / explainer / narrative → job card → owner-approved Video Studio handoff |
```

- [ ] **Step 2: Append to `START.md` after step 6**

```markdown
8. For music videos / movie studio jobs, load `skills/movie-studio/SKILL.md` — write a job card, get owner yes, then hand off to Video Studio. Never hand off without approval.
```

Renumber the old step 7 to 9 if needed so the closing “You are not done until…” still makes sense; keep “Ask the owner before any public GitHub publish…” as the final numbered safety step.

- [ ] **Step 3: Append to `profiles/BOSS_MAN.md` under Job or Creative autonomy**

```markdown
### Movie studio

- Load `movie-studio` for music videos, explainers, and narrative shorts.
- Write `creative/jobs/<id>.md`; **ask** before messaging Grok Bot Video Studio.
- Hybrid engines; prefer free/sandbox; re-ask above cost ceiling.
```

- [ ] **Step 4: Smoke docs**

```bash
rg -n 'movie-studio' /workspace/boss-man-godmode/README.md \
  /workspace/boss-man-godmode/START.md \
  /workspace/boss-man-godmode/profiles/BOSS_MAN.md \
  /workspace/boss-man-godmode/skills/movie-studio/SKILL.md
/workspace/boss-man-godmode/scripts/validate_job_card.sh \
  /workspace/boss-man-godmode/creative/jobs/dry-run-hello-mv.md
```

Expected: matches in all four files; validator OK.

- [ ] **Step 5: Commit**

```bash
cd /workspace/boss-man-godmode
git add README.md START.md profiles/BOSS_MAN.md
git commit -m "docs: wire movie-studio into README, START, profile"
```

---

### Task 5: Spec coverage checklist (no new features)

**Files:**
- Modify: none required if checklist passes; optionally tick boxes in the design spec Success section via a short note in the plan commit message only (prefer leave spec unchanged)

- [ ] **Step 1: Verify v1 success criteria from the design spec**

```bash
test -f /workspace/boss-man-godmode/skills/movie-studio/SKILL.md
test -f /workspace/boss-man-godmode/creative/jobs/_template.md
rg -n 'SendToAgent|Video Studio|owner_yes' \
  /workspace/boss-man-godmode/skills/movie-studio/SKILL.md
rg -n 'movie-studio' /workspace/boss-man-godmode/README.md /workspace/boss-man-godmode/START.md
/workspace/boss-man-godmode/scripts/validate_job_card.sh \
  /workspace/boss-man-godmode/creative/jobs/dry-run-hello-mv.md
cd /workspace/boss-man-godmode && git status -sb && git remote -v
```

Expected: all files present; handoff language in skill; docs wired; validator OK; **no** publish remote push performed (`git status` clean or local-only commits; do not `git push`).

- [ ] **Step 2: Final local commit only if anything left unstaged**

```bash
cd /workspace/boss-man-godmode
git status
# if dirty: git add -A && git commit -m "chore: movie-studio v1 wrap"
# never: git push
```

---

## Spec coverage (self-review)

| Spec requirement | Task |
|------------------|------|
| `skills/movie-studio/` | Task 3 |
| Job card schema + template | Task 1 |
| Thin handoff + owner yes | Task 3 Steps + template Handoff |
| Hybrid engine rules | Task 3 |
| Music video first | Skill description + dry-run genre |
| README/START/profile wire | Task 4 |
| Dry-run without paid APIs | Task 3 Step 2 |
| No remote publish | Task 5 + Global Constraints |
| Validator / testable deliverable | Task 2 |

## Placeholder scan

No TBD/TODO left in task bodies; full file contents inlined.

