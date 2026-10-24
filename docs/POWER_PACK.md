# Grok Bot Power Pack — Creative God-Mode Expansion

**Owner target:** `@warpfusion001`  
**Bot brand:** Boss Man  
**Verified:** 2026-10-25 (Europe/London) via unauthenticated GitHub API + public vendor docs  
**Existing shortlist preserved** (do not drop):  
`ZeroPointRepo/awesome-grok-bot`, `xai-org/plugin-marketplace`, `cursor/plugins`, `cobusgreyling/grok-bot-templates`, `obra/superpowers`, `HAEGONG/grok-bot-profiles`, `sit-in/awesome-grokbot-playbooks`, `ChromeDevTools/chrome-devtools-mcp`, `ScriptedAlchemy/grok-bot-cli`, `templatesgrokbot/templatesgrokbot.com`

---

## Hard rule — API keys

- **No fabricated keys.** Nothing below is a usable secret.
- **No pasted “found on the web” keys** treated as ours.
- Document **signup URLs**, **env var names**, **free/freemium limits**, **no-key public endpoints**, and **example placeholders** clearly marked `EXAMPLE_ONLY — replace`.
- Prefer `process.env.NAME` / `.env` over embedding anything.

---

## 1) Ranked NEW finds

### A — Creative media (image / video / music / audio / post)

| Rank | Name | URL | Stars | Unlocks | How Boss Man uses it | License / caveats |
|------|------|-----|-------|---------|----------------------|-------------------|
| A1 | **ComfyUI** | https://github.com/Comfy-Org/ComfyUI | **142,623** | Node graph for Flux, SDXL, Wan, LTX, AnimateDiff, upscalers | Self-host workflows; bot triggers via API/MCP; ships workflow JSONs in `creative/comfy/` | GPL-3.0; heavy GPU |
| A2 | **FLUX.1 (BFL)** | https://github.com/black-forest-labs/flux | **26,036** | SOTA open image gen | Local or via fal/Replicate/HF; skill wraps prompt→image | Apache-2.0 (code); check model card for weights |
| A3 | **Wan2.1** | https://github.com/Wan-Video/Wan2.1 | **17,290** | Open T2V/I2V; 1.3B fits ~8GB VRAM | Local video; or fal Wan free sandbox (5/day) | Apache-2.0 |
| A4 | **HunyuanVideo** | https://github.com/Tencent-Hunyuan/HunyuanVideo | **12,663** | Large open video foundation | Comfy wrappers / HunyuanVideoGP for low VRAM | Custom (“Other”); read LICENSE |
| A5 | **LTX-Video** | https://github.com/Lightricks/LTX-Video | **11,169** | Fast open video; Comfy native | Short social clips; pair with ComfyUI-LTXVideo (4,210★) | Apache-2.0 (main); Comfy addon Other |
| A6 | **FramePack** | https://github.com/lllyasviel/FramePack | **17,319** | Practical long video diffusion | Extend clips without insane VRAM | Apache-2.0 |
| A7 | **AnimateDiff** | https://github.com/guoyww/AnimateDiff | **12,277** | Animate stills / motion modules | Stills→motion in Comfy pipelines | Apache-2.0 |
| A8 | **Audiocraft / MusicGen** | https://github.com/facebookresearch/audiocraft | **23,755** | Text→music (self-host) | Background scores; melody conditioning | MIT code; **weights CC-BY-NC** — non-commercial |
| A9 | **Stable Audio Tools** | https://github.com/Stability-AI/stable-audio-tools | **3,891** | Conditional audio gen | Local SFX/music loops; Audio Studio MCP pattern | MIT code; Stability Community License on weights |
| A10 | **Riffusion hobby** | https://github.com/riffusion/riffusion-hobby | **3,899** | Spectrogram music diffusion | Fun realtime music demos | MIT; unmaintained — toy only |
| A11 | **Bark** | https://github.com/suno-ai/bark | **39,277** | Generative audio / speech effects | Voice-ish clips, sound design | MIT |
| A12 | **Whisper + whisper.cpp** | https://github.com/openai/whisper (111,201★) · https://github.com/ggml-org/whisper.cpp (54,632★) | — | STT / subtitles | Transcribe user audio → subtitles → FFmpeg burn-in | MIT |
| A13 | **Chatterbox TTS** | https://github.com/resemble-ai/chatterbox | **27,199** | Strong open TTS | Local narration without ElevenLabs | MIT |
| A14 | **OpenVoice** | https://github.com/myshell-ai/OpenVoice | **38,062** | Instant voice clone | Character voices (ethics: consent only) | MIT |
| A15 | **Fish Speech** | https://github.com/fishaudio/fish-speech | **33,393** | SOTA open TTS | Multilingual narration | Check repo license (NOASSERTION) |
| A16 | **Piper** | https://github.com/rhasspy/piper | **11,307** | Fast local TTS | Low-latency bot voice replies | MIT |
| A17 | **LivePortrait** | https://github.com/KlingAIResearch/LivePortrait | **19,306** | Portrait animation | Talking-head from still + audio | Custom license |
| A18 | **LatentSync** | https://github.com/bytedance/LatentSync | **6,188** | Lip sync | Sync lips to TTS for avatar videos | Apache-2.0 |
| A19 | **Real-ESRGAN** | https://github.com/xinntao/Real-ESRGAN | **37,208** | Upscale images/video frames | Post-process creative outputs | BSD-3-Clause |
| A20 | **ControlNet** | https://github.com/lllyasviel/ControlNet | **34,131** | Pose/depth/canny control | Consistent characters / layout | Apache-2.0 |
| A21 | **InvokeAI** | https://github.com/invoke-ai/InvokeAI | **28,851** | Polished creative SD engine | Alternative to A1111 with cleaner API | Apache-2.0 |
| A22 | **diffusers** | https://github.com/huggingface/diffusers | **34,794** | Unified Python image/video/audio diffusion | Scripted pipelines in skills | Apache-2.0 |
| A23 | **Pollinations** | https://github.com/pollinations/pollinations | **5,239** | **No-key** classic image URL API | Instant images: `https://image.pollinations.ai/prompt/{encoded}` | MIT; rate-limited; logo unless keyed |
| A24 | **FFmpeg** | https://github.com/FFmpeg/FFmpeg | **65,678** | Edit/concat/subtitle/encode | Glue all media skills | LGPL/GPL components — check build |
| A25 | **fal platform + MCP** | https://github.com/fal-ai/fal (973★) · MCP `https://mcp.fal.ai/mcp-relay` | — | Hosted Flux/Wan/video/audio; **official Grok Bot plugin** | OAuth MCP — search models, price, run; sandbox free video quotas | Apache-2.0 SDK; prepaid credits for API |
| A26 | **ElevenLabs MCP** | https://github.com/elevenlabs/elevenlabs-mcp (1,538★) · hosted https://elevenlabs.io/mcp | — | TTS, SFX, music, creative agents | Prefer **hosted** MCP (GitHub SDK path deprecated) | MIT SDK; free ~10k credits/mo |
| A27 | **ComfyUI-WanVideoWrapper** | https://github.com/kijai/ComfyUI-WanVideoWrapper | **6,743** | Best-in-class Wan in Comfy | Production Wan workflows | Apache-2.0 |

### B — Agent power (frameworks / MCP / research / browser)

| Rank | Name | URL | Stars | Unlocks | How Boss Man uses it | License / caveats |
|------|------|-----|-------|---------|----------------------|-------------------|
| B1 | **browser-use** | https://github.com/browser-use/browser-use | **119,057** | Autonomous browser agents | Web research, form fills (with vault/sign-in skills) | MIT |
| B2 | **awesome-mcp-servers** | https://github.com/punkpeye/awesome-mcp-servers | **96,831** | Catalog of MCP servers | Discovery index for new connectors | MIT |
| B3 | **MCP official servers** | https://github.com/modelcontextprotocol/servers | **91,543** | Reference MCP implementations | Patterns + filesystem/fetch baselines | Mixed |
| B4 | **OpenHands** | https://github.com/OpenHands/OpenHands | **91,747** | Full coding agent | Patterns for multi-step coding fleets | MIT |
| B5 | **AutoGPT** | https://github.com/Significant-Gravitas/AutoGPT | **187,729** | Classic autonomous agent stack | Ideas for goal loops — don’t clone blindly | Custom |
| B6 | **LangGraph** | https://github.com/langchain-ai/langgraph | **43,834** | Resilient agent graphs | Multi-skill orchestration patterns | MIT |
| B7 | **CrewAI** | https://github.com/crewAIInc/crewAI | **60,071** | Role-playing agent crews | Director / editor / researcher crew for media | MIT |
| B8 | **LiteLLM** | https://github.com/BerriAI/litellm | **61,978** | One gateway → 100+ LLMs | Route Groq/OpenRouter/Gemini free tiers | Check license |
| B9 | **DSPy** | https://github.com/stanfordnlp/dspy | **38,771** | Programmatic prompting | Optimize creative prompt chains | MIT |
| B10 | **GPT-Researcher** | https://github.com/assafelovic/gpt-researcher | **30,284** | Deep research agent | Briefs before creative production | Apache-2.0 |
| B11 | **mcp-agent** | https://github.com/lastmile-ai/mcp-agent | **8,570** | MCP-native agent patterns | Compose MCP tools into workflows | Apache-2.0 |
| B12 | **FastMCP** | https://github.com/PrefectHQ/fastmcp | **28,193** | Fast Python MCP server kit | Build custom creative MCP wrappers | Apache-2.0 |
| B13 | **OpenAI Agents Python** | https://github.com/openai/openai-agents-python | **30,261** | Lightweight multi-agent | Swarm patterns for media pipeline | MIT |
| B14 | **Firecrawl** | https://github.com/firecrawl/firecrawl | **195,010** | Web→structured data for agents | Research / brief ingestion | AGPL-3.0 |
| B15 | **Stagehand** | https://github.com/browserbase/stagehand | **25,803** | Browser SDK for agents | Alternative to browser-use | MIT |
| B16 | **LibreChat** | https://github.com/LibreChat-AI/LibreChat | **46,258** | Chat UI with Agents + MCP + Skills | Reference UX for multi-MCP bots | MIT |
| B17 | **Aider / Cline / Continue** | aider 49,739★ · cline 70,825★ · continue 36,313★ | — | Coding agent patterns | Skills inspiration for repo work | Apache-2.0 |
| B18 | **MarkItDown** | https://github.com/microsoft/markitdown | **191,973** | Docs→Markdown | Ingest PDFs/Office into briefs | MIT |
| B19 | **xai-sdk-python** | https://github.com/xai-org/xai-sdk-python | **590** | Official xAI API SDK | Direct Grok API when prepaid | Apache-2.0; **no free API tier** |
| B20 | **grok-1** | https://github.com/xai-org/grok-1 | **52,214** | Open Grok weights release | Historical/research; not production chat | Apache-2.0 |

### C — Free APIs / freemium / self-host (keys via signup only)

| Rank | Service | Signup / docs | Free what | Env vars | Caveats |
|------|---------|---------------|-----------|----------|---------|
| C1 | **Pollinations Classic** | https://github.com/pollinations/pollinations · `image.pollinations.ai` | **No key** text→image URL | none (optional keyed `gen.pollinations.ai`) | IP rate limit (~45s); watermark unless keyed |
| C2 | **fal sandbox** | https://fal.ai · free Flux/Wan video pages | 5× FLUX 3 Max T2V + 5× Wan 3 T2V / 24h (signed-in); signed-out FLUX.2 Klein images | `FAL_KEY` for API; MCP uses **OAuth** (no key in chat) | Card to activate account; free videos not charged; API is prepaid |
| C3 | **fal MCP (Grok Bot official path)** | https://mcp.fal.ai/mcp-relay · docs https://fal.ai/docs/documentation/setting-up/mcp | MCP free; pay for generations | OAuth — do not paste tokens | Explicitly lists **Grok Bot** as client |
| C4 | **Replicate Try-for-Free** | https://replicate.com/collections/try-for-free · MCP https://mcp.replicate.com/sse | Limited free runs after account | `REPLICATE_API_TOKEN` | Not forever-free; licenses per model |
| C5 | **Hugging Face Inference Providers** | https://huggingface.co/docs/inference-providers | ~$0.10/mo free credits; gateway to Replicate etc. | `HF_TOKEN` (fine-grained: Inference Providers) | Cold starts; pay after credits |
| C6 | **OpenRouter `:free`** | https://openrouter.ai/docs/api_reference/limits | 20 RPM / **50 req/day** free models (`:free`); 1000/day after $10 lifetime | `OPENROUTER_API_KEY` | Failed attempts count; catalog rotates |
| C7 | **Groq free** | https://console.groq.com · rate limits docs | Per-model free (e.g. gpt-oss-120b: 30 RPM, 1K RPD, 200K TPD) | `GROQ_API_KEY` | Fast LPUs; no card for free tier per billing FAQ |
| C8 | **Google AI Studio Gemini** | https://aistudio.google.com | Generous free Gemini/Flash | `GEMINI_API_KEY` or `GOOGLE_API_KEY` | Free-tier data may train; quota by account age |
| C9 | **Cloudflare Workers AI** | https://developers.cloudflare.com/workers-ai/platform/pricing/ | **10,000 Neurons/day** (Whisper, FLUX, LLMs) | `CLOUDFLARE_API_TOKEN` + `CLOUDFLARE_ACCOUNT_ID` | Resets 00:00 UTC; hard stop when exhausted |
| C10 | **ElevenLabs Free** | https://elevenlabs.io/pricing · API keys in dashboard | ~**10,000 credits/month**; no card | `ELEVENLABS_API_KEY` | Credits don’t roll; commercial limits on free |
| C11 | **Fireworks** | https://docs.fireworks.ai | Trial credits; 10 RPM without payment | `FIREWORKS_API_KEY` | Not a permanent free tier |
| C12 | **Together AI** | billing docs | **No free trial**; min ~$15 credit | `TOGETHER_API_KEY` | Paid entry only — skip for $0 stack |
| C13 | **xAI Grok API** | https://x.ai/pricing | **No free API**; prepaid | `XAI_API_KEY` | Use Grok Bot product + OpenRouter/Groq for free LLM |
| C14 | **Self-host stack** | ComfyUI + Wan/Flux + MusicGen + Whisper.cpp + Piper + FFmpeg | Unlimited after hardware | none | GPU/disk cost; NC weights (MusicGen) |

#### `.env.example` (placeholders only — never commit real keys)

```bash
# EXAMPLE_ONLY — replace with your own keys from the signup URLs above
# FAL_KEY=fal_xxxxxxxx_EXAMPLE_ONLY
# REPLICATE_API_TOKEN=r8_xxxxxxxx_EXAMPLE_ONLY
# HF_TOKEN=hf_xxxxxxxx_EXAMPLE_ONLY
# OPENROUTER_API_KEY=sk-or-xxxxxxxx_EXAMPLE_ONLY
# GROQ_API_KEY=gsk_xxxxxxxx_EXAMPLE_ONLY
# GEMINI_API_KEY=AIzaxxxxxxxx_EXAMPLE_ONLY
# ELEVENLABS_API_KEY=sk_xxxxxxxx_EXAMPLE_ONLY
# CLOUDFLARE_API_TOKEN=xxxxxxxx_EXAMPLE_ONLY
# CLOUDFLARE_ACCOUNT_ID=xxxxxxxx_EXAMPLE_ONLY
# XAI_API_KEY=xai-xxxxxxxx_EXAMPLE_ONLY   # paid only
# POLLINATIONS_API_KEY=                   # optional; classic endpoint needs none
```

---

## 2) Proposed meta-repo: `warpfusion001/boss-man-godmode`

### README outline

1. **Mission** — Boss Man: coding + creative god-mode Grok Bot  
2. **Preserve list** — link existing shortlist  
3. **Power tiers** — A creative / B agent / C free APIs  
4. **Quick start** — clone, copy `.env.example`, connect fal MCP + Chrome DevTools MCP  
5. **Install into live bot** — top-8 skills (below)  
6. **Creative pipelines** — Image → Animate → Voiceover → Subtitle → Mux  
7. **Safety** — consent for voice clone; NC licenses; no secret commits  
8. **Credits** — upstream licenses table  

### Folder skeleton

```text
boss-man-godmode/
├── README.md
├── LICENSE                    # MIT for our glue; upstream NOTICE
├── .env.example               # placeholders only
├── .gitignore                 # .env, keys, outputs/
├── NOTICE.md                  # third-party licenses
├── docs/
│   ├── SHORTLIST.md           # existing 10 + this pack
│   ├── FREE_APIS.md           # C-section signup map
│   ├── PIPELINES.md           # image/video/music recipes
│   └── META_ARCHITECTURE.md
├── skills/                    # Grok/Cursor skill copies (vendored excerpts)
│   ├── creative-image/
│   ├── creative-video/
│   ├── creative-music/
│   ├── creative-voice/
│   ├── media-ffmpeg/
│   ├── research-brief/
│   ├── mcp-fal/
│   └── free-llm-router/
├── mcp/
│   ├── README.md              # connect URLs (fal, ElevenLabs, Replicate, Chrome DevTools)
│   └── local/                 # FastMCP wrappers we author (thin)
├── creative/
│   ├── comfy/workflows/       # JSON workflows (Wan, Flux, AnimateDiff)
│   ├── prompts/               # shot lists, music prompts, brand kit
│   └── ffmpeg/                # mux/subtitle scripts
├── integrations/
│   ├── awesome-links.md       # curated URLs (not full clones)
│   └── SUBMODULES.md          # which remotes to submodule
├── routines/                  # Grok Bot routines YAML/MD
│   ├── daily-creative-warmup.md
│   └── ship-short-form-video.md
└── scripts/
    ├── verify_github_stars.py
    └── smoke_pollinations.sh  # no-key image smoke test
```

### Vendor strategy

| Piece | Method | Why |
|-------|--------|-----|
| awesome-grok-bot, plugin-marketplace, playbooks, templates | **Link** in SHORTLIST.md | Catalogs change fast; don’t fork noise |
| obra/superpowers, grok-bot-profiles, selected playbooks | **Skill copy** (trimmed) into `skills/` | Need offline bot behavior |
| ComfyUI workflows we author | **Copy** JSON into `creative/comfy/` | Small, ours |
| Wan2.1 / LTX / Flux / Audiocraft | **Submodule optional** or docs-only | Huge; prefer “install from upstream” |
| fal / ElevenLabs / Replicate / Chrome DevTools | **MCP URLs** in `mcp/README.md` | Hosted — no vendor |
| Pollinations smoke + FFmpeg scripts | **Copy** into `scripts/` + `creative/ffmpeg/` | Tiny, high leverage |
| browser-use / LangGraph / LiteLLM | **Link + thin skill** | Patterns, not full monorepo |

---

## 3) Top 8 skills/routines to install into the live bot FIRST

1. **`mcp-fal`** — Connect `https://mcp.fal.ai/mcp-relay` (OAuth). Search → price → approve → generate image/video/audio. Highest leverage creative unlock; official Grok Bot path.  
2. **`creative-image-pollinations`** — Zero-key fallback: Pollinations URL fetch → save to box → optional upscale. Works before any paid signup.  
3. **`creative-video-pipeline`** — Brief → still (Flux/Pollinations) → Wan/LTX/fal video → Real-ESRGAN frames if needed → FFmpeg mux.  
4. **`creative-voice-eleven-or-local`** — Prefer ElevenLabs free tier TTS; fallback Piper/Chatterbox local. Never clone a voice without consent.  
5. **`creative-music-bed`** — MusicGen / Stable Audio / fal audio model for beds; loudness normalize; loop. Flag NC licenses.  
6. **`media-ffmpeg-suite`** — Concat, aspect (9:16), burn Whisper subtitles, duck music under VO, export social presets.  
7. **`free-llm-router`** — LiteLLM-style routing: Groq → OpenRouter `:free` → Gemini free → (paid) xAI. For planning/prompts without burning Grok API $.  
8. **`research-brief-gpt-researcher-lite`** — Short research→creative brief routine before any generation (saves credits).

**Routines to add alongside:** `ship-short-form-video` (hook→A-roll→B-roll→VO→captions→export), `daily-creative-warmup` (1 Pollinations + 1 fal sandbox video if quota left).

---

## 4) Executive summary — top 12 NEW finds

| # | Find | Why it makes Boss Man a god-mode bot |
|---|------|--------------------------------------|
| 1 | **fal MCP** (`mcp.fal.ai`) | Official Grok Bot creative MCP — image/video/audio with OAuth; sandbox free daily videos |
| 2 | **ComfyUI** (142k★) | Self-host everything: Flux, Wan, LTX, AnimateDiff, ControlNet |
| 3 | **Wan2.1** (17k★) | Best open video stack; consumer GPU path + fal hosted |
| 4 | **FLUX** (26k★) | Best open image quality; everywhere (local/fal/HF/CF) |
| 5 | **Pollinations** (no key) | Instant images with zero signup — creative always-on |
| 6 | **browser-use** (119k★) | Web-agent muscle beyond Chrome DevTools alone |
| 7 | **Audiocraft/MusicGen** (23k★) | Self-host music beds (NC weights — label clearly) |
| 8 | **ElevenLabs free + MCP** | Pro TTS/SFX with ~10k credits/mo + hosted MCP |
| 9 | **Whisper.cpp** (54k★) | Local captions for every video skill |
| 10 | **OpenRouter `:free` + Groq free** | Free LLM planning layer so creative ops don’t burn paid Grok API |
| 11 | **FramePack + LTX-Video** | Practical longer / faster open video |
| 12 | **LiteLLM + FastMCP** | Glue: route models + ship custom creative MCP wrappers |

### Meta-repo skeleton (one-liner)

`warpfusion001/boss-man-godmode` → `skills/` · `mcp/` · `creative/` · `integrations/` · `.env.example` · docs for free APIs · submodule-or-link policy above · install top-8 skills first → then publish.

### Immediate next actions (for parent / user)

1. Confirm create **`boss-man-godmode`** under `@warpfusion001` (public).  
2. Connect **fal** plugin/MCP in Grok Bot (browser OAuth).  
3. Signup keys into vault/env: Groq, OpenRouter, Gemini, HF (optional ElevenLabs, fal API).  
4. Install top-8 skills; run Pollinations smoke (no key) + one fal sandbox video.

---

*Generated for Richard Drinkwater / Boss Man · stars verified Oct 25, 2026 Europe/London · no real API keys included.*
