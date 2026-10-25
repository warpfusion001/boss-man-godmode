---
name: felo-when-keyed
description: >-
  Use when FELO_API_KEY is set and the task needs Felo search, X search, slides,
  YouTube subtitles, web-fetch, or SuperAgent; otherwise fall back to
  Exa/Tavily/You/x/slides.
---

# Felo when keyed

Pack skills: `skills/felo-*` · docs: `integrations/FELO.md`  
Key: `FELO_API_KEY` (or `~/.felo/config.json`) · optional CLI `npm i -g felo-ai`  
Never commit keys.

## Prefer Felo when key present

| Need | Skill |
|------|-------|
| Web Q&A | `felo-search` |
| X / Twitter | `felo-x-search` (else native `x` MCP) |
| Slides / PPT | `felo-slides` (else slides / knowledgeWork) |
| YouTube captions | `felo-youtube-subtitling` |
| URL → clean markdown | `felo-web-fetch` |
| Persistent canvas / logo / product image | `felo-superAgent` |

## Fallback without key

Exa / Tavily / You · `x` MCP · existing slides / speech-to-text skills.

## Steps

1. Detect key (env or config). If missing, use fallbacks and say so once.
2. Load the matching `felo-*` skill; do not reinvent API calls.
3. Cite sources; keep answers evidence-first (`truth-first`).

## Never

- Secrets in chat or git.
- Publish / send via Felo without owner yes that names the action.
- Claim Felo ran when you used a fallback (name which path you took).
