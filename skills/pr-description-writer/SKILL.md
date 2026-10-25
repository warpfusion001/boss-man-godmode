---
name: pr-description-writer
description: >-
  Draft a pull-request body from the branch diff: what, why, how, test plan.
  Use when opening or updating a PR description.
---

# PR description writer (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. Identify base vs head (`main`/`master` vs current branch). Diff: `git log base..HEAD` + `git diff base...HEAD`.
2. Write sections:
   - **Summary** — one paragraph
   - **What** — user-visible change in 2–5 bullets
   - **Why** — problem / request
   - **How** — key approach (modules, not a file dump)
   - **Test plan** — commands or manual checks already run / still needed
   - **Risks** — rollbacks, migrations, secrets, breaking API
3. Link related issues / specs if present on the branch.
4. Hand the markdown to the owner; open/update the PR only when authorised tooling + owner yes allow.
5. Pair with `truth-first`: do not claim tests passed without quoting a fresh run.

## Template

```markdown
## Summary
…

## What
- …

## Why
…

## How
…

## Test plan
- [ ] …

## Risks
…
```

## Never

- Paste secrets or full `.env` into the PR body.
- Claim tests passed without running or quoting results.
- Open a public PR that includes private media or keys.
