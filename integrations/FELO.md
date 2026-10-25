# Felo (felo.ai) — packaged research / X / slides / YouTube skills

Felo is an AI search + agent platform. Its Grok Bot skill page (https://felo.ai/skills/grok-bot) features five skills; we vendor them (MIT, Felo-Inc/felo-skills @ b42c3c0) plus Web Fetch.

## Setup
- API key: https://openapi.felo.ai/settings/api-keys (or felo.ai → Settings → API Keys)
- CLI: `npm i -g felo-ai`
- Key via env `FELO_API_KEY` or `~/.felo/config.json` — never commit keys.

## Pack skills (`skills/`)
| Skill | Use |
|---|---|
| felo-search | Web search / answers |
| felo-x-search | X (Twitter) search |
| felo-superAgent | Felo SuperAgent (incl. logo / product images) |
| felo-slides | Slide decks |
| felo-youtube-subtitling | YouTube subtitles / transcripts |
| felo-web-fetch | Fetch page as clean content |

## Routing
Prefer Felo skills when `FELO_API_KEY` is present. Otherwise:
- search → Exa / Tavily / You.com
- X → native `x` MCP
- decks → existing slides skills / knowledgeWork
- transcripts → watchVideo / speech-to-text

## Never
- Post anything (X, etc.) without an owner yes.
- Commit API keys.

Links: https://github.com/Felo-Inc/felo-skills · https://felo.ai/skills/grok-bot
