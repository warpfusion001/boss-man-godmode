# Defensive cyber — problems Boss Man can help with

Framed for **research and protection**, not offence. Pair with skills
`defensive-cybersecurity`, `systems-reverse-engineering`, `prompt-engineering`.

## Where people need help most (2020s)

| Problem | Who hurts | How this pack helps |
|---------|-----------|---------------------|
| Stolen / leaked API keys & tokens | Devs, startups, open-source | Secrets scan on *their* repos; rotate playbooks; vault habits |
| Phishing & account takeover | Everyone | Education drafts; MFA/checklists; no kit-building |
| Broken authz (IDOR) in web apps | Product users | Secure code review + fix PRs on *owned* code |
| Dependency / supply-chain CVEs | Every npm/pip/cargo shop | Audit → patch → SBOM notes |
| Cloud misconfig (open storage, debug) | SMEs | Config review + harden steps |
| Ransomware / malware *defence* | Orgs, families | Hardening, backup verify, incident *response* checklists — not ransomware construction |
| AI agent tool abuse / prompt injection | Bot owners | Safer skill prompts; least-privilege connectors |
| Abandoned file formats / IoT protocols | Researchers, museums, patients with old devices | Legitimate RE for interoperability (`systems-reverse-engineering`) |
| Responsible disclosure friction | Independent researchers | Structured private report templates |

## Engagement rules (hard)

1. Own system, written authorization, or public bug-bounty *rules of engagement* — else stop.
2. Prefer **fix over PoC**. Never ship weaponized exploits.
3. No DRM cracks, auth bypass kits, or credential theft tooling.
4. Publish research that raises the waterline (advisories, patches, education) — after fix windows when third parties are involved.

## Suggested first missions (when Richard is ready)

1. Secrets + Dependabot sweep on `@warpfusion001` repos he names.
2. Threat model + ASVS-light review of one live product he owns.
3. Agent-hardening pass on Boss Man itself (connector least privilege, prompt-injection notes).
4. Public education piece: “how bots should handle secrets” (no exploit recipes).
