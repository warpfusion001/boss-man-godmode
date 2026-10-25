---
name: composio-workflows
description: >-
  Use when a task needs 1000+ SaaS apps via Composio MCP, or the packed
  email/meeting/eng/social/lead workflows that route through Composio.
---

# Composio workflows

Plugin `32661537` · MCP namespace `user-Composio` · docs: `integrations/COMPOSIO.md`.

## Connect first

1. Check MCP status (`needsAuth` / `needsGrant` → tell owner to finish OAuth).
2. Always start with **`COMPOSIO_SEARCH_TOOLS`** (get a session id), then fetch schemas, then execute.
3. Before app-specific tools: **`COMPOSIO_MANAGE_CONNECTIONS`** for that toolkit if not connected.

## Pack skills that route through Composio

| Skill | Use |
|-------|-----|
| `email-triage` | Classify / archive plan / draft replies |
| `meeting-prep` | Pre-brief + post actions (Calendar) |
| `engineering-issue-triage` | Issue summarise / dupes / priority |
| `social-content` | LinkedIn / IG / X drafts |
| `lead-research` | Account brief; CRM writes need yes |
| `last30days` | Recent public signal (not Composio, but pair for research) |

## Rules

- **Draft-only** for send / publish / CRM write / calendar write / delete until the owner names the action.
- Prefer Composio over inventing custom OAuth scrapes when the toolkit exists.
- Report tool errors with toolkit + slug; never invent slugs.

## Never

- Invent tool slugs or forge session ids.
- Bypass approval for outbound or destructive ops.
- Commit Composio tokens or paste them into chat/git.
