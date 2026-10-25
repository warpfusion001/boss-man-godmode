---
name: truth-first
description: >-
  Evidence-first verify before claiming done or changing code. Pair with
  astra-adversarial-review and verification-before-completion habits.
---

# Truth first (Boss Man)

Original pack skill — not an Agensi vendored copy. Use before “done”, before
risky edits, and whenever a claim can be checked on the box.

## Steps

1. **State the claim** — one sentence (“tests pass”, “port 3000 free”, “render done”).
2. **Gather evidence** — run the command, read the file, check HTTP status / ffprobe. Prefer box output over memory or prior turns.
3. **Record** — command + exit code + short excerpt (redact secrets).
4. **Decide** — `CONFIRMED` / `REFUTED` / `UNKNOWN` (name what would confirm).
5. Only then edit code or say “done”. If UNKNOWN, say the next check — do not paper over it.

## Pairs with

- `astra-adversarial-review` — plan / code critique after evidence is in
- `verification-before-completion` habit — no green claims without a fresh run
- `cost-gate` — paid spend needs an estimate the owner can see, not vibes

## Output shape

```text
Claim: ...
Evidence: `$cmd` → exit N; excerpt: ...
Verdict: CONFIRMED | REFUTED | UNKNOWN
```

## Never

- Mark pass from an old log without re-running.
- Hide failing output to “keep momentum”.
- Equate “compiled” with “verified” when tests or smoke checks exist.
