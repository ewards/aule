---
problem: webmcp
judged: 2026-09-01
weights: 1/1/1/1
---

Weights: the problem's Context lists four named criteria with no stated percentages (WebMCP Leverage, Execution, Potential Impact, Creativity & Ambition); they map cleanly onto feasibility/execution, impact, and novelty, so the default 1/1/1/1 applies.

| rank | idea (set: title) | novelty | feasibility | impact | judge-appeal | total |
|------|-------------------|---------|-------------|--------|--------------|-------|
| 1 | set-5: Measured Baseline Pitch | 4 | 4 | 4 | 5 | 17 |
| 2 | set-1: Fallback Theater | 4 | 4 | 4 | 4 | 16 |
| 2 | set-4: Settlement Desk | 5 | 4 | 3 | 4 | 16 |
| 4 | set-1: Dry-Run Twin | 4 | 4 | 3 | 4 | 15 |
| 4 | set-3: No-Key Field Intake | 3 | 4 | 4 | 4 | 15 |
| 4 | set-4: Tower Clearance | 4 | 4 | 3 | 4 | 15 |
| 4 | set-4: Surgical Timeout | 4 | 4 | 3 | 4 | 15 |
| 8 | set-1: Self-Registering Plan Board | 4 | 3 | 3 | 4 | 14 |
| 8 | set-1: Consent Mirror | 3 | 4 | 3 | 4 | 14 |
| 8 | set-1: Selection-to-Parameter Composer | 4 | 3 | 3 | 4 | 14 |
| 8 | set-2: Agent Checkout | 3 | 3 | 4 | 4 | 14 |
| 8 | set-2: Auto-Tooler | 4 | 2 | 4 | 4 | 14 |
| 8 | set-2: One-Tool Monolith | 4 | 4 | 3 | 3 | 14 |
| 8 | set-3: The Deterministic Board | 3 | 5 | 3 | 3 | 14 |
| 8 | set-3: Agent-First Console | 3 | 4 | 3 | 4 | 14 |
| 8 | set-3: The Page as Contract | 4 | 3 | 3 | 4 | 14 |
| 8 | set-4: Mise Tray | 3 | 4 | 3 | 4 | 14 |
| 8 | set-5: Tool Coverage Gate | 3 | 4 | 3 | 4 | 14 |
| 8 | set-5: Human-Useful Gate | 3 | 4 | 4 | 3 | 14 |
| 19 | set-2: Tool Ledger | 3 | 4 | 3 | 3 | 13 |
| 19 | set-4: Score Gate | 4 | 3 | 3 | 3 | 13 |
| 19 | set-5: Simulated-Agent Fallback | 3 | 4 | 3 | 3 | 13 |

## Recommendation

1. **Measured Baseline Pitch** (set-5, total 17) — a tired judge remembers a concrete measured before/after number ("N scraping steps, M% fail rate → 3 tool calls") five minutes later, and it pre-answers the "hard/impossible before" question the submission form literally asks. Kill-risk: the baseline must be actually measured first; a small or invented gap sinks the pitch.
2. **Fallback Theater** (set-1, total 16) — making the agent's failure visible and turning it into a public capability-gap metric is a genuine non-obvious leap that also de-risks the demo (a failed tool call becomes a feature moment, not a fluff). Kill-risk: requires a real, demonstrable failure case in the 3-minute video; contrived failures read as theater.
3. **Settlement Desk** (set-4, total 16) — parameter-level negotiation (agent proposes, human counters, only the settled call executes) is a framing judges have not seen this season and it is a natural demo arc. Kill-risk: it only works in a domain where the parameters are legible to a non-technical human; pick the domain before building.

Method note: no SCAMPER (set-2) or first-principles (set-3) candidate reached the top 3 — both methods produced sound but derivative candidates here (audit-log and checkout variants; safe-but-unremarkable minimal systems), which may mean the problem's novelty criterion is better attacked by inversion-style submission design than by product variation. The human can re-run either method against a chosen domain.

## Decisions

(to be filled by the human: accepted / rejected / park)

- Measured Baseline Pitch (set-5): ______
- Fallback Theater (set-1): ______
- Settlement Desk (set-4): ______