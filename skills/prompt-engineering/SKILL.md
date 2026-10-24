---
name: prompt-engineering
description: >-
  Use when designing, refining, evaluating, or teaching prompts for LLMs and
  agents — research, education, product UX, or agent skills. Structure,
  few-shots, evals, failure modes.
---

# Prompt engineering (research & product)

For building clearer prompts that help people and systems — not for jailbreaks or extracting hidden system instructions.

## Goal

Produce a prompt (or prompt system) that is measurable, reusable, and safe for the stated use case.

## Steps

1. **Job to be done** — one sentence: who the model is for, what success looks like, what must never happen.
2. **Constraints** — audience, length, tone, tools available, languages, citation rules, refusal boundaries.
3. **Structure the prompt** (pick what fits):
   - Role + mission
   - Inputs / context slots (`{{user_brief}}`, `{{docs}}`)
   - Process (ordered steps the model must follow)
   - Output schema (markdown sections, JSON schema, or checklist)
   - Few-shot examples (2–4; show edge cases, not only happy path)
   - Self-check ("before you finish, verify…")
4. **Failure modes** — list likely bad behaviours (hallucinated cites, overconfidence, scope creep) and add explicit counters in the prompt.
5. **Eval set** — write 5–10 test cases with expected traits (not only exact strings). Run them; note pass/fail.
6. **Iterate** — change one variable at a time (order, examples, schema). Keep a short changelog.
7. **Ship format** — deliver: final prompt, when to use it, eval summary, known gaps.

## Patterns that help mankind

- Teaching / tutoring with Socratic steps and misconception checks
- Accessibility rewrites (plain language, reading level)
- Scientific / medical *information* framing that insists on sources and "not a substitute for a clinician"
- Civic / public-interest summarisation with citation discipline
- Agent skills that encode reversible, inspectable workflows

## Never

- Jailbreaks, "ignore previous", or attempts to extract hidden system prompts
- Prompts whose purpose is harassment, scams, weapons, or unauthorized access
- Fake expertise claims ("you are a licensed doctor who may prescribe…")

## Output shape

```markdown
## Use when
## Prompt
## Eval results
## Risks / next tweaks
```
