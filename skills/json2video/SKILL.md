---
name: json2video
description: >-
  Official JSON2Video MCP (user-json2video) for JSON-scripted / template /
  TTS-subtitle pipeline videos. Key: JSON2VIDEO_API_KEY. Cost-gate before render.
---

# JSON2Video

Docs: `integrations/JSON2VIDEO.md`  
MCP namespace: `user-json2video` · launcher `/home/box/bin/json2video-mcp`  
Secret: `JSON2VIDEO_API_KEY` (box-local; never commit).

## When to use

- Lyric / template timelines, text overlays, structured assembly, TTS + subtitles.
- Prefer Hailuo / Pixel Dojo / fal for generative look clips; JSON2Video for scripted assembly.
- Movie-studio engine id: `json2video`.

## Tools (14)

`render_video` · `check_status` · `validate_movie` · `get_account` · `get_help` ·
`get_example` · `list_templates` · `list_featured_templates` · `get_template` ·
`save_template` · `media_list` · `media_upload` · `media_get` · `media_delete`

## Steps

1. Run **`cost-gate`** (free plan ~600 credits / ~10 min with watermark; paid removes watermark). Call `get_account` for remaining quota when helpful.
2. Build or load movie JSON — use `get_help` / `get_example` / `get_template` rather than inventing schema.
3. `validate_movie` before spend.
4. `render_video` (`movie` **or** `template_id` + `variables`; `wait` as needed). Poll `check_status` if not waiting.
5. Save / download result under `/workspace/outputs/json2video/` or the job `output_dir`.
6. Upload source assets with `media_upload` only when needed; prefer public URLs already on the box outputs.

## Never

- Render without cost-gate + owner yes (unless free/sandbox explicitly confirmed).
- Commit `JSON2VIDEO_API_KEY` or paste it into chat/git.
- `media_delete` without owner yes naming the path.
- Claim watermark-free output on the free plan.
