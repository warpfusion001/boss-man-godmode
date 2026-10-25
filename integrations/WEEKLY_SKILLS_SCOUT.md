# Weekly skills scout

Keeps this pack and the live bot current with new agent skills from GitHub and X.

## How it runs
- **Live skill:** `weekly-skills-scout` (pack copy at `skills/weekly-skills-scout/SKILL.md`).
- **Routine:** flexible routine **“Weekly skills scout”**, Mondays 09:00 Europe/London; also on demand.

## Sources
| Source | How |
|---|---|
| GitHub search | repos/code search for `SKILL.md`, agent-skills topics, recently updated official skill orgs |
| X | `x` MCP search for new skill / skill-pack posts |
| Felo X (optional) | `felo-x-search` when `FELO_API_KEY` is set |

## Output
Classify candidates as add live / vendor pack / link-only / skip; report to the owner (one short line if nothing new).

## Guardrails
- Local commit only — **never push**.
- Prefer MIT/Apache-2.0; no Agensi body vendoring; no secrets in skills.
- Never weaken `cost-gate`, send, or publish rules.
