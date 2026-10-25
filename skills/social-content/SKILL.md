---
name: social-content
description: >-
  Draft LinkedIn / Instagram / X posts from a brief with brand-voice
  placeholders. Never publish without approval. Note teammate Dave for IG
  growth. Use for campaigns, launches, or weekly content batches.
---

# Social content (Boss Man)

Original Boss Man workflow skill for draft-only social posts.

## Triggers

- “Draft a LinkedIn post”, “IG caption”, “X thread from this”, “content calendar”
- Product update / blog / launch brief handed over for social

## Inputs

- Brief: topic, audience, CTA, must-include / must-avoid claims
- Platforms: LinkedIn, Instagram, X (one or many)
- Brand voice placeholders (fill if owner supplies; else use defaults below)
- Assets: image/video paths or “need creative later”

## Brand voice placeholders

Replace with owner pack values when set; otherwise draft in clear UK English:

- `BRAND_VOICE` — e.g. sharp, practical, no hype
- `BRAND_FORBIDDEN` — e.g. unverifiable metrics, competitor digs
- `BRAND_CTA` — default soft CTA (“try / reply / link in bio”)

**Teammate note:** For Instagram growth strategy, hooks, and posting cadence,
loop in **Dave** (owner’s IG growth teammate) before locking a calendar —
Boss Man drafts; Dave advises growth tactics when the owner asks.

## Process

1. Clarify platform norms (LinkedIn = longer insight; IG = caption + hook;
   X = tight hook + thread option).
2. Research optional recent angle via `last30days`, Exa/Tavily/You, or `x` MCP
   — cite sources in the working notes, not necessarily in the post.
3. Produce **2–3 variants** per platform (hook + body + CTA + hashtag set).
4. Flag risky claims; strip or mark `NEEDS_OWNER_FACT_CHECK`.
5. Optional calendar: week grid of draft slots — still not published.
6. If Composio LinkedIn/IG is connected, prepare publish payloads for review
   only.

## Output

```text
# Social drafts — <campaign>
## LinkedIn (variants)
## Instagram (caption + alt text + hashtags)
## X (single + optional thread)
## Claims to verify
## Calendar suggestion (unpublished)
## Dave / IG growth — questions to ask (if relevant)
```

## Approvals / never-list

- **Never publish**, schedule, edit live posts, comment, reply, or delete
  without owner yes naming platform + exact text.
- Never impersonate another brand or scrape private competitor DMs.
- Never commit social API tokens; use vault / Composio OAuth.
