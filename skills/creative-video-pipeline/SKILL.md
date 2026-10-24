---
name: creative-video-pipeline
description: >-
  End-to-end short video: brief → still → motion/video → voice/music → FFmpeg
  mux. Use when the user wants a clip, reel, or demo video. Prefer fal MCP
  sandbox quotas before paid generations.
---

# Creative video pipeline

Produce a short-form video on the box with clear credit cost awareness.

## Pipeline

```text
Brief → Still (Pollinations/fal/FLUX) → Video (fal Wan / LTX / local Wan)
      → Voice (creative-voice) → Music bed (creative-music-bed)
      → Captions (Whisper) → Mux (media-ffmpeg-suite)
```

## Steps

1. **Brief** — length (e.g. 5–15s), aspect (`9:16` / `16:9` / `1:1`), hook, subject, style, on-screen text, platform. Write a one-paragraph shot list under `creative/prompts/` if useful.
2. **Cost gate** — prefer: (a) fal sandbox free daily video if signed in via MCP OAuth; (b) Pollinations still + AnimateDiff/LTX only if self-host is available; (c) paid fal/Replicate only with owner approval. State the path before generating.
3. **Still** — generate a hero frame (`creative-image-pollinations` or fal image model). Save under `/workspace/outputs/video/<job>/still.png`.
4. **Motion / T2V / I2V** — via fal MCP search→price→approve→run when connected; otherwise document the exact model the owner should run and stop if no path exists. Save `clip.mp4`.
5. **Voice** — if narration needed, run `creative-voice`; save `vo.wav`.
6. **Music** — optional bed via `creative-music-bed`; flag NC licences aloud.
7. **Captions** — if speech exists, transcribe (Whisper / whisper.cpp when installed) → SRT.
8. **Mux** — hand off to `media-ffmpeg-suite`: aspect crop, duck music under VO, burn captions, export social preset.
9. **Deliver** — report file paths, models used, and approximate credit use. Ask before uploading/publishing anywhere.

## Never

- Burn paid credits without saying so first.
- Voice-clone without consent.
- Publish to social / YouTube / X without explicit owner approval.

## Refs

- fal MCP: https://mcp.fal.ai/mcp-relay
- Wan2.1: https://github.com/Wan-Video/Wan2.1
- LTX-Video: https://github.com/Lightricks/LTX-Video
