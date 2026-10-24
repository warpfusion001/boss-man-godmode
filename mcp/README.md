# MCP & plugin connections

This folder documents **how to connect** tools to a live Grok Bot.  
It does **not** contain tokens, cookies, or fake credentials.

Prefer **OAuth / marketplace InstallPlugin** over pasting API keys into chat.
Keys that must exist belong in the bot **vault** or a gitignored `.env`.

---

## Priority connect list

### 1) fal (creative — highest leverage)

| | |
|-|-|
| **MCP URL** | `https://mcp.fal.ai/mcp-relay` |
| **Docs** | https://fal.ai/docs/documentation/setting-up/mcp |
| **Auth** | OAuth in the Grok Bot / Cursor plugin flow — **no key in chat** |
| **Also** | Optional API key `FAL_KEY` from https://fal.ai for non-MCP scripts |
| **Free** | Signed-in sandbox daily Flux/Wan video quotas (see fal free pages); API generations are prepaid credits |

**Bot action:** open Connect / marketplace → add fal → complete browser OAuth → smoke: search a Flux model → price → generate one small image.

### 2) Chrome DevTools MCP

| | |
|-|-|
| **Repo** | https://github.com/ChromeDevTools/chrome-devtools-mcp |
| **Why** | Network, console, traces for web project debugging |
| **Install** | Via xAI/Cursor marketplace pin when available, or follow repo README for MCP server config |

### 3) Superpowers (obra)

| | |
|-|-|
| **Repo** | https://github.com/obra/superpowers |
| **Why** | Large planning / debugging / writing skill pack |
| **Install** | xAI plugin marketplace (listed in https://github.com/xai-org/plugin-marketplace) |

### 4) ElevenLabs (voice)

| | |
|-|-|
| **Hosted MCP** | https://elevenlabs.io/mcp |
| **SDK (legacy note)** | https://github.com/elevenlabs/elevenlabs-mcp — prefer hosted MCP for agents |
| **Free** | ~10k credits/month — https://elevenlabs.io/pricing |
| **Env** | `ELEVENLABS_API_KEY` only if not using OAuth MCP |

### 5) Replicate (optional models)

| | |
|-|-|
| **MCP** | `https://mcp.replicate.com/sse` |
| **Try free** | https://replicate.com/collections/try-for-free |
| **Env** | `REPLICATE_API_TOKEN` |

### 6) Official catalogues

- https://github.com/xai-org/plugin-marketplace — pin set of vendor `.grok-plugin`s  
- https://github.com/cursor/plugins — first-party Cursor skills/plugins  
- Product UI: https://x.ai/bot/marketplace  
- Help: https://cursor.com/help/grok-bot/connect-plugins  

### 7) Templates MCP (optional)

- Hosted: `https://templatesgrokbot.com/api/mcp`  
- Repo: https://github.com/templatesgrokbot/templatesgrokbot.com  

---

## Suggested install order for Boss Man

1. fal MCP (creative)  
2. Chrome DevTools MCP (web debug)  
3. Superpowers (coding depth)  
4. Firecrawl / Exa / Tavily (research) if marketplace-pinned  
5. ElevenLabs MCP (voice)  
6. Sentry / Vercel / Cloudflare / Neon as your projects need them  

---

## Local thin wrappers

If you author custom MCP servers (e.g. FastMCP), put them under `mcp/local/` and document start commands here. **Never** commit `.env` or bearer tokens beside them.

---

## Sanity checks

- After connect, list tools (`GetDynamicTools` / plugin UI) and confirm the namespace is not `needsAuth`.  
- Run one **cheap** generation or `browser_navigate` before a large job.  
- If Auto-review blocks a call, escalate with the honest same-action approval path — do not smuggle tokens around the check.
