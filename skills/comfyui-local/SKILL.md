---
name: comfyui-local
description: >-
  Use for free local image/video/audio generation via a local ComfyUI install
  (desktop GPU). Thin wrapper — full instructions live in ../comfyui/SKILL.md.
---
# ComfyUI — free local (wrapper)

Live skill id `comfyui-local` maps to the vendored pack skill [`skills/comfyui`](../comfyui/SKILL.md)
(Apache-2.0, from [SlavaSexton/ComfyUI-Agent-Kit](https://github.com/SlavaSexton/ComfyUI-Agent-Kit)).

Read `../comfyui/SKILL.md` and follow it. Models: `../comfyui/MODELS.md`; client: `../comfyui/comfy_client.py`; workflows: `../comfyui/workflows/`.

- Needs a reachable ComfyUI server (default `http://127.0.0.1:8188`) on the owner's GPU machine. This Linux box has no GPU — don't claim a local run happened unless the server answered.
- Free/local by default; never switch to paid API nodes without the owner's yes.
- Mobile/Apple instead? Use `draw-things-local`. Comparison: `integrations/LOCAL_MEDIA_GEN.md`.
