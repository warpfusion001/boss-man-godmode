---
name: hailuo-via-fal
description: >-
  Generate MiniMax Hailuo video — prefer official MiniMax-Hailuo MCP; fal MCP
  is the backup when that connector is down.
---

# Hailuo / MiniMax video

Docs: `integrations/HAILUO.md`. Always run **`cost-gate`** before paid generations.

## Preferred path — official MiniMax MCP

Namespace: `user-MiniMax-Hailuo` (stdio `uvx minimax-mcp`).

1. `GetDynamicTools` / call `generate_video` (model e.g. `MiniMax-Hailuo-02` / Hailuo line).
2. For async: `async_mode: true` then `query_video_generation` with `task_id`.
3. Save under `/workspace/outputs/minimax/` (or job `output_dir`).
4. Related: `text_to_image`, `text_to_audio`, `voice_clone`, `voice_design` — still cost-gated; voice clone needs consent.

## Backup path — fal MiniMax endpoints

Use only when MiniMax MCP is unavailable / errors.

| Job | `endpoint_id` |
|-----|----------------|
| T2V 768p | `fal-ai/minimax/hailuo-2.3/standard/text-to-video` |
| T2V 1080p | `fal-ai/minimax/hailuo-2.3/pro/text-to-video` |
| I2V 768p | `fal-ai/minimax/hailuo-2.3/standard/image-to-video` |
| I2V 1080p | `fal-ai/minimax/hailuo-2.3/pro/image-to-video` |

Steps: `get_model_schema` → `run_model` / `submit_job` → save under `/workspace/outputs/hailuo/`.

## Engine pick hints

- Prefer MiniMax MCP for first-party models + local file save.
- Prefer fal backup when MiniMax is down but fal OAuth works.
- Prefer free local (`comfyui-local` / `draw-things-local`) for drafts when reachable.

## Never

- Commit API keys or echo them.
- Claim fal or MiniMax generations are free.
- Skip `cost-gate` / owner yes on paid runs.
- Clone a real person’s voice without consent.
