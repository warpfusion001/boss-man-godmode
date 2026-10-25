---
name: env-doctor
description: >-
  Diagnose why a project will not start: runtime, deps, env vars, ports,
  and common config footguns. Use on boot failures or "it won't run".
---

# Env doctor (Boss Man)

Original pack skill — not an Agensi vendored copy.

## When to use

- App / service fails to boot, install, or bind a port.
- “Missing env” / “module not found” / Docker vs host confusion.
- Owner says “it won’t run” or “fix the environment”.

## Steps

1. **Symptoms** — capture exact command + stderr. Do not guess past the first hard error.
2. **Runtime** — versions (`node -v`, `python --version`, `java -version`, etc.) vs README / engines field / Dockerfile.
3. **Deps** — lockfile present? clean install? native build tools (gcc, python headers) missing?
4. **Env** — compare required names to `.env.example` / docs. Report **names only**; never print secret values. Note which are set vs empty.
5. **Ports / processes** — conflicts, bind address (`0.0.0.0` vs localhost), Docker published ports vs host.
6. **Verdict table** — issue → likely cause → fix sketch → severity (`blocker` / `warn` / `info`).
7. Apply **safe** fixes on the box when asked (install deps, create `.env` from example with placeholders). Leave irreversible / prod / secret-injection for owner yes.

## Output shape

```text
## Env doctor
- Claim: <what should work>
- Evidence: <commands + exit codes>
- Verdict: BLOCKED | FIXED | NEEDS OWNER
- Table: ...
- Next: ...
```

## Never

- Dump `.env` contents into chat or commits.
- “Fix” by disabling TLS, auth, or security checks without explicit owner approval.
- Invent required vars that the project docs do not mention.
