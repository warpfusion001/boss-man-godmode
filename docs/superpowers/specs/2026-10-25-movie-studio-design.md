# Movie studio + music-video agent — design

**Date:** 2026-10-25  
**Status:** draft for owner review  
**Owner:** Richard (@warpfusion001)  
**Pack:** boss-man-godmode  
**Approach:** A — pack skills + thin handoff

---

## Goals

- Built-in **movie studio** routing on Boss Man.
- **Music videos first**; explainers and multi-shot narrative reuse the same job card later.
- Boss Man **routes**; Grok Bot Video Studio teammate (agent id `b32c19ad-772e-48f8-b5fe-41c763c04025`) **ships the cuts**.
- Hybrid render engines — Boss Man picks per brief.
- **Owner approves every handoff** before Video Studio starts.
- Stay local until publish is explicitly allowed (no auto-push).

## Non-goals

- Replacing Video Studio with a single mega pipeline on Boss Man.
- Auto-publishing to social / YouTube / X.
- Voice-cloning without named consent.
- Burning paid credits above the stated estimate without re-asking.

## Architecture

```text
Owner brief
    → Boss Man movie-studio skill
        → gather brief / assets
        → pick engine (JSON2Video | Hailuo/Pixel Dojo | Remotion | FFmpeg mux)
        → cost estimate
        → write creative/jobs/<id>.md job card
        → STOP for owner yes
    → SendToAgent(Video Studio) with card path + success criteria
    → Video Studio renders / edits / delivers
    → outputs under /workspace/outputs/video/<job>/
    → Boss Man reports path + credits used
```

## Components

### 1. `skills/movie-studio/` (new)

Orchestrator skill. Triggers when the owner asks for a music video, explainer, story short, or “movie studio” job.

Responsibilities:

- Collect brief (genre, length, aspect, hook, style, platform).
- Require audio path and/or lyrics for music videos before writing a card.
- Choose engine using hybrid rules (below).
- Estimate credits / free-tier path; state it in the card.
- Write the job card; **do not** message Video Studio until owner yes.
- After yes: hand off via SendToAgent; stay available for follow-ups / retries.

Does **not** replace: `creative-video-pipeline`, `creative-music-bed`, `creative-voice`, `media-ffmpeg-suite`, `hailuo-via-fal`, JSON2Video / MiniMax / Pixel Dojo MCP docs. It calls them (or points Video Studio at them).

### 2. Job card schema (`creative/jobs/<slug>.md`)

Required fields:

| Field | Meaning |
|-------|---------|
| `id` | Stable job slug |
| `genre` | `music-video` \| `explainer` \| `narrative` |
| `length_s` | Target duration seconds |
| `aspect` | `9:16` \| `16:9` \| `1:1` |
| `audio` | Path or URL to track; or `none` |
| `lyrics` | Path or inline excerpt; or `n/a` |
| `shot_list` | Ordered beats / lyrics → visuals |
| `engine` | Primary engine + fallback |
| `models` | Concrete model IDs if known |
| `cost_estimate` | Credits / free path + ceiling |
| `output_dir` | `/workspace/outputs/video/<id>/` |
| `success` | Measurable done criteria |
| `never` | No publish; no voice-clone without named yes |

Optional: reference stills, brand colours, caption style, NC licence flags.

### 3. Thin handoff

After owner approval, Boss Man messages Video Studio with:

- Absolute path to the job card.
- Output directory.
- Engine choice and cost ceiling.
- Success criteria copied from the card.
- Instruction to report paths + failures back; not to publish.

Boss Man does not silently start a second studio bot or re-route mid-job without another owner yes.

### 4. Engine pick (hybrid)

Prefer in order unless the brief forces otherwise:

1. **JSON2Video** — lyric/template timelines, text overlays, stock-style assembly when structure matters more than generative motion.
2. **Hailuo / Pixel Dojo** — generative clips / I2V when look and motion are the point; mux with FFmpeg.
3. **Remotion** — code-driven edits, precise captions, data-driven motion graphics.
4. **FFmpeg-only** — owner already has clips; cut / crop / duck / caption only.

State the pick and why in the job card. If estimate exceeds free/sandbox or stated ceiling, re-ask before handoff.

## Data flow

1. Owner: “make a music video for X”.
2. Boss Man loads `movie-studio`; fills gaps (one question at a time if needed).
3. Writes `creative/jobs/<id>.md`.
4. Shows summary + cost; waits for yes.
5. On yes → SendToAgent(Video Studio).
6. Video Studio writes under `output_dir`; returns paths / errors.
7. Boss Man delivers result to owner; offers retry or engine switch on failure.

## Error handling

| Case | Action |
|------|--------|
| Missing audio/lyrics for music video | Stop; ask before card |
| Paid burn would exceed estimate | Re-ask with new ceiling |
| Video Studio fail / timeout | Summarise; offer retry or engine switch (new yes) |
| Licence NC music weights | Flag aloud in card and delivery |
| Publish / voice-clone request | Require named owner yes; default refuse |

## Testing / success for v1

- [ ] `skills/movie-studio/SKILL.md` exists and is listed from README/START.
- [ ] Example job card template under `creative/jobs/_template.md`.
- [ ] Handoff blurb documented (what Boss Man sends Video Studio).
- [ ] Dry-run: write a sample music-video job card without calling paid APIs.
- [ ] No remote publish of the pack as part of this work.

## Implementation order (for writing-plans)

1. Add `_template.md` + `movie-studio` skill.
2. Wire README/START + profile pointer.
3. Optional: sample dry-run job card.
4. Later (out of v1): explainers/narrative presets; Video Studio profile twin (approach B).

## Decisions locked with owner

- Live: Boss Man routes; Video Studio ships.
- Genres: all three; ship music videos first.
- Engines: hybrid per brief.
- Handoff: approve every time.
- Approach: A — pack skills + thin handoff.
