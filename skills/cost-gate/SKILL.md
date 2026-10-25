---
name: cost-gate
description: >-
  Before ANY paid generation (Hailuo, RunAPI, JSON2Video, PixelDojo, AIMLAPI,
  fal paid, Melodia): estimate cost, tell the owner, wait for yes — unless
  free/sandbox is confirmed.
---

# Cost gate (always-on for paid gen)

Hard rule for Boss Man creative / multi-model spend.

## Applies to

| Provider | Skill / path | Notes |
|----------|--------------|-------|
| MiniMax Hailuo | `hailuo-via-fal` / `user-MiniMax-Hailuo` | Video / TTS / image / clone |
| fal paid | fal MCP endpoints | Sandbox quotas may be free — confirm |
| RunAPI Grok Imagine | `grok-imagine` | `RUNAPI_API_KEY` |
| JSON2Video | `json2video` | Credits; free watermarked tier |
| Pixel Dojo | `pixeldojo-media` | Credits; create/plan often free |
| AIMLAPI | `aimlapi-router` | Account balance |
| Treblo Melodia API | `treblo-free-web` exception | 100 credits/v3 — only if owner asked API |
| ElevenLabs beyond free | `creative-voice` | Free-tier first |

**Exempt (no gate):** Pollinations classic no-key, Draw Things local, ComfyUI local
with no paid API nodes, fal/ElevenLabs confirmed free/sandbox remaining, Pixel Dojo
`create`/`plan`/`traits`/`templates` free reads, AIMLAPI `ping` / free list tools.

## Steps

1. **Name the spend** — provider, model/endpoint, count, resolution/duration.
2. **Estimate** — credits or USD range; note uncertainty. Prefer live quota tools
   (`get_account`, `account_balance`, Pixel Dojo create quote, fal sandbox note).
3. **State ceiling** — proposed max for this job (and movie-studio card ceiling if any).
4. **Ask** — short clear question; **stop** until owner yes names the paid action
   (or standing order already covers this exact ceiling).
5. **Proceed** only within the approved ceiling; re-ask if the next step would exceed it.
6. **Report** — after run, actual credits/USD if known.

## Output shape (before spend)

```text
## Cost gate
- Provider / model: …
- Estimate: …
- Ceiling: …
- Free alternative?: yes/no (name it)
Awaiting your yes to spend.
```

## Never

- Silent paid burns “to keep momentum”.
- Treat free-tier exhaustion as permission to flip to paid.
- Bundle multiple paid providers into one vague yes — name them.
