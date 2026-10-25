---
name: git-commit-writer
description: >-
  Draft a conventional-commit message from the staged (or working) diff.
  Use when the owner asks for a commit message, or before git commit.
---

# Git commit writer (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. Prefer **staged** diff: `git diff --cached`. If empty, use `git diff` + status and say so.
2. Infer scope from paths (e.g. `skills/`, `docs/`, `integrations/`).
3. Draft **one** subject line: `type(scope): summary` (≤72 chars). Types: `feat` `fix` `docs` `refactor` `test` `chore` `perf` `ci`.
4. Optional body: what / why (not how blow-by-blow). Bullet blockers or follow-ups.
5. Show the message; **do not** `git commit` unless the owner asked to commit.

## Style

- Imperative mood (“add”, not “added”).
- No secrets, keys, or raw `.env` paths in the message.
- Match repo history tone when recent commits exist.

## Never

- Invent changes that are not in the diff.
- Force-push, `--no-verify`, or amend pushed commits without confirmation.
