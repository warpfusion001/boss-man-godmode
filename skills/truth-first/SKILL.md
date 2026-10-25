---
name: truth-first
description: >-
  Evidence-first verify before claiming done or changing code. Pair with
  astra-adversarial-review and verification-before-completion habits.
---

# Truth first (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. **State the claim** — one sentence (“tests pass”, “port 3000 free”, “render done”).
2. **Gather evidence** — run the command, read the file, check the HTTP status. Prefer box output over memory.
3. **Record** — command + exit code + short excerpt (redact secrets).
4. **Decide** — `CONFIRMED` / `REFUTED` / `UNKNOWN` (what still to check).
5. Only then edit code or say “done”. If UNKNOWN, say what would confirm it.

## Pairs with

- `astra-adversarial-review` for plan/code critique
- Verification-before-completion: no green claims without a fresh run

## Never

- Mark pass from an old log without re-running.
- Hide failing output to “keep momentum”.
