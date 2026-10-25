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
   - `grok-imagine-runapi` — optional Grok Imagine T2V/I2V/T2I via RunAPI (paid, `RUNAPI_API_KEY`); see `integrations/GROK_IMAGINE.md`
   - `remotion` — code-driven captions / motion graphics
   - `ffmpeg` — owner already has clips; cut/crop/duck/caption only
   - **Audio:** for music-video audio generation prefer Treblo (`creative-music-treblo`) before other beds; the card `audio` field can be a Treblo output path (`/workspace/outputs/music/treblo/...`).
3. **Cost gate** — prefer free/sandbox; state estimate + ceiling. If paid path would exceed ceiling, re-ask before writing `owner_yes` path.
4. **Job card** — copy `creative/jobs/_template.md` → `creative/jobs/<id>.md`; fill all sections; leave `owner_yes: no`, `status: draft`. Run `scripts/validate_job_card.sh` on it.
5. **STOP** — show summary + cost; wait for explicit owner yes. Do **not** message Video Studio yet.
6. **Handoff** — on yes: set `owner_yes: yes`, `status: approved` then `handed-off`; message Video Studio with card path, `output_dir`, engine + ceiling, Success criteria, “report back; do not publish”.
7. **Deliver** — when Video Studio returns, verify `final.mp4` under `output_dir` when present; report paths and credit use; set `status: done` or `failed`. Offer retry / engine switch (new yes) on failure.

## Delegate skills (do not reinvent)

- `creative-music-treblo` (preferred music/songs), `creative-video-pipeline`, `creative-music-bed`, `creative-voice`, `media-ffmpeg-suite`
- `hailuo-via-fal` (backup only; prefer official MiniMax-Hailuo MCP)
- JSON2Video / Pixel Dojo / Remotion docs already in this pack / bot skills

## Never

- Hand off without owner yes on that job card
- Publish / upload / voice-clone without named owner yes
- Exceed cost ceiling without re-ask
- Commit secrets or private media into `creative/jobs/`
