---
name: readme-generator
description: >-
  Draft a README from repo structure (purpose, quick start, skills/layout,
  licence). Use when a project lacks a README or needs a rewrite.
---

# README generator (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. Scan: root files, `package.json` / `pyproject.toml` / `Cargo.toml`, `skills/`, `docs/`, licence.
2. Draft sections: title + one-liner, what it is, quick start, layout table, config/env (placeholders only), never-list / safety if agent pack, licence.
3. Prefer existing tone (UK English for this pack). Do not invent stars, install counts, or “production-ready” claims.
4. Write to a **draft** path first (e.g. `README.draft.md`) unless the owner asked to overwrite `README.md`.

## Never

- Embed live API keys or private URLs.
- Copy third-party README/skill text verbatim into ours.
