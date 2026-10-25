# Job: dry-run-hello-mv

## Meta

| Field | Value |
|-------|-------|
| id | dry-run-hello-mv |
| genre | music-video |
| length_s | 30 |
| aspect | 9:16 |
| status | draft \| approved \| handed-off \| done \| failed |
| created | 2026-10-25 |
| owner_yes | no |

## Brief

- Hook:
- Style:
- Platform:
- Notes:

## Audio

| Field | Value |
|-------|-------|
| audio | /workspace/media/example-track.mp3 |
| lyrics | Hello from Boss Man / test chorus |

## Shot list

1. Intro hook → title card
2. Chorus → kinetic lyrics
3. Outro → logo hold

## Engine

| Field | Value |
|-------|-------|
| primary | json2video |
| fallback | |
| models | |
| why | Lyric timeline + text overlays; no generative burn for dry-run |

## Cost

| Field | Value |
|-------|-------|
| estimate | ~5 JSON2Video credits (dry-run; do not render) |
| ceiling | 10 credits |
| path | free |

## Output

- `output_dir`: `/workspace/outputs/video/dry-run-hello-mv/`
- Expected files: `final.mp4` (required); optional `still.png`, `vo.wav`, `captions.srt`

## Success

- [ ] `final.mp4` exists under output_dir
- [ ] Duration within ±20% of length_s
- [ ] Aspect matches Meta
- [ ] No publish / upload performed

## Never

- Publish to social / YouTube / X without named owner yes
- Voice-clone without consent of the voice owner
- Exceed cost ceiling without re-ask
- Start Video Studio before `owner_yes: yes`

## Handoff

After owner sets `owner_yes` to yes, Boss Man messages **Grok Bot Video Studio** (`b32c19ad-772e-48f8-b5fe-41c763c04025`) with:

1. Absolute path to this job card
2. `output_dir`
3. Engine + cost ceiling
4. Success criteria (copy of Success section)
5. Instruction: report paths/errors; do not publish
