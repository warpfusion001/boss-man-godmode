---
name: draw-things-local
description: >-
  Use for free on-device image/video gen on iPhone, iPad, or Mac via Draw Things
  (App Store) and its local HTTP API / mcp-drawthings — no cloud required for
  local jobs.
---
# Draw Things — free local (mobile + Mac)

Best free **on-device** path that actually runs on **iPhone / iPad / Mac**.
App: [Draw Things](https://drawthings.ai/) (App Store, free local gen). Video models (e.g. Wan / LTX) need enough RAM (often 16GB+ for video).

## When to use
- Owner wants free/private image or short video on Apple hardware
- Avoid paid APIs (Hailuo, RunAPI, Pixel Dojo) for drafts

## Setup (owner device)
1. Install Draw Things; download a model for local use; keep Cloud Compute off for free local.
2. Settings → enable **API Server / HTTP API** (default port **7860**).
3. Verify: `curl http://127.0.0.1:7860/sdapi/v1/options` (or `/`) returns JSON.
4. Optional MCP bridge (Mac agent box on same machine): `npx -y mcp-drawthings` — package [mcp-drawthings](https://www.npmjs.com/package/mcp-drawthings) (MIT). Env: `DRAWTHINGS_HOST`, `DRAWTHINGS_PORT=7860`, `DRAWTHINGS_OUTPUT_DIR`.
5. Phone driving Mac: enable API on Mac; point phone/remote client at Mac LAN IP:7860 when supported.

## Agent flow
1. Confirm API reachable (curl/options). If not, stop and tell owner to open Draw Things + enable API.
2. Prefer SDAPI-compatible txt2img / img2img against `http://127.0.0.1:7860` (A1111-style) or MCP tools if connected.
3. Save outputs under the job folder; never claim cloud Draw Things+ was used unless owner opted in.

## Limits
- Apple-only. This Linux Grok Bot box cannot run Draw Things itself — use when owner’s Mac/phone API is reachable, or guide them to generate and send files.
- Optional paid cloud tiers exist; **default is free local only** unless owner asks for cloud.

## Never
- Never force Cloud Compute / Draw Things+ spend without yes
- Never commit API secrets (local API usually needs none)
