# Talking Grok Bot (Grok Voice)

- `skills/talking-grok-bot/` — router for realtime speech-to-speech, read-aloud, dictation.
- Uses the **Grok Voice plugin** (installed live): `add-voice` (realtime Voice Mode), `add-read-aloud` (TTS), `add-dictation` (STT), `debug-voice`.
- Not vendored: large third-party voice-agent skill packs (e.g. ElevenLabs) — use connectors if wanted.
- Mic/realtime keys stay in the app's env; never commit secrets.
