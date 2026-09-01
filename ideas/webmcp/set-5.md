---
problem: webmcp
method: inversion
date: 2026-09-01
---

Top 3 failure modes for this submission: (1) dead demo — WebMCP only exists in ChatGPT's in-app browser or flag-enabled Chrome, so a judge clicking the live URL in a normal browser sees an agent-less app, and any ChatGPT/model hiccup during the demo kills it; (2) shallow WebMCP Leverage — one token-gesture tool, judged a demo of the technology rather than a product; (3) judge apathy — another "assistant for X" with no named user and no number, so the "hard/impossible before" claim stays unproven.

## Candidates

1. **Simulated-Agent Fallback — the human UI is a complete product on its own, and an in-app "agent simulator" test mode calls the same registered `execute` functions, so the 90-second demo can run end-to-end without ChatGPT, a flag, or a live model**
   - Failure mode removed: dead demo from environment fragility (normal-browser judges, flag off, model outage).
   - Mechanism: the demo path is deterministic and pre-recorded from a real simulated run; the live ChatGPT path is the bonus, never the dependency.
   - Kill-risk: the simulator must genuinely invoke the same registered tools or the demo is fake and the WebMCP Leverage score collapses with it.

2. **Tool Coverage Gate — ship a fixed, complete tool surface (every mutation on the page has a tool) plus a self-test page that runs each tool with valid and invalid inputs and renders pass/fail, embedded in the submission and the repo README**
   - Failure mode removed: shallow token-gesture tooling — "thorough, skillful, non-trivial implementation" becomes provable rather than claimed.
   - Mechanism: schema quality (required fields, enums, typed error returns) plus the visible test matrix is the evidence layer for the Leverage criterion.
   - Kill-risk: the harness burns build time, and if the tools are undercooked the harness publicly proves it — it works only as a completion gate, not a side quest.

3. **Measured Baseline Pitch — the submission and demo open with a number: "an agent doing this task via UI scraping takes N steps and fails at M%; with WebMCP it is 3 tool calls," for one named, specific user whose real task is the app's default state**
   - Failure mode removed: judge apathy / the "so what" gap — no generic pitch, no unnamed audience, the "hard/impossible before" claim is demonstrated, not asserted.
   - Mechanism: the baseline is measured in the demo environment before building (scrape-attempt log), the four required submission questions are answered verbatim in order, and the default app state needs zero explanation in the video.
   - Kill-risk: the baseline number must be actually measured or it reads as invented — and if the measured gap is small, the whole pitch is built on a weak number.

4. **Human-Useful Gate (anti-pitch) — the submission judges do not want is a WebMCP tech demo: a page with toy tools serving no real user. The smallest provably-not-that design is one rule at the top of the build plan: a human who has never used an agent can complete the entire task usefully with the app alone**
   - Failure mode removed: the "demo of the standard, not a product" trap that kills Creativity & Ambition when the concept is just "but with tools."
   - Mechanism: every feature must first earn its place in the human-only flow; WebMCP is then strictly additive value on top of a real product.
   - Kill-risk: over-prioritizing the human flow can produce a mediocre app where the agent layer is a thin afterthought — the gate has to coexist with a Leverage gate, not replace it.