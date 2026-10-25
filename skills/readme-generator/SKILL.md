---
name: readme-generator
description: >-
  Draft a README from repo structure (purpose, quick start, skills/layout,
  licence). Use when a project lacks a README or needs a rewrite.
---

# README generator (Boss Man)

Original pack skill — not an Agensi vendored copy.

## When to use

- Repo has no README, or README is stale / wrong.
- Pack or app needs a clearer quick start for a new bot/clone.

## Steps

1. **Scan** — root files, manifests (`package.json` / `pyproject.toml` / `Cargo.toml` / `go.mod`), `skills/`, `docs/`, `integrations/`, licence, existing tone.
2. **Draft sections** (adapt to project type):
   - Title + one-liner mission
   - What it is / who it’s for
   - Quick start (clone → install → smoke)
   - Layout table (dirs that matter)
   - Config / env (**placeholders only**; point at `.env.example`)
   - Skills / MCP shortlist if agent pack
   - Never-list / safety if irreversible actions exist
   - Licence + NOTICE pointers
3. Prefer UK English for this pack. Do not invent stars, install counts, or “production-ready” claims.
4. Write to a **draft** path first (`README.draft.md`) unless the owner asked to overwrite `README.md`.
5. Offer a short diff summary of what changed vs the old README when replacing.

## Never

- Embed live API keys or private URLs.
- Copy third-party README / skill text verbatim into ours.
- Claim features that are not on disk.

## Checklist

- [ ] Quick start actually runs (or marked TODO)
- [ ] Env names match `.env.example` (placeholders only)
- [ ] Licence / NOTICE linked when third-party code is present
- [ ] Draft path used unless overwrite was requested
