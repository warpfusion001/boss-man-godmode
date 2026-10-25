# Overnight hunter — design

**Date:** 2026-10-25  
**Status:** draft for owner review  
**Owner:** Richard (@warpfusion001)  
**Pack:** boss-man-godmode  
**Approach:** A — overnight-hunter skill + scheduled routine  
**Spend ceiling (v1):** £0 (free X / search / local only)  
**Revenue path:** PayPal (checkout / payment-link draft required every hunt)

---

## Goals

- Nightly (or on-demand) **open hunt** for the strongest *repeated* pain on X that a **no-outlay** free-tool stack can monetise.
- Prefer opportunities people already **pair** on X (free tool A + free tool B → sellable outcome).
- Produce a **draft micro-offer** under the spend ceiling, with a **PayPal checkout / payment-link draft** every run.
- Deliver a **morning brief** in chat; archive everything as markdown under `outputs/hunts/`.
- Stay **L1**: reversible free; draft irreversible; owner yes before publish, domain buy, paid APIs, or live PayPal charging.

## Non-goals

- Auto-publishing landing pages, forum posts, ads, or social.
- Auto-spending paid APIs / credits / domains above the active ceiling (v1 = £0).
- Inventing customer counts, revenue, or testimonials.
- Claiming Bober-style overnight cash figures; treat those as unverified marketing.
- Replacing weekly-skills-scout (skills hunt stays separate).
- Full multi-bot orchestration (Opus/REA/Jev/Dots clones) in v1.

## Architecture

```text
23:00 Europe/London flexible routine (or owner: "run overnight hunt")
    → overnight-hunter skill
        → free X scan (x MCP / public reads)
        → free web search (Exa / Tavily / You free paths only)
        → cluster repeated pains + free-tool pairs
        → pick ONE candidate (scoring below)
        → write hunt pack under outputs/hunts/YYYY-MM-DD/
        → cost-gate assert: £0 (or active ceiling)
        → STOP before any paid/publish step
    → morning brief in chat (or immediate brief if on-demand)
    → owner yes → go-live checklist items only
```

## Components

### 1. `skills/overnight-hunter/` (new)

Triggers: scheduled routine, or owner says “overnight hunt”, “open hunt”, “find a gap tonight”.

Pipeline steps (required, in order):

1. **Scout** — free X + free search for repeated frustrations / “I wish X existed” / no-outlay money stacks.
2. **Cluster** — top 3 pain themes with evidence links (post URLs, counts if available).
3. **Pair scan** — for each theme, list free tools people already combine on X (no paid API required to ship v1).
4. **Score & pick** — one winner using the scoring table below.
5. **Draft pack** — write all deliverable files (next section).
6. **Brief** — short chat summary + paths; never fake metrics.
7. **Gate** — if next step needs money, publish, or live PayPal → ask owner.

Does **not** replace: `cost-gate`, `lead-research`, `last30days`, `weekly-skills-scout`, `social-content`. May call them for research / draft copy only.

### 2. Routine — “Overnight hunter”

- Schedule: flexible `0 23 * * *` Europe/London (may run ±30 min).
- Prompt intent: run `overnight-hunter` with open hunt + active ceiling (£0 until owner raises it).
- Quiet if nothing worth shipping (one-line “nothing new”).
- Never push git; never publish; never call paid gen.

### 3. Hunt pack (`outputs/hunts/YYYY-MM-DD/`)

| File | Required | Contents |
|------|----------|----------|
| `brief.md` | yes | Top 3 pains, evidence links, winner + why |
| `offer.md` | yes | Name, ICP, price, MVP scope, free-tool stack |
| `landing-draft.md` | yes | Hero, problem, offer, FAQ, CTA |
| `paypal.md` | yes | PayPal checkout / payment-link draft (price, item name, success URL placeholders, go-live steps needing owner yes) |
| `go-live.md` | yes | Checklist of irreversible steps + what owner must approve |
| `log.md` | yes | Tools used, spend (£0), failures, time |

### 4. Scoring (pick one)

Prefer candidates that score high on:

| Signal | Weight |
|--------|--------|
| Repeated pain on X (same complaint, many voices) | high |
| Clear buyer who already pays for worse solutions | high |
| Shipable with **free** tools only (no outlay) | high |
| Documented free-tool **pair** already discussed on X | medium |
| PayPal-friendly (digital delivery / one-off or simple sub) | medium |
| Undercut fee (price below cheapest paid competitor in bracket) | high |
| Legal / platform-ToS risk | veto if high |

Reject: crypto pumps, grey-area scraping of private data, anything needing paid ads to validate, anything that burns credits tonight.


### Pricing rule (undercut)

- Every `offer.md` and `paypal.md` **must** name a fee Boss Man chooses.
- Rule: **lower than the cheapest paid competitor** found in that bracket (same ICP / problem class).
- Cite at least one competitor price + source link in `offer.md`.
- Prefer simple PayPal one-offs; keep the price honest (not $0, not dumping below sustainable free-tool cost — free tools mean low floor, not zero).
- If no paid competitor exists, set a starter undercut vs the nearest adjacent category and say so.

### 5. PayPal revenue path

- Every hunt **must** include `paypal.md` with a draft payment link or Buttons/checkout plan.
- Draft only: no live button, no live charging, no vaulted card use without owner yes.
- Preferred: one-off digital goods or simple subscription language; owner creates the real PayPal link from the draft.
- If PayPal cannot fit the offer, say so in `paypal.md` and propose the closest PayPal-compatible packaging (do not invent another processor in v1).

### 6. Free-tool / no-outlay bias

- Prefer stacks with £0 marginal cost: public X reads, free search connectors, local markdown, free-tier landing (static HTML on box / GitHub Pages only after owner yes), free image tools already exempt from cost-gate (Pollinations / local Draw Things / ComfyUI).
- Record the exact free pair in `offer.md` (e.g. “Tool A + Tool B → delivered asset”).
- If the best gap needs paid APIs, keep it as runner-up and note the raised ceiling required — do **not** spend.

## Cost gate

- Active ceiling stored in hunt `log.md` and routine prompt (v1: **£0**).
- Any paid MCP / API call → stop and ask (even if “only £1”).
- Raising the ceiling is an owner decision; update routine prompt + memory when they do.

## Failure modes

| Case | Behaviour |
|------|-----------|
| No clear repeated pain | One-line brief: nothing worth shipping; no fake offer |
| X / search quota hit | Partial brief + what was scanned + retry note |
| All candidates need paid outlay | List them as “needs ceiling raise”; ship no £0 offer |
| PayPal unfit | Explain in `paypal.md`; still draft closest PayPal packaging |
| Temptation to publish / buy domain / spend | Stop; ask |

## Success criteria (v1)

- Skill + routine exist in pack and live Boss Man.
- One dry-run produces a complete hunt pack including `paypal.md`.
- Morning (or on-demand) brief cites real evidence links only.
- Zero paid spend on £0 runs.

## Out of scope until later

- Multi-agent role bots (Bober Opus/REA/Jev/Dots mirrors).
- Auto domain purchase with budget self-control.
- Full second-brain Obsidian vault (optional light archive later).
- Live PayPal API automation.

## Owner decisions locked in design chat

- Slice: overnight product hunter (Approach A).
- Ceiling: £0 free tools only (for first runs).
- Design before first live hunt.
- Required deliverable: PayPal checkout / payment-link draft every hunt.
- Prefer latest free tools people pair on X for no-outlay money.
- Undercut pricing: Boss Man sets fee below cheapest paid competitor in bracket.
