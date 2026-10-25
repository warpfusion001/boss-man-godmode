#!/usr/bin/env bash
# Validate a movie-studio job card has required section headings.
set -euo pipefail
file="${1:-}"
if [[ -z "$file" || ! -f "$file" ]]; then
  echo "usage: $0 path/to/job.md" >&2
  exit 2
fi
required=(Meta Brief Audio "Shot list" Engine Cost Output Success Never Handoff)
missing=()
for h in "${required[@]}"; do
  if ! grep -qE "^## ${h}\$" "$file"; then
    missing+=("$h")
  fi
done
if ((${#missing[@]})); then
  echo "FAIL $file — missing sections: ${missing[*]}" >&2
  exit 1
fi
echo "OK $file"
