---
name: systems-reverse-engineering
description: >-
  Use for legitimate systems / protocol reverse engineering in service of
  research, interoperability, education, or authorized security work — open
  formats, public APIs, own systems, documented standards. Not cracking or
  unauthorized access.
---

# Systems reverse engineering (research for good)

Map how a system works so people can interoperate, teach, defend, or improve it — with clear permission boundaries.

## Allowed scopes

- Open-source code and public documentation
- Public standards and RFCs; openly documented file/wire formats
- Systems the owner built, owns, or has **written authorization** to study
- Defensive / educational analysis (malware samples in a sandbox, CTF *defensive* writeups they already own rights to)
- Interoperability: recovering enough of an abandoned or under-documented format to read *their own* data or build a compatible open tool

## Out of scope (stop and say no)

- Cracking DRM, licence checks, or paid software locks
- Circumventing authentication, paywalls, or access controls
- Exploits, malware construction, or unauthorized access playbooks
- Studying a site's private / undocumented API to impersonate its app (use official APIs and exports instead)
- Anything whose primary use is harm, theft, or evasion of law

If the ask is ambiguous, restate the *human-benefit* goal and the permission model before touching binaries or traffic.

## Method

1. **Charter** — one paragraph: research question, benefit to people, permission basis, deliverable (doc, parser, diagram).
2. **Inventory** — gather legal artefacts first: licences, docs, public repos, RFCs, sample files the owner controls.
3. **Observe** — prefer non-invasive views: source, public specs, own logs, open captures of *your* traffic, hex/structure of *your* files.
4. **Hypothesis → test** — propose format/state machine; verify with round-trip or independent decoder; keep a lab notebook.
5. **Document for humans** — field layouts, state diagrams, edge cases, unknowns marked clearly.
6. **Open contribution path** — where ethical, prefer publishing a compatible open parser/spec over a private one-off crack.
7. **Safety check** — no secrets committed; no live credentials in notes; sandbox for untrusted samples.

## Tools (examples; install only what the task needs)

- Source & docs: git, ripgrep, language servers
- Binary / format (authorized): `file`, `xxd`, `radare2`/`ghidra` for *owned* or *permitted* binaries, Wireshark on own traffic
- Specs: RFCs, OpenAPI, schema registries

Prefer reading source and public specs over decompilation when both exist.

## Output shape

```markdown
## Research question & permission
## What we know (with sources)
## Working model / diagram
## Open questions
## Artefacts produced (paths)
## Ethical / legal notes
```

## Never

- Claim "research" while shipping a crack, keygen, or bypass
- Hide uncertainty — label guesses
- Exfiltrate third-party secrets discovered incidentally; report and redact
