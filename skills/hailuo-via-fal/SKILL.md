---
name: hailuo-via-fal
description: >-
  Generate MiniMax Hailuo video (and related MiniMax image/speech/music) through
  the already-connected fal MCP. Use when the user asks for Hailuo, MiniMax
  video, or Hailuo 2.3 T2V/I2V without a separate MiniMax API key.
---

# Hailuo via fal

Hailuo is MiniMax’s video line. On this bot it runs through **fal** (no second connector).

## Preferred endpoints (current)

| Job | `endpoint_id` |
|-----|----------------|
| T2V 768p | `fal-ai/minimax/hailuo-2.3/standard/text-to-video` |
| T2V 1080p | `fal-ai/minimax/hailuo-2.3/pro/text-to-video` |
| I2V 768p | `fal-ai/minimax/hailuo-2.3/standard/image-to-video` |
| I2V 1080p | `fal-ai/minimax/hailuo-2.3/pro/image-to-video` |
| Fast I2V | `fal-ai/minimax/hailuo-2.3-fast/standard/image-to-video` (or `/pro/`) |

fal’s published default for general T2V may be `minimax/h3-max/text-to-video` — use that when the user wants “best fal MiniMax” rather than the Hailuo-2.3 name specifically.

## Steps

1. Confirm brief: text-only vs first-frame image, length, resolution (768 vs 1080), prompt.
2. `search_models` / `recommend_model` if unsure; else use the table above.
3. `get_model_schema` for the chosen `endpoint_id`.
4. `run_model` or `submit_job` with billed fal credits — show price estimate if the tool returns one; ask before expensive Pro runs unless they already said go.
5. Save/download the video URL to `/workspace/outputs/hailuo/` and show the user.
6. Optional: mux with `media-ffmpeg-suite` / voice / music skills.

## Never

- Invent a MiniMax API key or add a duplicate MCP unless the user asks for official MiniMax MCP.
- Claim a free Hailuo quota on fal — fal billing applies.

## Refs

- fal catalog: MiniMax / Hailuo endpoints above
- Official MiniMax MCP (optional later): https://platform.minimax.io/docs/guides/mcp-guide
