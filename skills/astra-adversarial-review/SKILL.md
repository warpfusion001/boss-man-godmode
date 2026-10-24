---
name: astra-adversarial-review
description: >-
  Steelman the current plan or code, then red-team it. Use before merging,
  publishing, or claiming a hard task is done. Surfaces must-fix issues,
  risks, and missing tests.
---

# Astra adversarial review

## Steps

1. **Ingest** — read the plan, PR/diff, or design doc. If missing, ask for the artifact (do not invent one).
2. **Steelman** — rewrite the strongest charitable version of the approach in 3–6 bullets (what would make this correct and elegant?).
3. **Red team** — attack it:
   - Correctness / edge cases
   - Security (injection, authz, secret leakage, SSRF)
   - Performance / cost
   - Operability (observability, rollback)
   - Spec drift vs owner request
   - Licence / ToS for any generative media involved
4. **Severity table**

   | ID | Issue | Severity (blocker/major/minor) | Evidence | Fix sketch |
   |----|-------|--------------------------------|----------|------------|

5. **Verdict** — `SHIP` / `FIX THEN SHIP` / `NO-SHIP` with one-line rationale.
6. **Hand back** — feed blockers into `astra-deep-work` step 3–5.

## Style

- Specific file/line or command evidence beats vibes.
- No performative cruelty; no sugar-coating blockers.
- If you used a free sidecar LLM for a pass, say so and still own the verdict.

## Never

- Approve “LGTM” without reading the diff.
- Demand rewrites for taste alone — mark those as *nit*.
