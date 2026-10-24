---
name: creative-image-pollinations
description: >-
  Generate an image with zero API key via Pollinations classic URL API.
  Use when the user wants a quick image, a creative smoke test, or a fal/key
  path is unavailable. Rate-limited; may watermark unless a keyed endpoint is used.
---

# Creative image — Pollinations (no key)

Instant text→image using the public Pollinations classic endpoint. No signup
required for the basic URL. Prefer fal MCP or FLUX hosted paths when quality,
commercial clarity, or higher rate limits matter.

## When to use

- User asks for an image and no fal/Replicate/HF key is connected yet.
- Smoke-testing the creative stack.
- Moodboards / throwaway references.

## Steps

1. **Clarify prompt** — subject, style, aspect, text-in-image (avoid tiny text), and whether NSFW is off (default off).
2. **Encode** the prompt for a URL path (`urllib.parse.quote` or equivalent). Keep under ~300 chars when possible.
3. **Build URL** (no key):
   ```
   https://image.pollinations.ai/prompt/{urlencoded_prompt}?width=1024&height=1024&nologo=true
   ```
   Optional query knobs when documented upstream: `width`, `height`, `seed`, `model`. If `nologo` is ignored without a key, warn the user about watermarks.
4. **Fetch** the image to the box (e.g. `curl -L -o /workspace/outputs/pollinations-<stamp>.png "<url>"`). Create `outputs/` if missing.
5. **Verify** the file is a real image (non-empty, valid magic bytes / openable). On failure: wait ~45s (IP rate limit), simplify the prompt, retry once.
6. **Show** the saved path to the user. Do not claim commercial licence clearance — Pollinations/model terms apply.
7. **Optional keyed upgrade** — if `POLLINATIONS_API_KEY` exists in vault/env, use the keyed endpoint from current Pollinations docs; never invent a key.

## Never

- Invent or scrape API keys.
- Commit generated binaries to a public repo without the user asking.
- Imply this matches fal/FLUX quality.

## Refs

- https://github.com/pollinations/pollinations
- Fallback creative path: fal MCP (`mcp/README.md`)
