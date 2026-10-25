#!/usr/bin/env bash
set -euo pipefail
DIR="${1:?usage: validate_hunt_pack.sh <hunt-dir>}"
need=(brief.md offer.md landing-draft.md paypal.md go-live.md log.md)
for f in "${need[@]}"; do
  [[ -f "$DIR/$f" ]] || { echo "MISSING $f"; exit 1; }
done
rg -q 'undercut_vs' "$DIR/offer.md" || { echo "offer.md missing undercut_vs"; exit 1; }
rg -q 'undercut_vs' "$DIR/paypal.md" || { echo "paypal.md missing undercut_vs"; exit 1; }
rg -q -i 'fee|amount' "$DIR/offer.md" || { echo "offer.md missing fee"; exit 1; }
rg -q -i 'amount' "$DIR/paypal.md" || { echo "paypal.md missing amount"; exit 1; }
echo "OK $DIR"
