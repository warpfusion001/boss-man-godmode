# Grok Imagine (RunAPI)

Vendored skill: `skills/grok-imagine` from https://github.com/runapi-ai/grok-imagine (Apache-2.0, see `skills/grok-imagine/LICENSE` + `NOTICE`). Model reference: https://runapi.ai/models/grok-imagine · CLI: https://github.com/runapi-ai/cli

## What it is
Grok Imagine image + video generation through RunAPI's hosted API/CLI.

Models / tasks: text-to-video, image-to-video, text-to-image, edit-image (plus segment-map), `grok-imagine-image-2-0`, `grok-imagine-video-1.5-fast`, `grok-imagine-video-1.5-preview`.

## Auth
`RUNAPI_API_KEY` (env or vault). Placeholder in `.env.example`. **Never commit real keys.**

## CLI install
`npm i -g @runapi.ai/cli` (or see the CLI repo for brew/other). Skill install elsewhere: `npx skills add runapi-ai/grok-imagine -g`.
Box status (2026-10-25): `npm i -g @runapi.ai/cli`, `@runapi.ai/runapi-cli` and `runapi` all 404 on npm — CLI **not installed**; follow https://github.com/runapi-ai/cli for the current install method. Skill rule: if `runapi` lacks the `grok-imagine` service, stop and report.

## Fit with movie-studio
Optional engine `grok-imagine-runapi` for generative T2V/I2V shots or stills; mux via `media-ffmpeg-suite`. Paid per run: **cost gate first** — state estimate + ceiling and get owner yes before any paid job.
