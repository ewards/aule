---
problem: agentsforhumans
method: triz
date: 2026-09-01
---

Core contradiction: the agent must run unattended in the background (the problem statement's tightest constraint: "not another app people open and manage... only surfaces when there's a real decision") and be accountable enough that a human trusts it with irreversible actions — more autonomy means the human sees less of what was done, and more supervision means the agent stops being background.

## Candidates

1. **The Decision Inbox — the entire human interface is an inbox of decision cards: the agent runs the routine work in the background and surfaces only "approve / defer / reject" cards (e.g., "pay $120 to X by Friday?"), everything else is done and logged**
   - Principle 13 (The Other Way Round) + 35 (Parameter changes): the agent acts on the human and the interface is the ask-stream, resolving "background autonomy vs. human accountability" by making surfacing the product.
   - Judges see the leap: the "another app people open and manage" constraint is inverted — the app is something you do NOT open, and the demo's centerpiece is a day where the agent did everything but two taps.

2. **Reversible-First Engine — the agent classifies every action as reversible (draft, propose, schedule-with-undo) or irreversible (pay, send, delete): reversible actions run silently, irreversible ones are batched into one daily approval roll-up with a visible reversibility score per action**
   - Principle 11 (Beforehand Cushioning): the safety margin is architectural — a reversibility buffer the agent always executes first, resolving "autonomy vs. irreversible risk."
   - Judges see the leap: trust is engineered, not policed — the demo shows 90% of a day's chores done autonomously with exactly two questions asked, and the two are provably the only irreversible ones.

3. **Track-Record Autonomy — a per-category autonomy dial that moves on evidence: handle ten bill payments correctly and the category graduates from "ask" to "auto + report"; one correction demotes it; the dial and its history are visible**
   - Principle 35 (Parameter changes) + 23 (Feedback): a continuous degree with sensing that corrects it, resolving "trust must be earned over time vs. a 5-minute demo that must already show autonomy."
   - Judges see the leap: autonomy is a living system with visible history, not a permission checkbox — the demo can replay the dial climbing in real time across a simulated month.

4. **Neighbor Relay — a group agent for one Good-Neighbor org (food bank roster, school event committee) that handles the group's shared chores in the background and surfaces only the decisions that need group consensus, with one digest per week**
   - Principle 24 (Mediator): an intermediate object transferring the effect from "the group" to "the work," resolving "groups coordinate in endless chat threads vs. agents are built per individual."
   - Judges see the leap: the unit of autonomy is a group, not a person — a Strands multi-role pattern most entries will not attempt, and the weekly group digest is a concrete artifact judges can hold.

5. **Self-Auditing Ledger — the agent keeps its own ledger (every action with before/after state and a receipt) and runs a nightly self-audit that reconciles "what I did" against "what was asked," flagging any discrepancy to the human before they notice**
   - Principle 25 (Self-service) + 26 (Copying): the object audits a replica of its own history, resolving "accountability for background work vs. a human who never watches it."
   - Judges see the leap: the trust story is the audit itself — the demo shows the self-audit catching a planted discrepancy and self-reporting it, which no "assistant with a log" submission can match.