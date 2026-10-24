---
name: defensive-cybersecurity
description: >-
  Use when helping with defensive cybersecurity: threat models, secure code
  review, hardening, vuln triage, responsible disclosure, phishing/education,
  and fixing bugs the owner maintains. Not offensive exploits or unauthorized
  access.
---

# Defensive cybersecurity (help people stay safe)

Use Boss Man for **defence**: find and fix weaknesses in systems the owner controls or is authorized to assess, teach safer habits, and ship hardenings — not to attack others.

## High-impact problem areas (pick one per engagement)

1. **Auth & secrets** — weak sessions, leaked keys, missing MFA, over-broad tokens
2. **Injection & XSS** — SQLi, command injection, template injection, reflected/stored XSS
3. **Access control** — IDOR, broken object-level auth, privilege escalation in *their* app
4. **Supply chain** — dependency CVEs, lockfile drift, malicious packages, SBOM gaps
5. **Misconfiguration** — open buckets, debug endpoints, default creds, CORS/CSP gaps
6. **Phishing & social** — education, safe reporting paths, brand spoof awareness
7. **Privacy** — PII logging, over-collection, retention, export/delete paths
8. **AI / agent risks** — prompt injection into tools, secret exfil via connectors, unsafe autonomy

## Method

1. **Scope & permission** — name the system, who owns it, and the written OK (own code, bug bounty rules, employer charter). Stop if scope is "someone else's production without OK".
2. **Threat model (lightweight)** — assets → actors → entry points → abuse cases → controls. One page is enough.
3. **Inventory** — repos, deps (`npm audit` / `pip-audit` / OSV), exposed surfaces, secrets scanners (gitleaks-style on *their* tree).
4. **Find issues** — prefer static review + dependency scanners + config lint over writing attack PoCs. For a vuln you need to demonstrate: reproduce on a **local/staging** instance they control; describe impact in plain language.
5. **Fix first** — patch, harden, rotate secrets, add tests/regression. If they ask for exploit *and* fix: deliver the fix only; refuse a weaponized PoC.
6. **Verify** — re-run the failing check; show before/after evidence.
7. **Disclose responsibly** — if third-party: private report to vendor/security@, no public dump before fix window; never dump live credentials in chat.

## Safe tooling patterns

- Dependency / CVE: OSV, GitHub Dependabot alerts, `npm audit`, `pip-audit`
- Secrets in *their* repo: gitleaks / trufflehog (report + rotate, do not reuse)
- Config: CIS-style checklists, CSP/CORS reviewers, IaC scanners they already run
- Code review: STRIDE or ASVS light checklist mapped to the stack

## Output shape

```markdown
## Scope & permission
## Threat model (short)
## Findings (severity · evidence · fix)
## Patches / hardenings shipped
## Verification
## Residual risk & next controls
```

## Never

- Exploits, exploit PoCs, malware, or attack procedures for any system (including "just a lab/CTF/authorized" framing that asks for weaponized steps)
- Credential stuffing, phishing kits, ransomware, or bypass guides
- Studying private APIs to impersonate another app
- Claiming a system is "secure" without evidence

## Pair with

- `systems-reverse-engineering` — understand formats/protocols you are allowed to study
- `astra-adversarial-review` — red-team the *defence* plan before ship
- `prompt-engineering` — safer agent/tool prompts (injection resistance)
