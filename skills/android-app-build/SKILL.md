---
name: android-app-build
description: >-
  Use when building or shipping an Android app (Kotlin, Jetpack Compose, Gradle,
  emulator, Play) — free local skills from android/skills + GuillemRoca/mazWaz
  kits.
---
# Android app build (free skills)

## Pack sources (vendored)
- Official Google **android/skills** (Apache-2.0): `/workspace/boss-man-godmode/skills/android-official/` — Compose, build-system, testing, security, media, camera, etc. Docs: https://developer.android.com/tools/agents/android-skills
- **GuillemRoca/agent-skills-android** (MIT): `/workspace/boss-man-godmode/skills/android-engineering/` — UI, device testing, shipping, CI, accessibility
- Install hint: `android skills add --all` when Android CLI is available; or `npx skills add mazWaz/android-skill`

## Default stack
Kotlin + Jetpack Compose + Gradle (AGP) + emulator/device. Prefer official skill modules for Compose/migration/security; use engineering kit for ship/CI/e2e.

## Flow
1. Confirm package name, minSdk, UI (Compose vs XML), and whether it’s a new app or feature in an existing repo.
2. Load the matching pack SKILL.md (compose screen, form-build, tests, release-check).
3. Implement with TDD where the kit says; run unit/instrumented tests on emulator when possible.
4. Release: signing, Play checklist — never upload to Play without owner yes.

## Never
- Never commit keystores, Play API secrets, or google-services.json with private keys
- Never publish to Play Store without explicit owner approval
