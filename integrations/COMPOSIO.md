# Composio — 1000+ apps for Grok Bot (MCP plugin)

Composio exposes a large catalogue of SaaS tools (Gmail, Calendar, HubSpot,
Linear, Notion, Slack, LinkedIn, GitHub mirrors, support desks, and more) to
agents through one MCP-style plugin. Skills in this pack that need CRM,
calendar, or multi-app glue prefer **Composio when authenticated**, then fall
back to first-party connectors (Gmail, GitHub/Origin, `x` MCP).

## Plugin

| Item | Value |
|------|--------|
| Plugin id | `32661537` |
| Dashboard | https://dashboard.composio.dev |
| Docs / article | https://composio.dev/content/top-grok-bot-skills |
| Pack note | Installed on the live Boss Man bot by the owner; MCP may show `needsAuth` until the owner finishes connecting. **Do not** call InstallPlugin/Authenticate from pack scripts. |

## Article → pack mapping

Source article: [Top Grok Bot Skills (Composio)](https://composio.dev/content/top-grok-bot-skills) — used as a **reference checklist only**; workflow skill bodies here are original Boss Man instructions.

| # | Article skill | In this pack |
|---|---------------|--------------|
| 1 | Skill Creator | Native Cursor / Grok Bot `skill-authoring` + UpdateSkill — **document only** |
| 2 | Document skills (Word/PPT/Sheets/PDF) | knowledgeWork + `slides` / office skills — **document only** |
| 3 | last30days | Vendored MIT → `skills/last30days` · see `integrations/LAST30DAYS.md` |
| 4 | Email triage | `skills/email-triage` |
| 5 | Lead research / CRM | `skills/lead-research` |
| 6 | Meeting prep / follow-up | `skills/meeting-prep` |
| 7 | Engineering issue triage | `skills/engineering-issue-triage` |
| 8 | Social content | `skills/social-content` |
| 9 | Customer support (Intercom/Zendesk) | **Not packed** (low fit for coding-focused Boss Man). Optional later via Composio + Skill Creator if the owner wants a support Bot. |
| 10 | Teach-by-Demonstration | Native `learn-from-demonstration` — **document only** |

## Never-list (Composio-backed actions)

Anything that **sends, publishes, writes CRM, deletes, reassigns ownership,
closes tickets, or spends money** needs an explicit owner yes naming the
action. Draft → show → approve is the default (profile L1).

## Related

- `integrations/LAST30DAYS.md`
- `profiles/BOSS_MAN.md`
- Workflow skills under `skills/{email-triage,meeting-prep,engineering-issue-triage,social-content,lead-research}/`
