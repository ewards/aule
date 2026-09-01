---
problem: agentic-cinema
judged: 2026-09-01
weights: 1/1/1/1
---

Weights: the Context gives qualitative judging direction ("emphasis on a deterministic, multi-step agent that solves enterprise friction in a media & entertainment workflow," partner+Google panel, verifiable runtime use of GCP and the partner) with no percentages; it maps onto feasibility (deterministic and working), impact (real M&E enterprise friction), novelty (a concept the panel hasn't seen), and judge-appeal, so the default 1/1/1/1 applies.

| rank | idea (set: title) | novelty | feasibility | impact | judge-appeal | total |
|------|-------------------|---------|-------------|--------|--------------|-------|
| 1 | set-4: Seeded Replay | 5 | 3 | 4 | 4 | 16 |
| 1 | set-1: Twin Run Auditor | 4 | 4 | 4 | 4 | 16 |
| 1 | set-5: Agent-ness Budget | 4 | 4 | 4 | 4 | 16 |
| 4 | set-1: Three-Takes Studio | 4 | 4 | 4 | 4 | 16 |
| 5 | set-2: The Call Sheet Agent | 4 | 4 | 3 | 4 | 15 |
| 5 | set-2: Season Autopsy | 4 | 3 | 4 | 4 | 15 |
| 5 | set-2: Greenlight in Reverse | 5 | 3 | 3 | 4 | 15 |
| 5 | set-3: One Real Friction, Instrumented | 3 | 4 | 4 | 4 | 15 |
| 5 | set-4: Double-Scan Pipeline | 4 | 3 | 4 | 4 | 15 |
| 5 | set-5: Judge-in-10 | 3 | 5 | 3 | 4 | 15 |
| 11 | set-1: Contract Rail Pipeline | 4 | 3 | 3 | 4 | 14 |
| 11 | set-1: Checkpoint Time Machine | 3 | 3 | 3 | 4 | 14 |
| 11 | set-2: Run Receipt | 3 | 4 | 4 | 3 | 14 |
| 11 | set-2: Dubbing Floor Agent | 4 | 2 | 4 | 4 | 14 |
| 11 | set-3: The Unattended Memo | 3 | 5 | 3 | 3 | 14 |
| 11 | set-3: Deep-Drill Partner Integration | 3 | 4 | 4 | 3 | 14 |
| 11 | set-3: The Morning Memo | 3 | 5 | 3 | 3 | 14 |
| 11 | set-4: Copy Desk Gate | 4 | 3 | 4 | 3 | 14 |
| 11 | set-4: Pre-Flight Gate | 3 | 4 | 3 | 4 | 14 |
| 11 | set-5: Compliance Gate | 3 | 4 | 3 | 4 | 14 |
| 11 | set-5: Data-Spine Gate | 3 | 4 | 4 | 3 | 14 |
| 22 | set-1: Fallback Cushion Catalog | 3 | 4 | 3 | 3 | 13 |
| 22 | set-4: The Manifest | 3 | 4 | 3 | 3 | 13 |

## Recommendation

1. **Seeded Replay** (set-4, total 16) — run the pipeline twice from the same seed, diff the artifacts, and show the diff is empty: the single most direct exhibit of the judging emphasis ("deterministic, multi-step agent") as a visible proof rather than a claim. Kill-risk: LLM output is not byte-identical even at temperature 0, so the diff must compare structured artifact fields, not prose — get the field set right before building anything else.
2. **Twin Run Auditor** (set-1, total 16) — every agent run paired with a deterministic shadow run and a diff report of where the agent beat or drifted from the control: enterprise trust becomes a document the partner panel can open. Kill-risk: the shadow run must be a genuinely working rule-based version, not a stub — a fake control is exactly what an IBM/ClickHouse/Grafana engineer would spot.
3. **Agent-ness Budget** (set-5, total 16) — explicitly labeled "agent steps" (visible tool-choice decisions on the Gemini Enterprise Agent Platform) vs. "deterministic rails," so the submission satisfies both halves of the judging emphasis at once instead of choosing one. Kill-risk: if the labeled agent decisions are thin, the labels read as cosmetic — the decision points must be load-bearing or be cut.

Just under the line: Three-Takes Studio (set-1, 16) — the strongest creative candidate; if the team wants a demo with more color than proof, this is the swap, but its "which take is best" ranking is subjective where the top 3 are verifiable.

Method note: no first-principles (set-3) candidate reached the top 3 — its minimal systems (unattended memo, morning memo) are the safest builds but the least memorable, and none paired the minimal frame with a proof mechanism; the method may be wrong as a novelty engine for this problem, though One Real Friction, Instrumented (15) remains the best impact play and composes with any top-3 idea.

## Decisions

(to be filled by the human: accepted / rejected / park)

- Seeded Replay (set-4): ______
- Twin Run Auditor (set-1): ______
- Agent-ness Budget (set-5): ______