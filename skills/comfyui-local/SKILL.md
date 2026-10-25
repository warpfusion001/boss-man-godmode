---
name: comfyui-local
description: >-
  Use for free local image/video/audio generation via a local ComfyUI install
  (desktop GPU). Wrapper over vendored skills/comfyui (ComfyUI-Agent-Kit).
---

# ComfyUI — free local

Live id `comfyui-local` → vendored [`skills/comfyui`](../comfyui/SKILL.md)
(Apache-2.0, [SlavaSexton/ComfyUI-Agent-Kit](https://github.com/SlavaSexton/ComfyUI-Agent-Kit)).
Comparison: `integrations/LOCAL_MEDIA_GEN.md`.

## When to use

- Free drafts / finals on the owner’s GPU desktop.
- Prefer over Hailuo / RunAPI / PixelDojo / AIMLAPI / fal paid when quality is “good enough”.
- Apple-only device without a desktop GPU → use `draw-things-local` instead.

## Steps

1. Confirm a reachable ComfyUI HTTP server (default `http://127.0.0.1:8188`). This Linux box has **no GPU** — do not claim a local run unless the server answered.
2. Read `../comfyui/SKILL.md` and follow it. Models index: `../comfyui/MODELS.md`. Client: `../comfyui/comfy_client.py`. Workflows: `../comfyui/workflows/`.
3. Save outputs under `/workspace/outputs/comfyui/` (or the job’s `output_dir`).
4. For movie-studio jobs, name `comfyui-local` as engine on the card and note free/local.

## Cost

Free/local by default. Paid API nodes inside a graph still need `cost-gate` + owner yes.

## Never

- Claim a GPU render happened when the server was unreachable.
- Switch to paid cloud nodes without owner yes.
- Vendor or rewrite the Apache-2.0 `skills/comfyui` tree casually — patch upstream attributions stay in NOTICE.
