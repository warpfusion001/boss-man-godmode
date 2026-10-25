# Local (free) media gen — Draw Things vs ComfyUI vs paid stack

| Path | Runs on | Cost | Pack skill | Best for |
|---|---|---|---|---|
| **Draw Things** | iPhone / iPad / Mac (Apple only) | Free local (optional paid cloud — off by default) | `skills/draw-things-local` | Private drafts on Apple devices; HTTP API `:7860`; MCP via [`mcp-drawthings`](https://www.npmjs.com/package/mcp-drawthings) (MIT) |
| **ComfyUI local** | Desktop/laptop with GPU (Win/Linux/Mac) | Free local | `skills/comfyui` (live id `comfyui-local` → `skills/comfyui-local` wrapper) | Full control: SDXL/Flux/Wan/LTX workflows, video, batching; server `:8188` |
| **Paid stack** | Cloud | Credits | `hailuo-via-fal`, MiniMax-Hailuo MCP, `grok-imagine` (RunAPI), PixelDojo MCP | Highest quality / no local hardware; cost gate first |

Links: [Draw Things](https://drawthings.ai/) · [ComfyUI](https://github.com/comfyanonymous/ComfyUI) · [ComfyUI-Agent-Kit](https://github.com/SlavaSexton/ComfyUI-Agent-Kit) (Apache-2.0) · `integrations/GROK_IMAGINE.md`.

## When to use which
1. Owner on phone/Mac, wants free/private → **Draw Things** (API must be reachable; else guide owner to generate and send files).
2. Owner has a GPU box with ComfyUI → **ComfyUI** (`skills/comfyui/SKILL.md`, `MODELS.md`, `workflows/`).
3. No local hardware reachable, or quality/speed matters → paid stack after cost gate.

This Linux Grok Bot box can't run Draw Things and has no GPU; local engines need the owner's device reachable over the network.

## movie-studio
Optional free engines: `draw-things-local` and `comfyui-local` (stills/short clips → mux via `media-ffmpeg-suite`). Prefer them for drafts before paid Hailuo/RunAPI/PixelDojo.

Not vendored: other ComfyUI-Agent-Kit siblings (krea/seedance/minimax) and MieMieeeee/comfyui-agent-skill (45MB) — see upstream if needed.
