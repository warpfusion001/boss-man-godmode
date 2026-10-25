# Job: {{id}}

## Meta

| Field | Value |
|-------|-------|
| id | {{id}} |
| genre | music-video \| explainer \| narrative |
| length_s | |
| aspect | 9:16 \| 16:9 \| 1:1 |
| status | draft \| approved \| handed-off \| done \| failed |
| created | YYYY-MM-DD |
| owner_yes | no |

## Brief

- Hook:
- Style:
- Platform:
- Notes:

## Audio

| Field | Value |
|-------|-------|
| audio | path/URL or `none` |
| lyrics | path, inline, or `n/a` |

## Shot list

1. Beat / lyric → visual
2.

## Engine

| Field | Value |
|-------|-------|
| primary | json2video \| hailuo-pixeldojo \| remotion \| ffmpeg |
| fallback | |
| models | |
| why | |

## Cost

| Field | Value |
|-------|-------|
| estimate | free path / N credits |
| ceiling | do not exceed without re-ask |
| path | sandbox \| free \| paid |

## Output

- `output_dir`: `/workspace/outputs/video/{{id}}/`
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
