---
name: creative-voice
description: >-
  Text-to-speech for narration and voice notes. Prefer ElevenLabs free tier or
  hosted MCP; fall back to local Piper/Chatterbox. Never clone a real person's
  voice without explicit consent.
---

# Creative voice (TTS)

## Preference order

1. **ElevenLabs hosted MCP** — https://elevenlabs.io/mcp (OAuth / account; ~10k free credits/mo).
2. **ElevenLabs API** — `ELEVENLABS_API_KEY` from vault (signup: https://elevenlabs.io/pricing).
3. **Local** — Piper (fast) or Chatterbox / Fish Speech if installed on the box.
4. **Built-in Grok Bot voice** — when the product voice memo path fits and no custom timbre is needed.

## Steps

1. **Script** — get or draft the spoken text; confirm language and tone.
2. **Consent check** — if the request is to sound like a specific real person, refuse cloning unless the owner confirms they have that person’s consent (or it is their own voice with a saved consented sample).
3. **Pick path** — MCP → API key → local. If none available, say what to connect and stop.
4. **Generate** — write audio to `/workspace/outputs/voice/<stamp>.mp3` or `.wav`.
5. **QC** — listen/check duration; trim silence with FFmpeg if needed (`media-ffmpeg-suite`).
6. **Report** — path, provider, estimated credits remaining if known.

## Never

- Paste API keys into chat or commit them.
- Use OpenVoice/instant-clone on third parties without consent.
- Claim commercial clearance on free-tier output without checking provider ToS.

## Refs

- ElevenLabs MCP repo (SDK path deprecated for agents): https://github.com/elevenlabs/elevenlabs-mcp
- Piper: https://github.com/rhasspy/piper
- Chatterbox: https://github.com/resemble-ai/chatterbox
