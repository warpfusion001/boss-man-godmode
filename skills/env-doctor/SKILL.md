---
name: env-doctor
description: >-
  Diagnose why a project will not start: runtime, deps, env vars, ports,
  and common config footguns. Use on boot failures or "it won't run".
---

# Env doctor (Boss Man)

Original pack skill — not an Agensi vendored copy.

## Steps

1. **Symptoms** — capture the exact error (command + stderr). Do not guess past it.
2. **Runtime** — language/tool versions (`node -v`, `python --version`, etc.) vs what the project expects.
3. **Deps** — lockfile present? install clean? missing native build tools?
4. **Env** — compare required vars to `.env.example` / docs. Report **names only**; never print secret values.
5. **Ports / processes** — conflicts, bind address, Docker vs host.
6. **Verdict table** — issue → likely cause → fix sketch → severity.
7. Apply safe fixes on the box when asked; leave irreversible/prod changes for owner yes.

## Never

- Dump `.env` contents into chat or commits.
- “Fix” by disabling TLS, auth, or security checks without explicit owner approval.
