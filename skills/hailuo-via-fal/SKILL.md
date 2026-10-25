---
name: hailuo-via-fal
description: >-
  Backup path: MiniMax Hailuo video via fal MCP when the official MiniMax-Hailuo
  connector is down. Prefer user-MiniMax-Hailuo tools first.
---

# Hailuo via fal (backup)

Prefer **`user-MiniMax-Hailuo`** (official MiniMax MCP). Use fal only if that server is unavailable.

## Preferred fal endpoints

| Job | `endpoint_id` |
|-----|----------------|
| T2V 768p | `fal-ai/minimax/hailuo-2.3/standard/text-to-video` |
| T2V 1080p | `fal-ai/minimax/hailuo-2.3/pro/text-to-video` |
| I2V 768p | `fal-ai/minimax/hailuo-2.3/standard/image-to-video` |
| I2V 1080p | `fal-ai/minimax/hailuo-2.3/pro/image-to-video` |

## Steps

1. Try official MiniMax MCP first (`generate_video` / related).
2. Else `get_model_schema` + `run_model` / `submit_job` on fal.
3. Save under `/workspace/outputs/hailuo/` or `/workspace/outputs/minimax/`.

## Never

- Commit API keys or echo them.
- Claim fal generations are free.
