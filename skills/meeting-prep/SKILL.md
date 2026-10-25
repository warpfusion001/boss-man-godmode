---
name: meeting-prep
description: >-
  Pre-meeting brief (agenda, attendees, prior threads) and post-meeting notes
  with actions. Calendar via Composio when available; Gmail for context. No
  outbound without approval. Use before/after calls or when asked to prep.
---

# Meeting prep & follow-up (Boss Man)

Original Boss Man workflow skill. Reference: Composio top-skills article
(ideas only — original instructions).

## Triggers

- “Prep me for …”, “brief for the call”, “meeting notes”, “follow-ups from …”
- Named meeting time / calendar event / attendees

## Inputs

- Meeting identity: title, time (Europe/London), attendees, link if any
- Goal of the call (decide / inform / sell / sync)
- Whether this is **pre** or **post** (or both)

## Process — pre-meeting

1. **Calendar** — if Composio Google Calendar / Calendly is connected, read the
   event (attendees, description, attachments). Otherwise use owner-supplied
   details; do not invent attendees.
2. **People** — short blurb per attendee from prior Gmail threads, CRM
   (Composio HubSpot when auth’d), or public research (Exa/Tavily/You). Mark
   sources.
3. **Open loops** — unresolved emails, tickets, decisions from last touch.
4. **Agenda draft** — 4–7 bullets tied to the stated goal; timebox if useful.
5. **Docs to bring** — links/paths only; do not email them out.

## Process — post-meeting

1. Capture decisions, owners, deadlines, open questions from notes/transcript
   the owner provides (or meeting transcript tools when authorised).
2. Draft **action list** (owner → task → due).
3. Draft **follow-up email** bodies (do not send).
4. Optional: draft CRM / Notion / Linear updates via Composio — **show diff,
   wait for yes** before any write.

## Output

```text
# Meeting — <title> — <time Europe/London>
## Goal
## Attendees
## Agenda (pre) / Notes (post)
## Open loops
## Actions (owner, due)
## Draft follow-ups (not sent)
```

## Approvals / never-list

- Never send follow-ups, invite updates, or Slack pings without owner yes.
- Never create/modify calendar events or external tasks without approval.
- Never write CRM/Notion/Linear records without an explicit approve of the
  proposed fields.
- No fabrication of what was said in the meeting.
