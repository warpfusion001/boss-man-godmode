---
name: pr-description-writer
description: >-
  Draft a pull-request body from the branch diff: what, why, how, test plan.
  Use when opening or updating a PR description.
---

# PR description writer (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. Identify base vs head (`main`/`master` vs current branch). Diff: `git log` + `git diff base...HEAD`.
2. Write sections:
   - **What** — user-visible change in 2–5 bullets
   - **Why** — problem / request
   - **How** — key approach (files/modules, not a dump)
   - **Test plan** — commands or manual checks already run / still needed
   - **Risks** — rollbacks, migrations, secrets
3. Link related issues/specs if present in the branch.
4. Hand the markdown to the owner; open/update the PR only when authorised tooling + owner yes allow.

## Style

- Evidence over vibes (cite tests or screenshots paths on the box).
- Call out breaking changes explicitly.

## Never

- Paste secrets or full `.env` into the PR body.
- Claim tests passed without running or quoting results.
