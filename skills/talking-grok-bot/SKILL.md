---
name: talking-grok-bot
description: >-
  Use when building or wiring a talking Grok Bot / voice mode: realtime
  speech-to-speech, read-aloud TTS, dictation STT, or debugging voice sessions —
  prefer free Grok Voice plugin skills.
---
# Talking Grok Bot (voice)

## Prefer (free with Grok)
Installed **Grok Voice** plugin skills — use these first:
- `add-voice` — realtime speech-to-speech Voice Mode in an app
- `add-read-aloud` — TTS read-aloud on replies
- `add-dictation` — mic → speech-to-text into a field
- `debug-voice` — capture/fix voice session issues

Also use Cursor-managed `voice` skill when the owner asks for a **voice memo** in this chat (`voice_memo: true`).

## Optional paid/extra
- ElevenLabs plugin (already installed; needs auth) for custom voices / agents — only when owner asks or Grok Voice can’t cover it
- Pack note: `integrations/TALKING_GROK.md`

## Build a talking bot product
1. Clarify surface: in-chat memos vs embedded app Voice Mode vs phone call agent.
2. For **apps**: follow Grok Voice `add-voice` (realtime), not a fragile STT→LLM→TTS cascade unless required.
3. For **this chat**: load `voice` skill and send spoken answer as voice memo.
4. Keep send/publish/spend behind owner yes.

## Never
- Never bill ElevenLabs/Cloud voice without owner yes
- Never record or exfiltrate voice without consent
