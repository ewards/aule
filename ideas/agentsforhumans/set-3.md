---
problem: agentsforhumans
method: first-principles
date: 2026-09-01
---

Hard requirements: a working, non-trivial agent built on the Strands Agents SDK; autonomous background operation that "only surfaces when there's a real decision" (the problem statement's own words); a complete, coherent product experience (not a PoC); a credible specific problem and audience addressed by the demo; a non-obvious use of Strands; public MIT/Apache repo with setup + README + architecture diagram; 5-min video covering problem/who/why; ~48h to build (deadline 2026-09-14); only $50 AWS credits, AgentCore optional.

Inherited assumptions that fail no hard requirement if removed: a web app or dashboard (the problem statement explicitly rejects "another app people open and manage"), multi-chore breadth, user accounts, real payment/email integrations, AgentCore deployment, an LLM call in every step.

## Candidates

1. **The Night Watch — one Strands agent for one domain (the household's money chores: bills, renewals, appointment confirmations) running on a schedule against inbox/calendar/bills snapshots; it does the reversible work, sends one daily decision email, and the only UI is a single report page: the ledger plus the decisions asked**
   - Discards explicitly: web app/dashboard, onboarding forms, user accounts, real payments, AgentCore.
   - Minimal yet judge-proof: "autonomous, surfaces only real decisions" is satisfied literally; Design comes from one coherent surface (the report page) instead of a half-built dashboard; with $50 credits the live-demo link can be the hosted report page plus one manual trigger — "scores higher" without the AgentCore spend.
   - Kill-risk: one domain can read thin against "complete product" — the report page must look like a product, not a log dump, or Design collapses.

2. **One Chore, Done Perfectly — pick the single chore the problem statement names ("filling out the same paperwork again") and build it end to end to perfection: find it, draft it, track it, submit it, with a full state machine and receipts — everything else is out of scope by declaration**
   - Discards explicitly: multi-chore breadth and the general-assistant frame.
   - Minimal yet judge-proof: a single chore done to depth is the most direct evidence of "genuine understanding of the problem space" (Creativity) and a specific, credible audience (Potential Impact) — the people who do that paperwork every week.
   - Kill-risk: the chore must be universally legible and demoable with sample data; a niche chore loses the room on Presentation before the depth is seen.

3. **The Simulated World — one simulated household (seeded inbox, calendar, bills feed) that advances one day per demo click; the agent is fully real and runs every simulated day, so the demo is a five-minute time-lapse of thirty days of autonomous operation with the decision log**
   - Discards explicitly: real payment/email integrations and live third-party APIs.
   - Minimal yet judge-proof: the Strands implementation is genuinely non-trivial (real agent, simulated world), the time-lapse is the easiest end-to-end demo to follow (Presentation), and "thirty days autonomous, decisions exactly where needed" is the impact evidence the criteria ask to be demonstrated.
   - Kill-risk: a simulated world can be read as "not real" — the video's first 30 seconds must establish that the agent is real and only the data is seeded, or the whole framing is docked.

4. **The Standing Order (redefinition) — the product is not task execution but the trust contract: a list of standing orders the human grants once ("pay bills under $200 freely; reschedule within 48h; ask for everything else"), and the agent's entire job is to keep that contract honest, demoed as the contract plus its violation log**
   - Discards explicitly: the naive "agent that does your chores" reading — the minimal reading is a system that makes background autonomy auditable.
   - Minimal yet judge-proof: the gap between the two readings is the candidate — a contract-plus-log product is a non-obvious Strands use (Creativity) with a concrete artifact judges can hold, and the violation log is the accountability story the "background" constraint demands.
   - Kill-risk: a contract page is abstract until populated — it needs 8-10 lived-in standing orders with real history or it reads as a policy document, not a product.