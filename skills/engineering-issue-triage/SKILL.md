---
name: engineering-issue-triage
description: >-
  Triage GitHub/Cursor Origin issues: summarise, duplicate check, priority
  suggestion, draft comment. Never close, reassign, or public-reply without
  owner approval. Use on busy issue inboxes or messy bug reports.
---

# Engineering issue triage (Boss Man)

Original Boss Man workflow skill for coding-focused repos.

## Triggers

- “Triage issues”, “is this a duplicate?”, “priority on #N”, “clean this bug report”
- New GitHub / Cursor Origin issue flood

## Inputs

- Repo (owner/name or Origin project)
- Issue number(s) or search filter (open bugs, label, since date)
- Team priority rubric if provided (else use defaults below)

## Process

1. **Fetch** issue(s) via `cursor-github` / `cursor-origin` MCP (read-only first).
2. **Summarise** — problem, repro steps (or “missing”), expected vs actual,
   environment, severity signals.
3. **Duplicate check** — search open/closed issues + related PRs for same
   symptom; link candidates with confidence (high/med/low).
4. **Priority suggestion** (label only — do not apply):
   - P0 — data loss, security, prod down
   - P1 — major feature broken, no workaround
   - P2 — degraded / workaround exists
   - P3 — polish / nice-to-have
5. **Draft comment** for the reporter: clarifying questions, ask for logs,
   confirm repro. Keep tone respectful and UK English.
6. **Routing hint** — component/owner guess from CODEOWNERS or past assignees;
   do not reassign yet.
7. Optional Composio Linear/Jira: draft mirrored ticket fields; wait for yes
   before create/update. Slack alert text can be drafted, not posted.

## Output

```text
# Issue triage — <repo>#<n>
## Summary
## Missing info
## Duplicate candidates
## Suggested priority + rationale
## Draft comment (not posted)
## Suggested labels / owner (not applied)
```

## Approvals / never-list

- Never close, lock, delete, or reassign issues without owner yes.
- Never post a public comment/PR review without approval of the exact text.
- Never force-push, skip hooks, or change branch protection.
- Prefer pack coding skills (`systematic-debugging`, `truth-first`) for deep
  repro work after triage.
