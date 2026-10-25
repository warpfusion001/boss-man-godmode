---
name: lead-research
description: >-
  Turn a company name or email into an account brief with recent signals.
  Research via Exa/Tavily/You/last30days/x. CRM writes only via Composio with
  owner approval. Use before sales calls or inbound lead enrichment.
---

# Lead research & CRM enrichment (Boss Man)

Original Boss Man workflow skill. CRM is draft-then-approve only.

## Triggers

- “Brief me on company X”, “enrich this lead”, “who is this email from?”
- Pre-call account research / pipeline cleanup

## Inputs

- Company name, domain, and/or lead email
- Optional: existing CRM id, deal stage, questions to answer
- Output depth: quick (½ page) or full (sections below)

## Process

1. **Identify** — canonical company name, domain, HQ/geo if public.
2. **Firmographics** — what they do, size signals, product, relevant stack
   (cite links). Prefer Exa / Tavily / You / Felo when keyed.
3. **Recency** — run or cite `last30days` / `x` MCP / news for last ~30 days
   hiring, launches, funding, incidents. Separate rumour vs primary source.
4. **People** — lead + likely stakeholders (public pages only). No creepy
   personal data scraping.
5. **Prior touch** — Gmail search for existing threads; summarise, don’t
   forward.
6. **Buying signals** — job posts, tool mentions, complaints, expansions —
   labelled as hypothesis vs fact.
7. **CRM draft** — if Composio HubSpot/Salesforce is connected, propose field
   creates/updates (company, contact, notes). Show a diff table. **Do not
   write** until owner yes. Deduplicate against existing records first.

## Output

```text
# Account brief — <company>
## Snapshot
## Recent (30d) signals
## People
## Prior conversations
## Hypotheses / risks
## Sources
## CRM draft (pending approval)
```

## Approvals / never-list

- Never create/update/delete CRM records, change ownership, or merge contacts
  without explicit owner approval of the field list.
- Never send outreach email/LinkedIn without yes.
- Never commit CRM tokens; Composio OAuth only.
- Do not invent funding numbers or customer logos.
