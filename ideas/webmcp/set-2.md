---
problem: webmcp
method: scamper
date: 2026-09-01
---

Naive solution: a "personal assistant dashboard" where a chat sidebar lets the agent do 2-3 trivial tools (search, add note, send message) on a boring CRUD page.

## Candidates

1. **Tool Ledger — a shared planning workspace where every tool call by any participant (human or agent) is written to a visible per-action ledger with inputs, outputs, and duration**
   - C (Combine): merges the required WebMCP tooling with an audit trail nobody asked for but every judge can score directly.
   - Kill-risk: if the underlying planning experience is weak, the ledger reads as an audit-log gimmick rather than a product.

2. **Agent Checkout — a small storefront where the shopping cart is a first-class WebMCP object the agent can inspect, mutate, and stage, with the human co-signing the final step**
   - A (Adapt): borrows the mechanics of the most battle-tested multi-step web flow (e-commerce checkout) and adapts them to a human+agent pair.
   - Kill-risk: real payment is out of scope for a hackathon; a convincingly faked checkout risks scoring shallow on Execution and Impact.

3. **Auto-Tooler — a browser extension plus inspector that scans a page's DOM and actions and emits paste-ready `document.modelContext.registerTool(...)` blocks for site owners**
   - E (Eliminate): removes the hand-writing of name/description/inputSchema that the challenge assumes is the open web's bottleneck — zero setup for site owners.
   - Kill-risk: deriving high-quality tool schemas from a DOM is genuinely hard to do well in 48h; a mediocre generator undercuts the WebMCP Leverage score.

4. **Result-First Journal — an app that opens on the finished artifact and replays the step-by-step WebMCP tool trail that produced it, so the judge sees the work before the pitch**
   - R (Reverse): inverts the usual "ask the agent, watch it work" demo into evidence-first storytelling built on the tool-call log.
   - Kill-risk: the replay is a presentation layer, not a product — an unimpressive artifact won't be rescued by the trick.

5. **One-Tool Monolith — the smallest version taken to the extreme: an entire page driven by a single `execute` tool, with the human UI as a pure read-only mirror of its state**
   - M (Modify/Magnify): exaggerates "zero setup, one entry point" to prove the standard can carry a whole app on one tool call.
   - Kill-risk: one monolithic tool is exactly what granular `inputSchema` design argues against — a judge scoring "thorough, skillful implementation" may read it as wrong-shaped.