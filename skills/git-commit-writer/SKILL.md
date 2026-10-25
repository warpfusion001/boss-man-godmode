---
name: git-commit-writer
description: >-
  Draft a conventional-commit message from the staged (or working) diff.
  Use when the owner asks for a commit message, or before git commit.
---

# Git commit writer (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. Prefer **staged** diff: `git diff --cached`. If empty, use `git diff` + `git status` and say so.
2. Skim recent history (`git log -5 --oneline`) for tone and type habits.
3. Infer scope from paths (e.g. `skills/`, `docs/`, `integrations/`).
4. Draft **one** subject: `type(scope): summary` (≤72 chars).  
   Types: `feat` `fix` `docs` `refactor` `test` `chore` `perf` `ci`.
5. Optional body: what / why (not a how dump). Bullets for blockers or follow-ups.
6. Show the full message; **do not** `git commit` unless the owner asked to commit.
7. If committing: never `--no-verify`, force-push, or amend already-pushed commits without confirmation.

## Style

- Imperative mood (“add”, not “added”).
- No secrets, keys, or raw `.env` paths in the message.
- One logical change per commit when practical; otherwise note “mixed” in body.

## Never

- Invent changes that are not in the diff.
- Force-push, `--no-verify`, or amend pushed commits without confirmation.
- Hide broken tests by skipping hooks.

## Checklist

- [ ] Diff source stated (staged vs working)
- [ ] Type/scope match paths
- [ ] No secrets in subject/body
- [ ] Owner asked to commit before running `git commit`
