# Grok Bot Power-Up Repo Shortlist

**Generated:** 2026-10-25 (Europe/London)  
**Method:** Unauthenticated GitHub Search/API + WebSearch/WebFetch. No login, no forks, no pushes.  
**Scope:** Public repos that can realistically strengthen a **Grok Bot / Cursor Grok Bot** agent (skills, workflows, MCP, templates, prompts, integrations) — not generic “Grok” noise (books, fonts, unrelated models).

---

## Official / primary sources (start here)

| Source | URL | Notes |
|--------|-----|--------|
| xAI Grok Bot docs | https://docs.x.ai/grok-bot/overview | Product overview, computer, skills, routines |
| Cursor Grok Bot docs | https://cursor.com/docs/grok-bot/work | Skills vs routines; how to work with Bots |
| Cursor connect plugins | https://cursor.com/help/grok-bot/connect-plugins | How plugins/MCP attach to Grok Bot |
| **xAI official plugin marketplace** | https://github.com/xai-org/plugin-marketplace | ~307★ · pushed 2026-10-24 · pins ~30 vendor `.grok-plugin` plugins |
| **Cursor official plugins** | https://github.com/cursor/plugins | ~13.9k★ · pushed 2026-10-24 · includes `pstack`, orchestrate, Gmail/Drive MCPs, make-bot-ui skill |
| Grok Bot marketplace (product UI) | https://x.ai/bot/marketplace | Submit/browse marketplace plugins |
| **Grok Build** (separate product) | https://github.com/xai-org/grok-build | ~27.5k★ · Apache-2.0 · xAI coding CLI/TUI — *not* Grok Bot, but same org / adjacent skills patterns |

**Important distinction:** Grok Bot (closed teammate + cloud computer) ≠ Grok Build (open coding harness) ≠ plain Grok chat. Ecosystems overlap via Cursor plugins/MCP and `SKILL.md` packs.

---

## Bucket A — Directly usable with Grok Bot / Cursor agents

Paste profiles, install skills, or load via Cursor/xAI marketplace. Ranked by usefulness for making a Bot stronger at coding/projects (Richard’s focus), then general ops.

| Rank | full_name | Stars | Updated | License | One-line | Strengthens Grok Bot? |
|------|-----------|------:|---------|---------|----------|------------------------|
| A1 | [ZeroPointRepo/awesome-grok-bot](https://github.com/ZeroPointRepo/awesome-grok-bot) | 81 | 2026-10-04 | NOASSERTION / list CC BY 4.0 | Curated, verified directory of 60+ Grok Bot skills, plugins, MCP, self-hosted alts | **Meta-index** — best single map of the ecosystem |
| A2 | [sit-in/awesome-grokbot-playbooks](https://github.com/sit-in/awesome-grokbot-playbooks) | 370 | 2026-10-24 | MIT | Chinese-first playbook catalog (war rooms, routines, recipes) + EN README | **Yes** — battle-tested recipes to copy |
| A3 | [cobusgreyling/grok-bot-templates](https://github.com/cobusgreyling/grok-bot-templates) | 35 | 2026-09-24 | MIT | Scored operating contracts: job, never-list, L1 default, teams/skills/routines; paste `START.md` | **Yes** — best structured “install a team” kit |
| A4 | [templatesgrokbot/templatesgrokbot.com](https://github.com/templatesgrokbot/templatesgrokbot.com) | 33 | 2026-10-16 | MIT | 3,000+ Grok Bot templates + MCP (`templatesgrokbot.com/api/mcp`) | **Yes** — catalog + MCP for Bot self-setup |
| A5 | [HAEGONG/grok-bot-profiles](https://github.com/HAEGONG/grok-bot-profiles) | 19 | 2026-08-27 | CC-BY-4.0 | Spec / bug-repro / PR-producer / PR-verifier Bots with hard authority boundaries | **Yes** — coding pipeline roles |
| A6 | [ellelion/botteams](https://github.com/ellelion/botteams) | 14 | 2026-09-08 | MIT | Fifteen company teams as one-markdown installers (Bots + group + routines) | **Yes** — multi-bot org patterns |
| A7 | [PramodDutta/botskills](https://github.com/PramodDutta/botskills) | 7 | 2026-09-24 | MIT | Paste-ready `BOT.md` setups; each declares one irreversible action it never takes alone | **Yes** — guardrail pattern |
| A8 | [adamanz/grok-bot-skill](https://github.com/adamanz/grok-bot-skill) | 13 | 2026-08-17 | MIT | Cursor/Claude/Codex skill: list/message/create Grok Bots from CLI via local desktop session | **Yes** — meta-control of teammates (macOS + app) |
| A9 | [Luca-Blight/thin-grok-bot-deep-work-on-cli](https://github.com/Luca-Blight/thin-grok-bot-deep-work-on-cli) | 7 | 2026-08-28 | MIT | Keep Bot mesh thin; hand long builds to Cursor CLI / cloud agents / grok CLI | **Yes** — coding/projects architecture |
| A10 | [galleonlabs/hypergrok-trading-desk](https://github.com/galleonlabs/hypergrok-trading-desk) | 178 | 2026-10-19 | MIT | 7-agent Hyperliquid trading desk: roles, prompts, 17 skills, `.grok-plugin` | **Partial** — excellent multi-agent pattern; trading-specific |
| A11 | [jeffhuber/grokbot-imessage-skill](https://github.com/jeffhuber/grokbot-imessage-skill) | 36 | 2026-09-15 | MIT | macOS iMessage skill via local launchd helper | **Yes** if messaging matters; privacy-sensitive |
| A12 | [bcharleson/grokbot-for-gtm](https://github.com/bcharleson/grokbot-for-gtm) | 25 | 2026-08-20 | MIT | Full outbound GTM motion playbook for a Bot | **Adjacent** unless doing sales/outreach |
| A13 | [ScriptedAlchemy/grok-bot-cli](https://github.com/ScriptedAlchemy/grok-bot-cli) | 132 | 2026-10-23 | MIT | `gbot` CLI: create/update/message/inspect Bots & groups from terminal | **Yes** — automation of Bot fleet |
| A14 | [cursor/plugins](https://github.com/cursor/plugins) (`pstack`, orchestrate, make-bot-ui, …) | 13909 | 2026-10-24 | ? | Official Cursor plugins + skills used by Grok Bot under Cursor policy | **Yes** — first-party playbooks |
| A15 | [xai-org/plugin-marketplace](https://github.com/xai-org/plugin-marketplace) | 307 | 2026-10-24 | ? | Official pin-set of vendor Grok plugins | **Yes** — canonical install surface |

**Note:** `AgentMindCloud/grok-bot-super` is listed in awesome catalogs but **404’d** on GitHub as of this search (archived/removed). Do not depend on it.

---

## Bucket B — MCP / tools worth connecting

These plug into Grok Bot via Cursor’s connector/plugin policy (no separate Bot-only allowlist). Prefer marketplace-pinned or high-star, actively maintained tools.

| Rank | full_name | Stars | Updated | License | One-line | Why for a Grok Bot |
|------|-----------|------:|---------|---------|----------|---------------------|
| B1 | [obra/superpowers](https://github.com/obra/superpowers) | 304627 | 2026-10-23 | MIT | Large agentic skills framework (planning, debugging, writing) — in xAI marketplace | Biggest general skill pack for coding agents |
| B2 | [ChromeDevTools/chrome-devtools-mcp](https://github.com/ChromeDevTools/chrome-devtools-mcp) | 54088 | 2026-10-24 | Apache-2.0 | Drive/inspect live Chrome: traces, network, console | Browser debugging for web projects |
| B3 | [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers) | 96831 | 2026-10-23 | MIT | Huge curated MCP server collection | Discovery map for connectors |
| B4 | [modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers) | 91543 | 2026-10-24 | NOASSERTION | Official MCP reference servers | Canonical baselines |
| B5 | [cloudflare/skills](https://github.com/cloudflare/skills) | 3165 | 2026-10-19 | Apache-2.0 | Workers/KV/R2/DNS agent skills (marketplace) | Deploy/infra from the Bot |
| B6 | [vercel/vercel-plugin](https://github.com/vercel/vercel-plugin) | 312 | 2026-10-23 | NOASSERTION | Vercel ecosystem plugin + skills | Deployments/logs for projects |
| B7 | [browser-use/plugins](https://github.com/browser-use/plugins) | 25 | 2026-10-17 | ? | Browser Use plugins (user Chrome or isolated cloud) | Computer-use alternative path |
| B8 | [firecrawl/firecrawl-grok-plugin](https://github.com/firecrawl/firecrawl-grok-plugin) | 10 | 2026-10-15 | ? | Search/scrape/crawl → clean markdown | Research/docs ingestion |
| B9 | [getsentry/plugin-grok](https://github.com/getsentry/plugin-grok) | 1 | 2026-10-23 | MIT | Official Sentry plugin for Grok | Error triage for shipped apps |
| B10 | [neondatabase/agent-skills](https://github.com/neondatabase/agent-skills) | 105 | 2026-10-23 | Apache-2.0 | Neon Postgres agent skills (+ marketplace `.grok-plugin`) | DB projects |
| B11 | [Archive228/imagine-mcp](https://github.com/Archive228/imagine-mcp) | 2 | 2026-08-26 | MIT | Cost-aware remote MCP for xAI image/video/speech | Media generation with receipts |
| B12 | [campfiresms/campfiresms-grok-bot](https://github.com/campfiresms/campfiresms-grok-bot) | 0 | 2026-08-28 | MIT | Hosted SMS MCP + safety skill | Phone channel (if needed) |
| B13 | [stoyan-stoyanov/agentcouch-plugins](https://github.com/stoyan-stoyanov/agentcouch-plugins) | 1 | 2026-10-02 | MIT | AgentCouch MCP + chat skill (cross-agent rooms) | Multi-agent messaging |
| B14 | TemplatesGrokBot MCP (hosted) | — | live | — | `https://templatesgrokbot.com/api/mcp` | Let the Bot search/install templates |

Also in marketplace (check via xai-org/plugin-marketplace pins): Exa, Tavily, Figma, Stripe, Railway, MongoDB/Atlas, Netlify, Axiom, TinyFish, Wix, Base44.

---

## Bucket C — Inspiration / adjacent (do not “integrate blindly”)

Large stars, useful ideas, or self-hosted alternatives — **not** drop-in Grok Bot skills. Good for patterns, not for pasting as-is into Boss Man.

| Rank | full_name | Stars | Updated | License | One-line | Relation |
|------|-----------|------:|---------|---------|----------|----------|
| C1 | [openclaw/openclaw](https://github.com/openclaw/openclaw) | 392954 | 2026-10-24 | MIT | Self-hosted “AI that does things” personal assistant | Competitor/alt runtime; multi-channel plugins |
| C2 | [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent) | 256801 | 2026-10-24 | MIT | Model-agnostic agent that grows with memory/skills | Competitor; skills inspiration |
| C3 | [anthropics/skills](https://github.com/anthropics/skills) | 183503 | 2026-10-09 | ? | Public Agent Skills repo (Claude-style `SKILL.md`) | Skill format often adapts to Grok Bot |
| C4 | [farion1231/cc-switch](https://github.com/farion1231/cc-switch) | 148324 | 2026-10-24 | MIT | Desktop all-in-one for Claude Code, Codex, OpenClaw, Grok Build, Hermes | Orchestration UI across agents |
| C5 | [stablyai/orca](https://github.com/stablyai/orca) | 104937 | 2026-10-24 | MIT | Fleet workspace for Grok Bot, Claude Code, etc. on your subscriptions | Fleet UX around Grok Bot |
| C6 | [xai-org/grok-build](https://github.com/xai-org/grok-build) | 27528 | 2026-09-29 | Apache-2.0 | Official Grok coding agent TUI (skills, plugins, MCP, AGENTS.md) | Sibling product; skill/plugin patterns |
| C7 | [feder-cr/invisible_dots](https://github.com/feder-cr/invisible_dots) | 32228 | 2026-10-24 | MIT | Self-hosted alt to OpenAI Dots / Grok Bot | Architecture inspiration |
| C8 | [slopus/happy](https://github.com/slopus/happy) | 24298 | 2026-10-24 | MIT | Orchestrate Claude, Codex, Grok in one app | Multi-agent orchestration |
| C9 | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | 32956 | 2026-10-14 | ? | Vercel official agent skills collection | Portable skill ideas |
| C10 | [eze-is/web-access](https://github.com/eze-is/web-access) | 9250 | 2026-10-14 | ? | Skill: full web access for local agents (CDP + channels); mentions Grok Bot | Networking skill pattern |
| C11 | [cobusgreyling/loop-engineering](https://github.com/cobusgreyling/loop-engineering) | 11621 | 2026-10-24 | MIT | Loop-engineering patterns for AI coding agents | Companion to grok-bot-templates |
| C12 | [Anil-matcha/open-duet](https://github.com/Anil-matcha/open-duet) | 6149 | 2026-10-24 | Apache-2.0 | Self-hosted named AI coworkers | Alt teammate model |
| C13 | [Anil-matcha/open-grok-bot](https://github.com/Anil-matcha/open-grok-bot) | 15 | 2026-09-20 | ? | Open Grok-Bot-like FastAPI/Next.js with deny-by-default gateway | Self-host experiment |
| C14 | [ishandutta2007/open-grokbot](https://github.com/ishandutta2007/open-grokbot) | 9 | 2026-08-13 | MIT | Open-source Grok Bot equivalent (docker compose) | Self-host experiment |

---

## Recommended “power stack” for a coding-focused Grok Bot (no publish yet)

1. **Index:** ZeroPointRepo/awesome-grok-bot + sit-in/awesome-grokbot-playbooks  
2. **Team templates:** cobusgreyling/grok-bot-templates (`START.md`) + HAEGONG/grok-bot-profiles (spec→repro→PR→verify)  
3. **First-party skills:** cursor/plugins (`pstack`, orchestrate) + obra/superpowers  
4. **Official plugins:** install from xai-org/plugin-marketplace pins (Chrome DevTools, Firecrawl/Exa/Tavily, Sentry, Vercel/Cloudflare/Neon as needed)  
5. **Deep work routing:** Luca-Blight/thin-grok-bot-deep-work-on-cli  
6. **Fleet control (optional):** ScriptedAlchemy/grok-bot-cli or adamanz/grok-bot-skill (macOS)  
7. **Optional catalog MCP:** templatesgrokbot.com MCP  

**Do not** blindly “add all repos into yourself.” Skills/plugins need review for credentials, irreversible actions, and maintenance. Prefer L1 (draft-only) profiles for a week.

---

## Publishing a meta-repo (blocked until GitHub auth)

User asked to bundle these into a GitHub repo. **Blocked:** `gh` is not logged in; this run used only public unauthenticated API. Next steps when Richard authorizes GitHub:

1. Connect GitHub (Cursor GitHub MCP / `gh auth login`).  
2. Create a private or public meta-repo (e.g. `richard-drinkwater/boss-man-powerpack`) with:  
   - `README.md` ranking + install notes  
   - `gitmodules` or documented submodules for MIT/Apache/CC-BY sources only  
   - `START.md` installer prompt pointing at curated PROFILE/SKILL paths  
   - Explicit **never-list** (no send/post without approval)  
3. Push and optionally register as a Cursor/Grok plugin if manifests are added.

This shortlist file is the reversible deliverable until then.

---

## Top 10 (quick links)

1. https://github.com/ZeroPointRepo/awesome-grok-bot — ecosystem map  
2. https://github.com/xai-org/plugin-marketplace — official plugins  
3. https://github.com/cursor/plugins — first-party Cursor/Grok Bot skills  
4. https://github.com/cobusgreyling/grok-bot-templates — paste-ready teams/contracts  
5. https://github.com/obra/superpowers — largest marketplace skill framework  
6. https://github.com/HAEGONG/grok-bot-profiles — coding role split with guardrails  
7. https://github.com/sit-in/awesome-grokbot-playbooks — community playbooks  
8. https://github.com/ChromeDevTools/chrome-devtools-mcp — browser MCP for agents  
9. https://github.com/ScriptedAlchemy/grok-bot-cli — CLI for Bot fleets  
10. https://github.com/templatesgrokbot/templatesgrokbot.com — 3k+ templates + MCP  

*(Honorable giant-adjacent: openclaw/openclaw, NousResearch/hermes-agent, xai-org/grok-build, stablyai/orca — inspiration/fleet, not paste-in skills.)*

---

## Search coverage

Queries / APIs used: GitHub search `grok bot|grokbot|"Grok Bot"`, targeted repo lookups, WebSearch for Grok Bot skills/MCP/templates, OpenClaw/Hermes/Grok Build, awesome lists, Cursor/xAI docs. Filtered out unrelated “grokking algorithms”, grok-1 weights-only, free API gateways, etc.
