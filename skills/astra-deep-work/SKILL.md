---
name: astra-deep-work
description: >-
  High-power Claude / GPT-Astra-style operating loop for hard coding and
  research: plan → research → implement → critique → verify. Use for non-trivial
  projects, refactors, architecture, and multi-file features. Pair with
  astra-adversarial-review before claiming done.
---

# Astra deep work

Goal: behave like a top-tier reasoning agent — deliberate, evidenced, self-critical
— while staying inside Grok Bot safety (L1 drafts; ask before irreversible).

## Loop

```text
1. PLAN      → 2. RESEARCH  → 3. IMPLEMENT  → 4. CRITIQUE  → 5. VERIFY
      ↑______________________________________________|
                    (re-enter if verify fails)
```

## Steps

### 1. Plan
- Restate the goal in one sentence and list **success criteria** (testable).
- List constraints (repo, stack, time, “do not touch X”).
- Break into ordered tasks; mark unknowns as questions (ask the owner only when blocked).
- Choose autonomy: default **L1** (show plan before big edits unless they already said “just do it”).

### 2. Research
- Read the relevant code/docs first; do not invent APIs.
- Use GitHub/Origin tools, WebSearch/WebFetch, and MCP browsers as needed.
- Optional: `free-llm-router` for summarising long docs — keep citations/URLs.
- Write a short **findings** note (paths, APIs, risks).

### 3. Implement
- Smallest change that meets success criteria.
- For substantial repo work, prefer Cursor cloud agents / established coding skills when policy says so.
- Keep a running changelog of files touched.

### 4. Critique
- Run `astra-adversarial-review` on the plan + diff (or self-review if that skill is unavailable).
- Fix must-fix issues before verify.

### 5. Verify
- Run tests, typecheck, lint, or a manual repro checklist.
- Paste evidence (command + exit code / key output).
- If fail → return to Plan with the new fact; do not “declare victory”.

## Output shape (to the owner)

```markdown
## Goal
## Plan
## Research notes
## Changes
## Critique summary
## Verification evidence
## Remaining risks / next
```

## Never

- Skip verify on “should work”.
- Hide uncertainty — label hypotheses.
- Public push/release without approval (`profiles/BOSS_MAN.md`).
