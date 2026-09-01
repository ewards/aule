---
problem: agentsforhumans
method: inversion
date: 2026-09-01
---

Top 3 failure modes for this submission: (1) the "another app people open and manage" trap — building a dashboard/chat product is literally the anti-pattern the problem statement rejects, and it fails Design and Creativity simultaneously; (2) dead demo — live payment/email/scheduling integrations flaking in the 5-minute video or when the judge clicks the (optional but higher-scoring) live link, on a $50 AWS credit; (3) PoC detection — the Design criterion explicitly says "complete, coherent product experience, not just a PoC," and empty states, missing history, and absent error paths are how judges tell a PoC from a product.

## Candidates

1. **Zero-Open Guarantee — the human never opens an app: the agent runs on a schedule and the documented primary interface is exactly one daily email digest plus exception alerts; the video shows a full working day in which the app is never opened**
   - Failure mode removed: the "another app people open and manage" trap — structurally, the product works best when not opened, so the reading cannot stand.
   - Mechanism: the submission text names the inbox as the interface; the report page exists as the audit surface, and the demo's quietest beat is its absence of an app.
   - Kill-risk: a product with no visible surface can read as "no product" under the Design criterion — the report page must still be excellent, just secondary.

2. **Record-Once, Replay-Always — the entire 5-minute video is captured from one deterministic seeded run with no live third-party dependencies; the live demo link, if submitted, replays the same seeded scenario with the real Strands agent executing live, so "live" is safe and the only external dependency is Bedrock, inside the $50 credit**
   - Failure mode removed: dead demo — the video cannot fail on demo day, and the live link cannot fail in front of a judge.
   - Mechanism: fixed world, real agent; the replay endpoint is the live link, which is also the easiest thing to keep running.
   - Kill-risk: "no live data" can read as unimpressive against "working project" — keep exactly one live, real call (e.g., a genuine calendar lookup) inside the recorded video for credibility.

3. **History First — the submission boots with thirty days of simulated ledger history already populated: entries, approvals, corrections, and one real failure with its recovery; every screen the judge sees has content, and the error path is demonstrated from day 12's incident, not from a contrived "watch it fail" moment**
   - Failure mode removed: PoC detection — "complete, coherent product experience" is shown, not claimed, because the product's memory predates the demo.
   - Mechanism: the seeded run that builds the history is the same deterministic pipeline used for the video, so history, video, and code are one artifact.
   - Kill-risk: fabricated history must be internally consistent (amounts, dates, causality) — sloppy seeding is worse than an empty state, so the generator's realism is the critical path.

4. **Discovery Demo (anti-pitch) — the entry judges do not want is a task manager with an AI chatbot bolted on: an app you open, a list of tasks, a chat sidebar, zero background. The smallest provably-not-that design is one rule: the agent has already been running for thirty simulated days before the video starts, and the demo is the first human looking at the results — the demo is discovery, not usage**
   - Failure mode removed: the chat-sidebar assistant frame that would lose Creativity & Originality ("non-obvious use of Strands") and the problem statement's own premise.
   - Mechanism: the video's first frame is the agent's own daily digest arriving in an inbox, not a login screen.
   - Kill-risk: "discovery" framing demands that the thirty days of history be interesting enough to watch — if the ledger is boring, discovery reveals nothing and the pitch deflates.