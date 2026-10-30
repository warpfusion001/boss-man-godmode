# Flovia (MCP connector, alpha)

- Server URL: `https://api.flovia.dev/mcp` (OAuth sign-in; no key in this repo)
- One shared **free allowance** (5-hour + weekly windows) across all sources; optional purchased balance.
  Check with `flovia_status` before heavy use. Flovia is alpha — tools may change.

| Tool / source | Use |
|---------------|-----|
| `flovia_runway` | Runway **gen4.5** video (2–5s, 720:1280 / 1280:720 / 720:720) or **gen4_image** stills |
| `flovia_openai` | Text with **GPT-6 Luna** (scripts, drafts, JSON) |
| Exa / Firecrawl / context.dev | Web search and public page reading |
| X | Recent post search (last 7 days) and counts |
| Nansen / CoinGecko / Zerion / QuickNode | Read-only crypto + on-chain data |
| Fal | Images (may be paused in Flovia — check `flovia_status`) |

## Runway rules

1. `flovia_runway` action `list` first. Runway needs a **separate consent** (`runway-consent-1`)
   recorded from the **owner's own words** — the bot must never answer it.
2. Pick a fixed `operation_id` **before** sending. Poll with action `status`. **Never regenerate**
   an accepted or unknown job.
3. Outputs are private for 24h — download promptly.
4. Show **Powered by Runway** — https://runwayml.com — wherever the output is published.
5. One 5s video used ~60% of a weekly free window in testing (Oct 2026) — budget accordingly.
