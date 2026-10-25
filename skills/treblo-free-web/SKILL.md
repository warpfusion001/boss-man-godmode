---
name: treblo-free-web
description: >-
  Use whenever movie-studio or music beds need Treblo/Sonauto — free treblo.com
  consumer web only; never Melodia API unless the owner explicitly asks.
---

# Treblo free web only

Preference: generate songs / beds via the free [treblo.com](https://treblo.com)
consumer web app (box-desktop / computerUse). Pack skill: `creative-music-treblo`.
Docs: `integrations/TREBLO.md`.

## Do

1. Prefer free consumer web over Melodia API for music-video audio and beds.
2. Follow `creative-music-treblo` free-web path; save under
   `/workspace/outputs/music/treblo/` or the job’s media folder.
3. Record the output path on the movie-studio job card `audio` field when relevant.

## Paid API exception

Only use Melodia API / `TREBLO_API_KEY` when the owner **explicitly** asks for the
paid API. Then run `cost-gate` first (100 credits/v3).

## Never

- Call Melodia API without an explicit owner ask.
- Invent audio that was not generated.
- Commit `TREBLO_API_KEY` or paste it into chat/git.
