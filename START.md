# START — install Boss Man Godmode into a Grok Bot

Paste this (or point your bot at this repo) after cloning.

1. Read `profiles/BOSS_MAN.md` and adopt it as the operating profile.  
2. Install skills from `skills/*/SKILL.md` into the bot skill store (or keep this repo checked out and use `power-pack-lookup`).  
3. Connect MCP/plugins per `mcp/README.md` — start with **fal**, then Chrome DevTools, then Superpowers.  
4. Copy `.env.example` → local `.env` **or** prefer vault + OAuth (never commit `.env`).  
5. Run `scripts/smoke_pollinations.sh` for a no-key creative smoke test.  
6. For hard coding jobs, follow `docs/ASTRA_MODE.md`.  
7. For music videos / movie studio jobs, load `skills/movie-studio/SKILL.md` — write a job card, get owner yes, then hand off via `video-studio-handoff`. Never hand off without approval.  
8. Ask the owner before any public GitHub publish of generated secrets or media that isn’t cleared.

9. Optional: connect **Agensi MCP** (https://www.agensi.io/mcp) for marketplace skills on demand — prefer pack skills first; never vendor Agensi skill files into this repo.
10. Optional: set **FELO_API_KEY** (https://openapi.felo.ai/settings/api-keys) for packaged Felo research / slides / X / YouTube skills — see `integrations/FELO.md` · skill `felo-when-keyed`.

You are not done until: profile acknowledged, one skill exercised, fal connect card shown or skipped with reason.

11. Optional: connect **Composio** plugin `32661537` (https://dashboard.composio.dev) for HubSpot/Linear/Notion/Calendar and other SaaS — finish OAuth when MCP shows needsAuth; see `integrations/COMPOSIO.md` · skill `composio-workflows`.
12. Optional: use packaged **last30days** (`skills/last30days`) for fresh multi-source research, or `npx skills add mvanhorn/last30days-skill -g` elsewhere — see `integrations/LAST30DAYS.md`. No secrets in git.
13. Always-on **hermes-auto-skills**: create/update a skill for each durable workflow and announce it — see `integrations/HERMES_AUTO_SKILLS.md`.
14. Optional: set **RUNAPI_API_KEY** for packaged **grok-imagine** (Grok Imagine image/video via RunAPI) — **cost-gate** before paid runs; see `integrations/GROK_IMAGINE.md`.
15. Android apps: use **android-app-build** (free toolchain) — see `integrations/ANDROID.md`.
16. Talking Grok Bot: Grok Voice plugin skills (`add-voice`, `add-read-aloud`, `add-dictation`) — see `integrations/TALKING_GROK.md` · skill `talking-grok-bot`.
17. Optional free local media: **draw-things-local** (iPhone/iPad/Mac, API :7860) or **comfyui-local** (GPU desktop ComfyUI) — see `integrations/LOCAL_MEDIA_GEN.md`.
18. Always-on **cost-gate** before any paid gen (Hailuo / fal paid / RunAPI / JSON2Video / Pixel Dojo / AIMLAPI / Melodia API).
19. Optional media MCPs: **json2video** (`JSON2VIDEO_API_KEY`), **pixeldojo-media**, **aimlapi-router** — see `integrations/JSON2VIDEO.md`, `integrations/AIMLAPI.md`.
20. Movie handoffs: **video-studio-handoff** to Video Studio id `b32c19ad-772e-48f8-b5fe-41c763c04025` only after owner yes + job card.
21. Periodically run **skill-gap-audit** to keep live skills and this pack aligned.
22. Always-on **weekly-skills-scout**: Monday 09:00 Europe/London routine “Weekly skills scout” scans GitHub + X for new skills (local commit only) — see `integrations/WEEKLY_SKILLS_SCOUT.md`.
23. Always-on **overnight-hunter**: ~23:00 Europe/London routine “Overnight hunter” finds a repeated X pain, drafts a no-outlay offer + PayPal undercut under £0 (unless ceiling raised) — templates in `creative/hunts/`; never auto-publish.
