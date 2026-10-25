---
name: video-studio-handoff
description: >-
  Hand off a movie-studio job to teammate Grok Bot Video Studio
  (id b32c19ad-772e-48f8-b5fe-41c763c04025) ONLY after owner yes; job card required.
---

# Video Studio handoff

Teammate: **Grok Bot Video Studio**  
Id: `b32c19ad-772e-48f8-b5fe-41c763c04025`  
Router skill: `movie-studio`. Cards live in `creative/jobs/`.

## Preconditions (all required)

1. Job card exists: `creative/jobs/<id>.md` (from `creative/jobs/_template.md`).
2. Card validated (`scripts/validate_job_card.sh` when available).
3. Cost gate done; estimate + ceiling on the card.
4. Owner gave **explicit yes** for this job (set `owner_yes: yes`, `status: approved`).
5. `output_dir` set (usually `/workspace/outputs/video/<id>/`).

## Handoff message (include all)

- Card path
- `output_dir`
- Primary engine + fallback + cost ceiling
- Success criteria from the card
- Instruction: **report back; do not publish / upload / spend beyond ceiling**

Then set card `status: handed-off`.

## After return

1. Verify `final.mp4` (or stated deliverable) under `output_dir` when present (`truth-first` / ffprobe).
2. Report paths + credit use; set `status: done` or `failed`.
3. Retry / engine switch needs a **new** owner yes.

## Never

- Message Video Studio without owner yes on that card.
- Hand off without a job card path.
- Let Video Studio publish, post, or exceed ceiling without a fresh named yes.
- Confuse this bot’s desktop with the teammate’s — they share the box filesystem, not the same desktop session.
