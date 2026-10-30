# Reel pipeline: research → Pixel Dojo → Hailuo web → ffmpeg

Used to build a 30s 9:16 Halloween reel (Oct 2026). Spend gated by `cost-gate`.

1. **Research** current viral formats (Exa / X search / `last30days`) → hook.
2. **Script** shot list (~5–7 shots × 5s) with a strong text model (e.g. GPT-6 Luna via Flovia).
3. **Storyboard stills** with Pixel Dojo (`pixeldojo-media`, FLUX Klein ≈0.5 credit/image, 9:16).
   Review a contact sheet; fix stills before any video spend.
4. **Hailuo web** (hailuoai.video, signed in on the box with the owner's own Pro plan) —
   Start/End Frame mode, 768p, ~5–6s clips. Credits come from the owner's web plan
   (the MiniMax API is billed separately). Download watermark-free clips.
5. **ffmpeg edit** (`media-ffmpeg-suite`): trim to 5s, scale 1080×1920, concat,
   logo overlay, burned CTA text, glitch FX on the ending, `loudnorm I=-14`.
6. **Optional voice** via ElevenLabs; **optional B-roll** via Runway (Flovia).
7. Owner approves before anything is posted.
