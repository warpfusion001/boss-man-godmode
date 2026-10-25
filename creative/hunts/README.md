# Hunt packs

**Templates** live here (`creative/hunts/_template/`).

Each overnight-hunter run writes a dated pack under `/workspace/outputs/hunts/YYYY-MM-DD/` (or `…/YYYY-MM-DD-HHMM/` if multiple). That runtime folder is local-only (gitignored).

Required files: `brief.md`, `offer.md`, `landing-draft.md`, `paypal.md`, `go-live.md`, `log.md`.

Rules: £0 unless owner raised ceiling; undercut fee with competitor cite; draft PayPal only; no auto-publish.

Validate: `./scripts/validate_hunt_pack.sh /workspace/outputs/hunts/<date>`
