---
name: hermes-auto-skills
description: >-
  Standing Hermes-style habit: create or update a dedicated skill whenever a
  durable knowledge area or repeated workflow appears; announce created/updated.
  Use continuously, not only when asked.
---
# Hermes-style auto skill curation

Standing instruction (from [r/GrokBot tip](https://www.reddit.com/r/GrokBot/comments/1w9yzzk/skills_grok_bot_tip_im_a_heavy_hermes_user_now/) by u/avishic): skills beat stuffing procedures into memory. Keep a living skill library.

## Core rule
For every **durable** area of knowledge or **repeated** actions, create a dedicated skill (or update the existing one) as you learn. This is always on — not only when the owner says “save a skill”.

## When to create
- A multi-step workflow worked and will likely repeat
- Domain knowledge (how we ship MVs, how we triage mail, API quirks) that should stay consistent across chats
- Owner corrections that change how a class of tasks should run forever

## When to update
- New constraints, tools, or failure modes for an existing skill
- Owner prefers a different output format or approval gate
- A connector/path replaced another (document the new preferred path)

## When NOT to
- One-off tasks
- Secrets, API keys, passwords, personal addresses (vault/env only)
- Assistant-specific IDs that belong in memory/routines (channel IDs, one person’s email) — keep skills generic; put instance detail in routines or profile memory
- Pure factual trivia better as a short memory sentence

## How
1. Use `UpdateSkill` (action `write`) with a clear **name**, **when-to-use description**, and reusable **body** steps.
2. Prefer rewriting the same skill id over spawning near-duplicates.
3. Cross-link related skills lightly; don’t nest entire manuals.
4. For pack-backed work, also mirror into `/workspace/boss-man-godmode/skills/<id>/` when the owner’s godmode pack should carry it — still no push unless asked.

## Announce (required)
After create or update, tell the owner in one short line, e.g.:
- `skill email-triage created`
- `skill movie-studio updated`

No long recap unless they ask.

## Safety
- Approval gates for send/publish/spend/delete stay in the skill body.
- Never weaken “never send unasked” rules when updating skills.
