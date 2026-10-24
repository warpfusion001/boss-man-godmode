---
name: free-llm-router
description: >-
  Route planning, critique, and prompt-expansion calls across free LLM tiers
  (Groq → OpenRouter :free → Gemini free → Cloudflare Workers AI) so creative
  and Astra work does not burn paid xAI API credits. Not for replacing the
  Grok Bot product brain for tool use.
---

# Free LLM router

Use this for **sidecar** reasoning: expand prompts, summarise research, draft
critiques, or generate structured JSON plans when a separate completion API
helps. The live Grok Bot remains the orchestrator with tools.

## Preference order (cheapest first)

1. **Groq free** — `GROQ_API_KEY` · https://console.groq.com — fast; per-model RPM/RPD.
2. **OpenRouter `:free`** — `OPENROUTER_API_KEY` · append `:free` to model ids · ~50 req/day baseline.
3. **Google AI Studio Gemini** — `GEMINI_API_KEY` · https://aistudio.google.com — free-tier data caveats.
4. **Cloudflare Workers AI** — `CLOUDFLARE_API_TOKEN` + `CLOUDFLARE_ACCOUNT_ID` · 10k Neurons/day.
5. **Paid xAI** — `XAI_API_KEY` only with owner approval (no free API tier).

## Steps

1. **Task class** — classify: plan / summarise / critique / code-suggest / creative-prompt.
2. **Pick model** — smallest free model that fits context; note daily quotas.
3. **Call** via curl or a thin script; read keys from env/vault only.
4. **On 429 / quota** — fall to next provider; tell the user which tier died.
5. **Return** structured output to the parent skill (Astra / creative). Do not leak keys in logs.

## Example (OpenRouter free — placeholder key)

```bash
# EXAMPLE_ONLY — requires a real OPENROUTER_API_KEY in env
curl https://openrouter.ai/api/v1/chat/completions \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"meta-llama/llama-3.2-3b-instruct:free","messages":[{"role":"user","content":"Summarise in 5 bullets"}]}'
```

## Never

- Put real keys in this repo or in chat.
- Route tool-calling / computer-use through a free sidecar and pretend it is the Bot.
- Ignore free-tier ToS (training on prompts, commercial limits).
