---
name: pixeldojo-media
description: >-
  Pixel Dojo MCP (user-pixeldojo) for image, video, audio, ads, film, music
  video, and marketing studio. Cost-gate before any paid generate/produce.
---

# Pixel Dojo media

MCP namespace: `user-pixeldojo` (ready when connected).  
Paid generations burn account credits — always **`cost-gate`** first.

## When to use

- Generative image / video / audio when Hailuo / fal / RunAPI are not the best fit.
- Marketing ads, campaigns, music videos, micro-drama, faceless episodes, Kata remakes.
- Movie-studio generative look path (often paired with `media-ffmpeg-suite`).

## Tool map (high level)

| Need | Tools |
|------|-------|
| Still / clip from prompt | `pixeldojo_generate` (+ `pixeldojo_status`) |
| Edit still | `pixeldojo_edit` |
| Consistent character | `pixeldojo_character` · `pixeldojo_save_character` · `pixeldojo_library` |
| Existing clip verbs | `pixeldojo_video` (change / move / extend) |
| Storyboard single shot | `pixeldojo_storyboard` |
| Film / MV / drama / episode | `pixeldojo_film` · `pixeldojo_music_video` · `pixeldojo_drama` · `pixeldojo_episode` |
| Ads / marketing | `pixeldojo_ad` · `pixeldojo_campaign` · `pixeldojo_marketing` · `pixeldojo_brand_kit` |
| Audio | `pixeldojo_audio` |
| Effects catalog | `pixeldojo_effects` → `pixeldojo_effect` |
| Upscale / captions / overlays | `pixeldojo_upscale` · `pixeldojo_caption` · `pixeldojo_overlay` |
| Persist result | `pixeldojo_save` (else results may expire ~1h) |

Phased studios (`film`, `drama`, `music_video`, `episode`, `kata`): **create/plan is free**
and returns a price — show plan + price, wait for owner OK, then **produce** (charged).

## Steps

1. Cost-gate with estimate / ceiling; prefer free local drafts when possible.
2. Prefer studio phased flow (create → owner yes → produce → status poll).
3. Media inputs must be **public https URLs** (upload first when needed).
4. Poll `pixeldojo_status` / studio `status` actions; save keepers with `pixeldojo_save`.
5. Write outputs under `/workspace/outputs/pixeldojo/` or job `output_dir`.

## Never

- Call produce / generate / paid verbs without cost-gate + owner yes.
- Clone a real person’s voice or face without consent.
- Pass local file paths where the API requires hosted URLs.
- Commit Pixel Dojo tokens or paste them into chat/git.
