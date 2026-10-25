---
name: skill-gap-audit
description: >-
  Reusable recipe: diff live workflows vs pack skills, find thin skills and
  capability holes, strengthen pack + announce Hermes-style. Local commit only
  unless owner asks to push.
---

# Skill gap audit

Use when the owner asks to find weaknesses in skills, strengthen the pack, or
after adding major connectors (new MCP namespaces on the bot).

## Steps

1. **Inventory live** — list `/home/box/agent-data/workflows/*/SKILL.md` names.
2. **Inventory pack** — list `skills/*/SKILL.md` in this repo (skip huge vendored trees’ leaf noise; still count router skills).
3. **Diff**
   - `LIVE_ONLY` — in live, missing pack `skills/<name>/SKILL.md` → copy/expand into pack.
   - `PACK_ONLY` — in pack, not live → note for parent `UpdateSkill` (do not claim live update yourself if you are an executor).
   - `THIN` — pack SKILL.md under ~40 lines or missing **Never** section → expand, keep focused.
4. **Capability holes** — connected MCP namespaces (json2video, pixeldojo, AIMLAPI, Hailuo, fal, …) without a pack skill or cost-gate wiring → create skills + `integrations/*.md` rows.
5. **Wire docs** — `integrations/CATALOG.md`, `START.md`, `profiles/BOSS_MAN.md`, `README.md` skill tables as needed. Do **not** re-vendor huge trees (android-official, android-engineering, comfyui) unless asked.
6. **Commit locally** — conventional message; **never push** unless owner says publish/push.
7. **Announce** Hermes-style one-liners, e.g. `skill cost-gate created`.

## Report shape

```text
Commit: <hash> (local only)
New: …
Expanded: …
Remaining holes: …
```

## Never

- Push to origin without owner ask.
- Claim live `UpdateSkill` when only the pack changed (parent/live bot does that).
- Re-vendor android-official / android-engineering / entire ComfyUI kit “for completeness”.
- Put secrets into skill bodies.
