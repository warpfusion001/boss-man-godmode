---
name: overnight-hunter
description: >-
  Nightly or on-demand open hunt: free X + search for repeated pains,
  draft a no-outlay micro-offer with undercut PayPal pricing, write
  /workspace/outputs/hunts/YYYY-MM-DD/, morning-brief the owner. £0 default;
  never auto-publish or live-charge.
---

# Overnight hunter

Runs every night ~23:00 Europe/London via the flexible routine **“Overnight hunter”**, or when the owner says “overnight hunt”, “open hunt”, or “find a gap tonight”.

Templates: `creative/hunts/_template/`. Runtime packs: `/workspace/outputs/hunts/YYYY-MM-DD/` (gitignored). Spec: `docs/superpowers/specs/2026-10-25-overnight-hunter-design.md`.

## Hard rules

- **Ceiling v1: £0** — free X MCP, free Exa/Tavily/You paths, local markdown only. Any paid API → stop and ask (`cost-gate`).
- **L1** — draft irreversible steps; owner yes before publish, hosting, domain buy, live PayPal charging, or raising the ceiling.
- Never invent customers, revenue, testimonials, or engagement counts.
- Never auto-publish landing pages, ads, forum posts, or social.
- Prefer **free-tool pairs** people already discuss on X (no outlay to ship v1).
- Every pack **must** include `paypal.md` with an **undercut** fee (below cheapest paid competitor in bracket, with cite).

## Pipeline

1. **Scout** — free X + free search for repeated frustrations / “I wish X existed” / no-outlay money stacks (last ~24–48h, or since last run).
2. **Cluster** — top 3 pain themes with evidence links (post URLs).
3. **Pair scan** — for each theme, list free tools people already combine on X.
4. **Score & pick** — one winner using the scoring table below.
5. **Draft pack** — copy `creative/hunts/_template/` → `/workspace/outputs/hunts/YYYY-MM-DD/` and fill all six files.
6. **Validate** — run `./scripts/validate_hunt_pack.sh /workspace/outputs/hunts/YYYY-MM-DD` from the pack root (or repo root). Fix until OK.
7. **Brief** — short chat morning/on-demand brief with paths; stop before any paid/publish/live-PayPal step.

## Scoring (pick one)

| Signal | Weight |
|--------|--------|
| Repeated pain on X (same complaint, many voices) | high |
| Clear buyer who already pays for worse solutions | high |
| Shipable with free tools only (no outlay) | high |
| Undercut fee (below cheapest paid competitor in bracket) | high |
| Documented free-tool pair already discussed on X | medium |
| PayPal-friendly (digital delivery / one-off or simple sub) | medium |
| Legal / platform-ToS risk | veto if high |

Reject: crypto pumps, grey-area private-data scraping, offers that need paid ads to validate, anything that burns credits tonight.

## Pricing (undercut)

- Boss Man chooses the fee in `offer.md` and `paypal.md`.
- Must be **lower than the cheapest paid competitor** in that bracket (same ICP / problem).
- Cite at least one competitor price + source link in both files (`undercut_vs`).
- Prefer simple PayPal one-offs in GBP unless evidence says otherwise.
- Not £0 dumping — honest undercut vs paid alternatives; free tools keep the floor low.
- If no paid competitor exists, undercut the nearest adjacent category and say so.

## Deliverables

| File | Required |
|------|----------|
| `brief.md` | yes — top 3 pains, evidence, winner, free-tool pair |
| `offer.md` | yes — name, ICP, fee, undercut_vs, MVP, stack |
| `landing-draft.md` | yes — hero, problem, offer, FAQ, CTA |
| `paypal.md` | yes — amount, currency, undercut_vs, draft link steps |
| `go-live.md` | yes — owner-yes checklist |
| `log.md` | yes — ceiling, spend (£0), tools, failures |

## Morning brief shape

```
Overnight hunter — <date>
Winner: <name> @ £<fee> (undercut vs <competitor £X>)
Pain: <one line>
Stack: <free tool A + B>
Pack: /workspace/outputs/hunts/<date>/
PayPal: draft only — needs your yes to go live
Spend: £0
```

If nothing worth shipping: one line — “Overnight hunter: nothing worth shipping tonight.”

## Failure modes

| Case | Behaviour |
|------|-----------|
| No clear repeated pain | Quiet one-liner; no fake offer |
| X / search quota hit | Partial brief + what was scanned + retry note |
| All candidates need paid outlay | List as “needs ceiling raise”; no £0 offer |
| PayPal unfit | Explain in `paypal.md`; closest PayPal packaging |
| Temptation to publish / buy domain / spend | Stop; ask |

## Never

- Paid MCP/API calls on £0 ceiling
- Live PayPal buttons or charging without owner yes
- Auto-publish / auto-ads / auto forum spam
- Fake metrics or borrowed Bober-style revenue claims
- Weakening `cost-gate` or send-on-behalf
