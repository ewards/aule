---
problem: amazonappdev2026
judged: 2026-09-02
weights: 1/1/1/1
---

Weights: the problem's Context lists four named criteria with no stated percentages
(Tech Implementation, Design, Potential Impact, Quality of the Idea); Tech Implementation
maps onto feasibility, Quality of the Idea (creative use of tools) onto novelty/
judge-appeal, so the default 1/1/1/1 applies.

| rank | idea (set: title) | novelty | feasibility | impact | judge-appeal | total |
|------|-------------------|---------|-------------|--------|--------------|-------|
| 1 | set-1: Door-to-Screen Care Loop | 4 | 3 | 5 | 4 | 16 |
| 2 | set-2: The Home Asks You | 3 | 4 | 4 | 4 | 15 |
| 2 | set-1: Household Event Bus | 4 | 3 | 4 | 4 | 15 |
| 2 | set-2: Multi-Cam Sports Desk | 4 | 3 | 4 | 4 | 15 |
| 2 | set-4: The Charge Nurse's Board | 4 | 3 | 4 | 4 | 15 |
| 2 | set-3: The Pick-Up | 4 | 4 | 3 | 4 | 15 |
| 7 | set-1: Friction Log as the Demo | 4 | 4 | 2 | 4 | 14 |
| 7 | set-3: Caretaking on a Schedule | 3 | 4 | 4 | 3 | 14 |
| 7 | set-4: The Tower | 4 | 3 | 3 | 4 | 14 |
| 7 | set-5: Name the Person, Name the Number | 2 | 5 | 3 | 4 | 14 |
| 11 | set-1: Shadow Home | 3 | 4 | 3 | 3 | 13 |
| 11 | set-2: Rule-Bound Event Router | 2 | 5 | 3 | 3 | 13 |
| 11 | set-2: Every Action Gets an Audit Tile | 3 | 4 | 3 | 3 | 13 |
| 11 | set-3: The 3-Button Test | 3 | 4 | 3 | 3 | 13 |
| 11 | set-4: The Conductor's Downbeat | 4 | 3 | 3 | 3 | 13 |
| 11 | set-4: First-Ten-Seconds Dispatch | 3 | 3 | 4 | 3 | 13 |
| 11 | set-5: Anti-pitch: provably not the hub | 2 | 5 | 3 | 3 | 13 |
| 18 | set-1: Pre-Built Connector Kit, Glue in the Window | 2 | 5 | 3 | 2 | 12 |
| 18 | set-2: Zero-Onboarding Demo | 2 | 4 | 3 | 3 | 12 |
| 18 | set-5: One Track, Done Dead | 2 | 5 | 3 | 2 | 12 |
| 21 | set-5: In-Code Proof First | 2 | 5 | 2 | 2 | 11 |
| 22 | set-3: One Track, One Loop, Zero Hardware | 1 | 5 | 2 | 2 | 10 |

## Recommendation

1. **Door-to-Screen Care Loop** (set-1, total 16) — Ring's noisy door stream becomes the
   product: the agent checks door events against Bee health data and confirms on Fire TV,
   which lands three named track priorities (Ring caretaking, Bee personal productivity,
   Alexa+ orchestration) as one story a tired judge still has at item 23. Kill-risk: the
   Bee track requires real data from a Bee device or Apple Watch running Bee software —
   no wearable in hand, no Bee lane.
2. **The Home Asks You** (set-2, total 15) — inverting the flow (household state raises
   the question, the agent acts only on confirmation) is the freshest agent framing in
   this batch and it is the smallest build of the five-way tie that still feels complete:
   one confirmation loop, no Bee dependency. Kill-risk: proactive UX reads as noise if
   the trigger set is too broad; the demo needs exactly one airtight question.
3. **Household Event Bus** (set-1, total 15) — one event thread rendered by four device
   lanes is the most direct answer to "genuine understanding of the ecosystem" and the
   multi-device story the problem statement teases. Kill-risk: four surfaces plus the
   MCP orchestration is the largest scope in the top 3, and the Bee lane again needs
   real wearable data; consider building it with Ring + Fire TV + Alexa+ first.

Method note: no first-principles (set-3), cross-domain (set-4), or inversion (set-5)
candidate reached the top 3. The first-principles candidates are minimal by construction
(safe, thin impact); the cross-domain mappings are strong framings that need more build
than the window allows to be demo-able; the inversion candidates are submission hygiene
that supports any of the top 3 but is not a product. The human can re-run cross-domain
with a stricter "demoable in the window" filter if a fourth lane is wanted.

## Decisions

(to be filled by the human: accepted / rejected / park)

- Door-to-Screen Care Loop (set-1): ______
- The Home Asks You (set-2): ______
- Household Event Bus (set-1): ______