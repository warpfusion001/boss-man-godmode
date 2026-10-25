# Agensi — Cursor / Claude skill marketplace

- Site: https://www.agensi.io
- Cursor filter: https://www.agensi.io/cursor-marketplace
- Learn / best-of: https://www.agensi.io/learn/best-cursor-skills-2026 (Jun 2026)
- MCP: https://www.agensi.io/mcp · auth endpoint mentioned: `https://mcp.agensi.io/mcp/auth`

## What it is

Agensi is a **marketplace of agent skills** (many free, some paid) discoverable for Cursor / Claude-style agents. Skills load **on demand via their MCP**, not by vendoring zip contents into this pack.

## Honesty

- **Paid / marketplace skills** stay on Agensi MCP when connected — we **link**, we do **not** copy skill bodies into `boss-man-godmode`.
- Agensi docs say: **never write Agensi skills to disk**. MCP on-demand only.
- This pack ships **original Boss Man skills** that cover the same *workflows* (commits, PRs, README, env diagnose, evidence-first verify). Names may overlap; authorship and licence are ours (MIT pack).
- Install counts below are from the Jun 2026 best-skills article — they drift; re-check the live pages.

## Connect (optional)

1. Owner connects Agensi MCP per https://www.agensi.io/mcp (OAuth / auth at the endpoint above).
2. Prefer pack skills for day-to-day coding workflows.
3. Use Agensi MCP only to **search / load marketplace skills on demand** when the owner asks for a catalogue skill we do not cover.
4. Never dump Agensi skill markdown into this repo or the skill store as a permanent copy.

## Free shortlist (link only)

| Skill (marketplace) | ~Installs | URL |
|---------------------|-----------|-----|
| code-reviewer | ~447 | https://www.agensi.io/skills/code-reviewer |
| git-commit-writer | ~170 | https://www.agensi.io/skills/git-commit-writer |
| readme-generator | ~117 | https://www.agensi.io/skills/readme-generator |
| env-doctor | ~86 | https://www.agensi.io/skills/env-doctor |
| pr-description-writer | ~85 | https://www.agensi.io/skills/pr-description-writer |
| changelog-generator | ~41 | https://www.agensi.io/skills/changelog-generator |
| codex-grade-coding | ~37 | https://www.agensi.io/skills/codex-grade-coding |
| ai-productivity | ~36 | https://www.agensi.io/skills/ai-productivity |
| java-best-practice-checker | ~22 | https://www.agensi.io/skills/java-best-practice-checker |
| skill-polisher | ~13 | https://www.agensi.io/skills/skill-polisher |
| truth-first | ~11 | https://www.agensi.io/skills/truth-first |
| lobster-debugging | ~6 | https://www.agensi.io/skills/lobster-debugging |

## Paid / trending (link only — do not purchase from this pack)

GEO SEO Suite, Award Winning App Designer, cinematic sites, and other paid listings on https://www.agensi.io — browse live; never buy without explicit owner approval naming the product and spend.

## Mapping → Boss Man pack

| Agensi (workflow) | Boss Man coverage |
|-------------------|-------------------|
| code-reviewer | **`astra-adversarial-review`** (do not duplicate) |
| git-commit-writer | **`git-commit-writer`** (original pack skill) |
| pr-description-writer | **`pr-description-writer`** |
| readme-generator | **`readme-generator`** |
| env-doctor | **`env-doctor`** |
| truth-first | **`truth-first`** (+ pairs with verification-before-completion style checks) |
| changelog / polish / etc. | Prefer Agensi MCP on demand, or extend pack later |

## Never-list

1. Copy Agensi zip / skill body content into this repo.  
2. Claim marketplace install counts as “installed into Boss Man”.  
3. Purchase paid Agensi skills without owner yes.  
4. Treat Agensi MCP as a substitute for vault / OAuth hygiene.
