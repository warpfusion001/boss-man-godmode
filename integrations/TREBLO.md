# Treblo (formerly Sonauto) — music for the movie studio

- Site: https://treblo.com (consumer: free unlimited song gen — formerly Sonauto)
- Developers: https://treblo.com/developers · Docs: https://treblo.com/developers/docs
- API base: `https://api.treblo.com/v1` · Streaming (optional): `api-stream.treblo.com`

## Free web vs paid API (be honest)

- **Free:** the consumer web app at treblo.com (signed in on the box browser). Unlimited song generation.
- **Paid:** the Melodia API. **Every v3 request costs 100 API credits.** API ≠ free consumer web.
- Check balance first: `GET /credits/balance` → `num_credits`, `num_credits_payg`.

## Connection

- Key: `/home/box/.treblo_api_key` or `process.env.TREBLO_API_KEY` (same convention as other keys).
- Header: `Authorization: Bearer $TREBLO_API_KEY`
- No key in repo. `.env.example` has a placeholder only.

## curl flow

```bash
export TREBLO_API_KEY="${TREBLO_API_KEY:-$(cat /home/box/.treblo_api_key)}"
B=https://api.treblo.com/v1; H="Authorization: Bearer $TREBLO_API_KEY"

curl -s -H "$H" $B/credits/balance          # need >= 100 credits per v3 request

TASK=$(curl -s -X POST -H "$H" -H 'Content-Type: application/json' \
  -d '{"prompt":"upbeat synthwave anthem about night driving"}' \
  $B/generations/v3 | jq -r .task_id)

curl -s -H "$H" $B/generations/status/$TASK   # poll until done

URL=$(curl -s -H "$H" $B/generations/$TASK | jq -r '.song_paths[0]')
mkdir -p /workspace/outputs/music/treblo && curl -sL "$URL" -o /workspace/outputs/music/treblo/$TASK.mp3
```

- Prefer `{"prompt": "..."}` only. `output_format`: prefer **mp3** for video mux (check docs for exact field).
- **Download `song_paths` ASAP — URLs expire ~1 week.**

## Movie-studio role

Preferred source for music-video audio, full songs and beds (`skills/creative-music-treblo`). The job card `audio` field can point at `/workspace/outputs/music/treblo/<id>.mp3`.

## Never

- Commit the key or paste it in chat.
- Leave outputs as remote URLs only — download before expiry.
- Spend API credits beyond balance / ceiling without owner yes.
- Assume commercial rights — follow treblo.com terms.
