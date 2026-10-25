# Third-party notices

This repository catalogues and wraps upstream projects. Their licences remain
unchanged. Before commercial use, read each upstream LICENSE / model card.

## Notable upstreams

| Project | Typical licence | Caveat |
|---------|-----------------|--------|
| ComfyUI | GPL-3.0 | Self-host runtime |
| FLUX (code) | Apache-2.0 | Weights: check BFL model card |
| Wan2.1 / LTX-Video / FramePack | Apache-2.0 | — |
| Audiocraft / MusicGen | MIT code | **Weights CC-BY-NC** — non-commercial |
| Pollinations | MIT | Rate limits; watermark unless keyed |
| FFmpeg | LGPL/GPL components | Check your build |
| obra/superpowers | MIT | Marketplace skill pack |
| Chrome DevTools MCP | Apache-2.0 | — |
| fal SDK | Apache-2.0 | Generations prepaid / sandbox quotas |
| ElevenLabs SDK | MIT | Free-tier commercial limits |

Catalogues we only **link** (not vendored): ZeroPointRepo/awesome-grok-bot,
xai-org/plugin-marketplace, cursor/plugins, sit-in/awesome-grokbot-playbooks,
cobusgreyling/grok-bot-templates, HAEGONG/grok-bot-profiles,
templatesgrokbot/templatesgrokbot.com, ScriptedAlchemy/grok-bot-cli.

Stars and URLs verified around 2026-10-25 (Europe/London); they drift — check upstream.

## Felo skills
`skills/felo-{search,x-search,slides,youtube-subtitling,web-fetch,superAgent}` vendored verbatim from https://github.com/Felo-Inc/felo-skills (commit b42c3c0), MIT License, © Felo-Inc. See each folder's LICENSE where present.

## last30days
`skills/last30days` vendored from https://github.com/mvanhorn/last30days-skill (MIT), © Matt Van Horn / contributors. Upstream LICENSE copied into that folder. Demo media under `assets/` is part of the upstream skill.

## Composio
Composio plugin (id 32661537) and the article https://composio.dev/content/top-grok-bot-skills are **references** for which workflows to support. Workflow skill bodies (`email-triage`, `meeting-prep`, `engineering-issue-triage`, `social-content`, `lead-research`) are original Boss Man instructions — not verbatim copies of the article.

## Hermes auto-skills
Idea from the r/GrokBot tip https://www.reddit.com/r/GrokBot/comments/1w9yzzk/skills_grok_bot_tip_im_a_heavy_hermes_user_now/ by u/avishic. No code or license taken from Reddit; `skills/hermes-auto-skills` is original Boss Man wording.

## ComfyUI-Agent-Kit (skills/comfyui)
`skills/comfyui/` is vendored from https://github.com/SlavaSexton/ComfyUI-Agent-Kit (`shared/comfyui`).
Copyright 2026 AI VFX NEWS (Slava Sexton). Licensed under the Apache License, Version 2.0 — see
`skills/comfyui/LICENSE`, `skills/comfyui/NOTICE`, `skills/comfyui/ATTRIBUTION.md`. "AI VFX NEWS" is a
trademark of its holder; no endorsement implied. Third-party models/components are not redistributed.
