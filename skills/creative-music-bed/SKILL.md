---
name: creative-music-bed
description: >-
  Generate a background music bed or loop for video/voiceover. Prefer Treblo
  (creative-music-treblo), then fal audio models; else local MusicGen/Stable Audio with NC
  licence warnings. Loudness-normalise and loop-safe trim via FFmpeg.
---

# Creative music bed

## Steps

1. **Brief** — mood, BPM guess, duration, instruments to avoid, whether vocals are forbidden (default: instrumental only).
2. **Licence gate** — if using **MusicGen / Audiocraft weights**, tell the user clearly: **weights are often CC-BY-NC (non-commercial)**. For commercial ship, prefer fal/licensed stock or owner-cleared models.
3. **Generate**:
   - **Preferred:** Treblo via `creative-music-treblo` (free web; Melodia API only with key + credits).
   - **Next:** fal MCP audio/music model (search → price → approve).
   - **Alt:** Stable Audio Tools / MusicGen if installed locally.
   - **Toy only:** Riffusion hobby — demos, not production.
4. **Save** to `/workspace/outputs/music/<stamp>.wav`.
5. **Post** — normalise loudness, trim to target length, optional seamless loop (`media-ffmpeg-suite`).
6. **Duck plan** — note intended duck under VO (−8 to −12 dB typical).

## Never

- Hide NC / Commons restrictions.
- Replace a licensed track the user already owns without asking.

## Refs

- Audiocraft: https://github.com/facebookresearch/audiocraft
- Stable Audio Tools: https://github.com/Stability-AI/stable-audio-tools
- fal: https://fal.ai
