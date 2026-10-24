#!/usr/bin/env bash
# No-key Pollinations smoke test — EXAMPLE safe; writes under outputs/
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="${ROOT}/outputs"
mkdir -p "$OUT_DIR"
PROMPT="${1:-a minimalist neon fox logo on black background}"
ENC="$(python3 -c "import urllib.parse,sys; print(urllib.parse.quote(sys.argv[1]))" "$PROMPT")"
URL="https://image.pollinations.ai/prompt/${ENC}?width=768&height=768&nologo=true"
STAMP="$(date +%Y%m%d-%H%M%S)"
OUT="${OUT_DIR}/pollinations-${STAMP}.png"
echo "Fetching: $URL"
curl -fsSL -o "$OUT" "$URL"
file "$OUT"
ls -la "$OUT"
echo "OK: $OUT"
