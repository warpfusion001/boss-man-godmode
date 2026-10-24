---
name: media-ffmpeg-suite
description: >-
  Edit and ship media with FFmpeg: concat, aspect (9:16/16:9), burn subtitles,
  duck music under voiceover, social export presets. Use after creative
  generation skills produce raw assets on the box.
---

# Media FFmpeg suite

Requires `ffmpeg` / `ffprobe` on the box (`sudo apt-get install -y ffmpeg` if missing).

## Common jobs

### Inspect
```bash
ffprobe -hide_banner "$IN"
```

### Scale / crop to 9:16 (1080×1920)
```bash
ffmpeg -y -i "$IN" -vf "scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920" -c:v libx264 -pix_fmt yuv420p -c:a aac "$OUT"
```

### Concat demuxer
Write `list.txt` with `file 'a.mp4'` lines (same codec), then:
```bash
ffmpeg -y -f concat -safe 0 -i list.txt -c copy "$OUT"
```

### Burn subtitles (SRT)
```bash
ffmpeg -y -i "$IN" -vf "subtitles=$SRT:force_style='FontSize=22,Outline=1'" -c:a copy "$OUT"
```

### Duck music under VO (sidechain-ish simple mix)
```bash
ffmpeg -y -i "$VO" -i "$MUSIC" -filter_complex "[1:a]volume=0.18[m];[0:a][m]amix=inputs=2:duration=first:dropout_transition=2" -c:a aac "$OUT_AUD"
```
(For true sidechain compress, use `sidechaincompress` when both tracks allow.)

### Loudness normalise (approx)
```bash
ffmpeg -y -i "$IN" -af loudnorm=I=-14:TP=-1.5:LRA=11 "$OUT"
```

## Steps

1. Confirm inputs exist; create `/workspace/outputs/export/`.
2. Choose preset: `reel-9x16`, `yt-16x9`, `square-1x1`.
3. Run the smallest FFmpeg graph that achieves the goal; avoid re-encoding twice.
4. `ffprobe` the result; report path, duration, resolution, size.
5. Ask before uploading or publishing.

## Never

- Overwrite the user’s only master without a `-export` copy.
- Ship huge uncompressed intermediates as the final deliverable.
