---
problem: agentic-cinema
method: first-principles
date: 2026-09-01
---

Hard requirements: a functional agent on Google Cloud (Gemini Enterprise Agent Platform) that actually calls a partner product/MCP (IBM, Grafana, Parallel, ClickHouse, or Replit) in code; a deterministic, multi-step agent solving enterprise friction in a real M&E workflow; hosted URL + 3-min demo video of the agent functioning as built + public licensed repo with all code, assets, run instructions; ~48h to build (deadline 2026-09-09); judged by partner + Google panel within one track.

Inherited assumptions that fail no hard requirement if removed: a web UI or chat, a database of our own, user accounts, live interactivity during the demo, multiple partner tools, a broad "analytics suite."

## Candidates

1. **The Unattended Memo — a fixed 6-step pipeline (partner fetch → Gemini analysis → scoring → partner fetch → synthesis → publish) that runs unattended on schedule on GCP; the hosted URL is the latest one-page memo plus a run log proving every partner call**
   - Discards explicitly: web UI/chat, user accounts, own database, live interactivity.
   - Minimal yet judge-proof: the judging emphasis ("deterministic, multi-step agent") is satisfied literally by the fixed step list; partner runtime use is provable from the log; the 3-minute video is a recorded real run, so demo day cannot fail.
   - Kill-risk: an unattended pipeline can read as "script, not agent" — the Gemini steps must do something a script demonstrably cannot, or the panel sees through it.

2. **One Real Friction, Instrumented — pick a single named, quantified enterprise friction (e.g., "the studio's weekly content performance review takes the data team two days and four handoff emails") and build the pipeline to kill exactly that loop, demoing the before/after**
   - Discards explicitly: multi-feature breadth, dashboards, generic analytics.
   - Minimal yet judge-proof: the Impact criterion asks for a credible, specific case for a real problem and audience addressed by the demo — one loop with numbers beats a suite of features, and the freed capacity goes to depth.
   - Kill-risk: the friction must be credible (named role, plausible time figure) or it reads as "we think this is useful."

3. **Deep-Drill Partner Integration — make the chosen partner the data spine: every step reads or writes through the partner (e.g., ClickHouse as the only store, every agent query routed through it), with an "integration depth" appendix in the repo listing each partner API called**
   - Discards explicitly: the auxiliary GCP database and multi-tool integrations in favor of one partner used deeply.
   - Minimal yet judge-proof: the panel includes the partner's own people, and a deep single-partner integration is exactly what they judge; the "imported and called in code" rule is met at every step, provably.
   - Kill-risk: partner account onboarding and API quotas can eat the build window before any code exists — the account must be secured first, not after.

4. **The Morning Memo (redefinition) — the product is not an agent but a deterministic scheduled job whose artifact (one decision-ready memo, every morning) is the product; the agent is its mechanism, and the demo sells the artifact, the determinism, and the partner depth**
   - Discards explicitly: the "agentic app" framing itself — the naive reading (an interactive media agent) versus the minimal reading (a job that produces one decision artifact on schedule).
   - Minimal yet judge-proof: the gap is the candidate — a memo job with a fixed step list is the smallest thing that still hits "deterministic, multi-step, enterprise friction, partner in the loop" on every judging line.
   - Kill-risk: "morning memo" is a familiar pattern; it wins only if the memo's domain detail is so specific the panel recognizes a real studio workflow in it.