---
problem: webmcp
method: first-principles
date: 2026-09-01
---

Hard requirements: a live web app registering real tools via `document.modelContext.registerTool` (thorough, non-trivial); one coherent product experience that is meaningfully better when human+agent use it together; a credible specific problem/audience; a novel concept; live URL + <3min demo video + public licensed repo; ~48h to build (deadline 2026-09-03).

Inherited assumptions that fail no hard requirement if removed: an LLM backend inside `execute` (the model lives on the agent side, not the app side), a database, user accounts, a chat sidebar, human input controls as the primary interface.

## Candidates

1. **The Deterministic Board — one shared page (plan/itinerary/checklist) where every tool's `execute` is a pure, typed function over shared state; no LLM, no DB, no auth, no chat UI**
   - Discards explicitly: LLM backend, database, user accounts, chat sidebar.
   - Minimal yet judge-proof: WebMCP Leverage comes from 5-8 tightly designed tools with real schemas and error paths, Execution from a single coherent page, and the "impossible before" story is the agent mutating the exact DOM the human is watching — all demoable with zero API keys and zero outage risk.
   - Kill-risk: a bare board can feel thin in a 3-minute video — "meaningfully better together" must land in the first 60 seconds or Impact suffers.

2. **No-Key Field Intake — a deterministic intake/onboarding coordinator for one specific underserved user (e.g., a clinic front desk or community organizer): the agent fills and stages paperwork through typed tools while the non-technical human reviews the same live form**
   - Discards explicitly: LLM inside the app (all `execute` logic is rules), database (session state), accounts (per-submission credentials only).
   - Minimal yet judge-proof: zero-cost hosting and zero inference dependency make the live demo and judge re-runs bulletproof, and the audience is named and credible, which is exactly what the Potential Impact criterion asks for.
   - Kill-risk: the audience must be specific enough to read as a real problem, not "forms but for agents."

3. **Agent-First Console — the app's primary interface is the tool surface itself; the human view is a live animated mirror of state changes and tool calls, i.e., the human is an auditor, not a user**
   - Discards explicitly: the assumption that the web app must present human input controls at all.
   - Minimal yet judge-proof: one page, one state store, a log-renderer — tiny build surface — while the inverting human role scores directly on Creativity & Ambition without sacrificing a coherent experience (Execution).
   - Kill-risk: a judge reading "product experience" strictly for humans may dock it; the submission text must frame the human role as deliberate supervision.

4. **The Page as Contract — not an app about an artifact but the artifact itself: a living document (e.g., a team release plan) in which every section registers its own tools, so the document and the tool API are one object**
   - Discards explicitly: the separation between "content" and "tooling" that most WebMCP demos inherit (app with a sidebar of tools).
   - Minimal yet judge-proof: the redefinition (product = the shared object both species of web user read and write) is a different concept from every "assistant for X" pitch, and the build is one page plus per-section tool registration.
   - Kill-risk: "document with tools" can read as a novelty if the document's domain isn't something judges feel is genuinely hard for agents to do via the old UI-scraping way.