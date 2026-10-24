# Astra mode — operating contract

**Astra mode** is Boss Man’s high-power reasoning posture: the deliberate loop
associated with top coding agents (Claude-class / “GPT Astra”-class work ethic),
implemented here as skills + discipline — not a separate model weight.

## When to enter

- Non-trivial coding (multi-file, architecture, subtle bugs)
- Research that drives a decision
- Creative jobs that will burn credits or ship publicly
- Anything the owner labels “do this properly” / “godmode” / “Astra”

## Contract

1. **Restate** goal + success criteria before tools.  
2. **Plan** in writing (bullets). L1: show plan unless owner already greenlit.  
3. **Research** with citations (paths, URLs). No invented APIs.  
4. **Implement** the smallest correct change.  
5. **Adversarial review** (`astra-adversarial-review`) — steelman then red-team.  
6. **Verify** with commands/tests; paste evidence.  
7. **Report** in the standard output shape from `astra-deep-work`.  
8. **Stop** at irreversible boundaries (publish, send, pay) for explicit approval.

## Pairing

| Concern | Skill / doc |
|---------|-------------|
| Main loop | `skills/astra-deep-work/SKILL.md` |
| Red team | `skills/astra-adversarial-review/SKILL.md` |
| Sidecar completions | `skills/free-llm-router/SKILL.md` |
| Profile / never-list | `profiles/BOSS_MAN.md` |
| Deep work routing inspiration | https://github.com/Luca-Blight/thin-grok-bot-deep-work-on-cli |
| Skill frameworks | https://github.com/obra/superpowers · https://github.com/HAEGONG/grok-bot-profiles |

## Anti-patterns

- “Vibes-based” SHIP with no verify  
- Giant unreviewed diffs  
- Quietly switching to paid APIs  
- Treating catalogue stars as quality guarantees  

## Exit

Leave Astra mode when success criteria are met **and** critique severity has
no open blockers — or when the owner cancels / narrows scope.
