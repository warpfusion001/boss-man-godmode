---
name: email-triage
description: >-
  Inbox-zero style Gmail triage: classify, archive recommendations, draft
  replies. Never send without owner yes. Morning-routine friendly. Use when
  the owner asks to clear inbox, triage email, or batch replies.
---

# Email triage (Boss Man)

Original Boss Man workflow skill. Inspired by common inbox-zero patterns
(Composio “Top Grok Bot Skills” article as reference only — not copied).

## Triggers

- “Triage my inbox”, “inbox zero”, “morning email”, “batch replies”
- Owner points at Gmail and wants classify / archive plan / drafts

## Inputs

- Scope: today / unread / last N / a label or search query
- Tone rules (optional): urgency, VIP senders, never-archive list
- Preferred reply voice (short / formal / UK English)

## Process

1. **Read only first** — use Gmail connector tools (`SearchEmailThreads`,
   `ReadEmailThread`, etc.) or Composio Gmail/Outlook when auth’d. Never mark
   read/archive/delete in this pass unless the owner already approved that
   exact batch.
2. **Classify** each thread into one bucket:
   - `action` — needs a reply or decision
   - `waiting` — blocked on someone else
   - `fyi` — useful, no reply
   - `noise` — newsletter / promo / automated (archive candidate)
   - `escalate` — legal, money, security, VIP — flag for human first
3. **Context pull** (optional) — if Composio HubSpot/Linear/Drive is connected
   and the thread looks customer- or ticket-related, fetch a short CRM/ticket
   blurb before drafting. Do not write back to CRM here.
4. **Recommend archive** — list `noise` / completed `fyi` as archive
   candidates with one-line reasons. Wait for owner yes before applying.
5. **Draft replies** for `action` items only:
   - Prefer Gmail **draft** tools that keep the draft in the owner’s mailbox,
     or ask the parent to call `DraftExternalMessage` when the send path
     requires it.
   - One draft per thread; subject + body; note any open questions.
6. **Morning routine hint** — if invoked as a daily routine, summarise:
   counts per bucket, top 3 `action`, archive-candidate count, drafts ready.

## Output

Markdown brief:

```text
# Inbox triage — <date Europe/London>
## Counts
## Action (drafts ready)
## Waiting
## Archive candidates (need yes)
## Escalations
```

## Approvals / never-list

- **Never send** email, Slack, or any outbound without explicit owner yes
  naming recipient + content.
- **Never** auto-archive, trash, unsubscribe, or change filters without yes.
- **Never** invent API keys or paste mailbox secrets into the pack/repo.
- Prefer draft-only; escalate irreversible steps to the parent/owner.
