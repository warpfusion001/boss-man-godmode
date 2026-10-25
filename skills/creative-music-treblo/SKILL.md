---
name: creative-music-treblo
description: >-
  Generate songs or music beds with Treblo (formerly Sonauto) — free unlimited
  consumer web, or the paid Melodia API (100 credits per v3 request) when
  TREBLO_API_KEY is present. Preferred music source for movie-studio music videos.
---

# Creative music — Treblo

Preferred for music beds and full songs in `movie-studio`, before fal / MusicGen (`creative-music-bed`).
Details: `integrations/TREBLO.md` · Docs: https://treblo.com/developers/docs

## Steps

1. **Brief** — genre, mood, BPM guess, length, vocals or instrumental, lyrics/theme, use (music video / bed).
2. **Pick path**
   - **Free web (default):** treblo.com in the box browser (owner signs in if needed). Free unlimited consumer generation. Download the track.
   - **Melodia API (only if key present):** key from `/home/box/.treblo_api_key` or `$TREBLO_API_KEY`. Never invent a key.
     - `GET https://api.treblo.com/v1/credits/balance` → `num_credits`, `num_credits_payg`. Each v3 request = **100 credits**. If insufficient or over the job ceiling → stop and ask owner.
     - `POST /generations/v3` with `{"prompt": "..."}` → `task_id`; poll `GET /generations/status/{task_id}`; `GET /generations/{task_id}` → `song_paths[0]`. Prefer mp3 output.
     - Header: `Authorization: Bearer $TREBLO_API_KEY`.
3. **Save** immediately (URLs expire ~1 week) to `/workspace/outputs/music/treblo/<stamp-or-task_id>.mp3`.
4. **Post** — ffmpeg loudness-normalise (e.g. `loudnorm=I=-14:TP=-1.5:LRA=11`), trim/fade to target length (`media-ffmpeg-suite`).
5. **Hand back** — give the path for the job card `audio` field; report credits used (API) or "free web".

## Never

- Burn API credits when balance is insufficient or over ceiling without owner yes.
- Commit keys or audio into git; never paste keys in chat.
- Rely on remote `song_paths` URLs — download first.
- Claim commercial rights — follow treblo.com terms.
