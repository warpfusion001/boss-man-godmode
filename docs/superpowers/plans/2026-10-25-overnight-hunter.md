# Overnight Hunter Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Ship an `overnight-hunter` skill + 23:00 Europe/London routine that finds a repeated X pain, drafts a no-outlay micro-offer with undercut PayPal pricing, and morning-briefs the owner — £0 spend, no auto-publish.

**Architecture:** Approach A from the design spec. One skill orchestrates free X + free search → cluster → score → hunt pack under `outputs/hunts/YYYY-MM-DD/` (including required `paypal.md`). A flexible cron routine wakes Boss Man; live skill install via UpdateSkill; pack stays the source of truth. Cost-gate remains hard £0 until owner raises ceiling.

**Tech Stack:** Markdown skills, bash hunt-pack validator, Grok Bot routines (UpdateRoutine), free `x` MCP + Exa/Tavily/You reads, git on `/workspace/boss-man-godmode`.

## Global Constraints

- Spec: `docs/superpowers/specs/2026-10-25-overnight-hunter-design.md` (commits `1f80ab3`, `e255c6d`).
- Spend ceiling v1: **£0** — free X/search/local only; any paid API → stop and ask.
- L1: never auto-publish, never live PayPal charge, never buy domains without owner yes.
- Every hunt pack **must** include `paypal.md` with undercut fee (below cheapest paid competitor, cited).
- Prefer free-tool **pairs** people already discuss on X.
- Never invent customers, revenue, or testimonials.
- Match existing skill frontmatter (`name`, `description` YAML).
- Do not weaken `cost-gate` or send-on-behalf rules.
- Local commit OK during implementation; push only when owner/plan says so (this plan ends with local commit + live skill; push optional at end).

## File map

| Path | Responsibility |
|------|----------------|
| `skills/overnight-hunter/SKILL.md` | Orchestrator pipeline + scoring + gates |
| `outputs/hunts/_template/` | Canonical empty hunt pack files |
| `outputs/hunts/README.md` | How packs are written and briefed |
| `scripts/validate_hunt_pack.sh` | Required files + undercut/PayPal smoke checks |
| `routines/overnight-hunter.md` | Pack copy of routine intent/schedule |
| `README.md` / `START.md` / `profiles/BOSS_MAN.md` | Wire pointers |
| Live skill via UpdateSkill | Install `overnight-hunter` for Boss Man |
| Live routine via UpdateRoutine | `0 23 * * *` Europe/London flexible |

---

### Task 1: Hunt pack template + README

**Files:**
- Create: `outputs/hunts/README.md`
- Create: `outputs/hunts/_template/brief.md`
- Create: `outputs/hunts/_template/offer.md`
- Create: `outputs/hunts/_template/landing-draft.md`
- Create: `outputs/hunts/_template/paypal.md`
- Create: `outputs/hunts/_template/go-live.md`
- Create: `outputs/hunts/_template/log.md`

**Interfaces:**
- Consumes: deliverable table in the design spec
- Produces: exact filenames Task 2 validator and Task 3 skill will require

- [ ] **Step 1: Create `outputs/hunts/README.md`**

```markdown
# Hunt packs

Each overnight-hunter run writes `outputs/hunts/YYYY-MM-DD/` (or `…/YYYY-MM-DD-HHMM/` if multiple).

Required files: `brief.md`, `offer.md`, `landing-draft.md`, `paypal.md`, `go-live.md`, `log.md`.

Rules: £0 unless owner raised ceiling; undercut fee with competitor cite; draft PayPal only; no auto-publish.
```

- [ ] **Step 2: Create template files with these headings**

`brief.md`:
```markdown
# Hunt brief — {{date}}

## Top 3 pains
1. …
2. …
3. …

## Evidence
- [post/url](…) — note

## Winner
- Theme:
- Why:
- Free-tool pair:
```

`offer.md`:
```markdown
# Offer — {{name}}

| Field | Value |
|-------|-------|
| name | |
| ICP | |
| fee | |
| undercut_vs | competitor + price + link |
| mvp_scope | |
| free_tool_stack | Tool A + Tool B |
| delivery | digital / PayPal |
```

`landing-draft.md`:
```markdown
# Landing draft — {{name}}

## Hero
## Problem
## Offer
## FAQ
## CTA
```

`paypal.md`:
```markdown
# PayPal draft — {{name}}

| Field | Value |
|-------|-------|
| item_name | |
| amount | |
| currency | GBP |
| undercut_vs | competitor + price + link |
| button_or_link | draft steps only |
| success_url | placeholder |
| cancel_url | placeholder |

## Go-live (needs owner yes)
1. Create real PayPal payment link / button
2. Paste live URL here
3. Enable charging
```

`go-live.md`:
```markdown
# Go-live checklist

- [ ] Owner approved offer + fee
- [ ] Owner created live PayPal link
- [ ] Owner approved any publish/hosting
- [ ] Ceiling check (still £0 unless raised)
```

`log.md`:
```markdown
# Hunt log — {{date}}

| Field | Value |
|-------|-------|
| ceiling | £0 |
| spend | £0 |
| tools | x, … |
| failures | none |
| duration | |
```

- [ ] **Step 3: Commit**

```bash
git add outputs/hunts/
git commit -m "feat(hunts): overnight-hunter pack template + README"
```

---

### Task 2: `validate_hunt_pack.sh`

**Files:**
- Create: `scripts/validate_hunt_pack.sh`
- Test: against `_template` (expect soft fail on empty placeholders) and a fixture pack

**Interfaces:**
- Consumes: required filenames from Task 1
- Produces: exit 0 only when all six files exist and `paypal.md` + `offer.md` contain `undercut_vs` and a fee/amount line

- [ ] **Step 1: Write script**

```bash
#!/usr/bin/env bash
set -euo pipefail
DIR="${1:?usage: validate_hunt_pack.sh <hunt-dir>}"
need=(brief.md offer.md landing-draft.md paypal.md go-live.md log.md)
for f in "${need[@]}"; do
  [[ -f "$DIR/$f" ]] || { echo "MISSING $f"; exit 1; }
done
rg -q 'undercut_vs' "$DIR/offer.md" || { echo "offer.md missing undercut_vs"; exit 1; }
rg -q 'undercut_vs' "$DIR/paypal.md" || { echo "paypal.md missing undercut_vs"; exit 1; }
rg -q -i 'fee|amount' "$DIR/offer.md" || { echo "offer.md missing fee"; exit 1; }
rg -q -i 'amount' "$DIR/paypal.md" || { echo "paypal.md missing amount"; exit 1; }
echo "OK $DIR"
```

- [ ] **Step 2: chmod +x and create a fixture that passes**

```bash
chmod +x scripts/validate_hunt_pack.sh
FIX=outputs/hunts/_fixture-ok
rm -rf "$FIX" && cp -R outputs/hunts/_template "$FIX"
# fill minimal undercut + fee lines so validator passes
printf '\n| fee | £7 |\n| undercut_vs | Acme £12 https://example.com |\n' >> "$FIX/offer.md"
printf '\n| amount | 7 |\n| undercut_vs | Acme £12 https://example.com |\n' >> "$FIX/paypal.md"
./scripts/validate_hunt_pack.sh "$FIX"
# Expected: OK …
```

- [ ] **Step 3: Commit**

```bash
git add scripts/validate_hunt_pack.sh outputs/hunts/_fixture-ok
git commit -m "feat(scripts): validate_hunt_pack.sh + fixture"
```

---

### Task 3: `skills/overnight-hunter/SKILL.md`

**Files:**
- Create: `skills/overnight-hunter/SKILL.md`

**Interfaces:**
- Consumes: Task 1 filenames, Task 2 validator, design scoring + PayPal + undercut rules
- Produces: skill name `overnight-hunter` for live UpdateSkill + routine prompt

- [ ] **Step 1: Write SKILL.md** with this structure (full body, no TBD):

Frontmatter:
```yaml
---
name: overnight-hunter
description: >-
  Nightly or on-demand open hunt: free X + search for repeated pains,
  draft a no-outlay micro-offer with undercut PayPal pricing, write
  outputs/hunts/YYYY-MM-DD/, morning-brief the owner. £0 default;
  never auto-publish or live-charge.
---
```

Body sections (required):
1. When to use
2. Hard rules (L1, £0, cost-gate, no fake metrics)
3. Pipeline steps 1–7 matching the design spec
4. Scoring table (copy from spec)
5. Pricing / undercut rule (copy from spec)
6. Deliverable file list + run `scripts/validate_hunt_pack.sh`
7. Morning brief shape (short chat summary + paths)
8. Failure modes table (copy from spec)
9. Never list (publish, paid APIs, live PayPal, invent metrics)

- [ ] **Step 2: Grep skill for forbidden placeholders**

```bash
rg -n 'TBD|TODO|implement later' skills/overnight-hunter/SKILL.md && exit 1 || echo clean
```

- [ ] **Step 3: Commit**

```bash
git add skills/overnight-hunter/SKILL.md
git commit -m "feat(skills): overnight-hunter skill"
```

---

### Task 4: Pack routine doc + README/START/profile wire

**Files:**
- Create: `routines/overnight-hunter.md`
- Modify: `README.md` (skills / routines mention)
- Modify: `START.md` (one-line pointer)
- Modify: `profiles/BOSS_MAN.md` (income / overnight hunter note)

**Interfaces:**
- Consumes: skill name + schedule from design
- Produces: pack docs that match the live routine prompt

- [ ] **Step 1: Write `routines/overnight-hunter.md`**

```markdown
# Routine: Overnight hunter

**Schedule:** flexible `0 23 * * *` Europe/London  
**Skill:** overnight-hunter  
**Ceiling:** £0 unless owner raised it  

On fire: run overnight-hunter open hunt; write pack under outputs/hunts/; brief owner.
If nothing worth shipping: one quiet line.
Never publish, never paid APIs, never live PayPal.
```

- [ ] **Step 2: Wire README / START / BOSS_MAN** with one short mention each pointing at the skill + 23:00 routine + PayPal draft requirement.

- [ ] **Step 3: Commit**

```bash
git add routines/overnight-hunter.md README.md START.md profiles/BOSS_MAN.md
git commit -m "docs: wire overnight-hunter into pack + profile"
```

---

### Task 5: Live install + dry-run fixture validation

**Files:**
- Live: UpdateSkill `overnight-hunter` from pack SKILL.md
- Live: UpdateRoutine create “Overnight hunter” cron `0 23 * * *` Europe/London flexible
- Test: `./scripts/validate_hunt_pack.sh outputs/hunts/_fixture-ok`

**Interfaces:**
- Consumes: Task 3 skill body; Task 4 routine intent
- Produces: live skill + enabled routine; dry-run does **not** spend or publish

- [ ] **Step 1: Install live skill** — UpdateSkill write with exact pack SKILL.md body; tell owner “skill overnight-hunter created”.

- [ ] **Step 2: Create live routine**

- name: Overnight hunter
- schedule: `0 23 * * *` (Europe/London)
- timing: flexible
- prompt intent: run overnight-hunter open hunt at £0; write hunt pack; morning brief; quiet if nothing; never publish/pay/live-PayPal

- [ ] **Step 3: Run validator on fixture** — expect OK.

- [ ] **Step 4: Optional first live hunt** — only if owner says “run hunt now”. Otherwise stop after install.

- [ ] **Step 5: Commit any pack doc fixes from install notes; push if owner already said push (they did “do what’s necessary” — push this plan’s commits).**

```bash
git status -sb
# push main when commits are clean
git push origin main
```

---

## Spec coverage checklist

| Spec requirement | Task |
|------------------|------|
| Skill + routine Approach A | 3, 4, 5 |
| Free X/search £0 | 3, 5 |
| Hunt pack 6 files | 1, 2, 3 |
| Required paypal.md | 1, 2, 3 |
| Undercut fee + competitor cite | 1, 2, 3 |
| Free-tool pairs on X | 3 |
| Morning brief / quiet nothing | 3, 4, 5 |
| Failure modes | 3 |
| No auto-publish / L1 | Global + 3 + 5 |
| cost-gate | Global + 3 |

## Execution handoff

Plan complete at `docs/superpowers/plans/2026-10-25-overnight-hunter.md`.
