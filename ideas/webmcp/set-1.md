---
problem: webmcp
method: triz
date: 2026-09-01
---

Core contradiction: the app must be a precise, typed tool contract for the agent (strict `inputSchema`, predictable `execute`) and a forgiving, visual surface for humans at the same time — and a static tool API goes stale the moment app state changes.

## Candidates

1. **Self-Registering Plan Board — a Kanban that re-registers its own tools from live card state**
   - Principle 10 (Prior Action) + 15 (Dynamics): the tool surface is pre-computed ahead of each agent turn from the current board state, resolving "strict typed tools vs. a constantly mutating app state."
   - Judges see the leap: most WebMCP demos ship a static tool list; here the contract is a live projection of state — tools appear, gain parameters, and disappear as the board does, so an agent can never call a tool that would fail.

2. **Dry-Run Twin — the agent rehearses a multi-step plan against a shadow copy of the workspace before touching real data**
   - Principle 26 (Copying): a cheap shadow replica of the app state absorbs the agent's first attempt, resolving "the agent must act on real data directly and must not break it."
   - Judges see the leap: the product is a visible diff between twin and real workspace that a human approves — WebMCP as a safe rehearsal stage instead of a raw execution surface.

3. **Consent Mirror — every agent tool call is rendered as a visible, editable, vetoable action card in the human's UI**
   - Principle 13 (The Other Way Round): instead of the human driving the UI, the agent drives it and the human becomes the interceptor, resolving "more agent autonomy vs. less human trust in what it does."
   - Judges see the leap: the human surface *is* the tool-call stream — one coherent product experience where people and agents collaborate on every single action rather than on separate panes.

4. **Fallback Theater — when a tool call fails or the agent gets stuck, the app degrades visibly into a co-piloted UI mode and logs the gap as a "capability gap" badge**
   - Principle 22 (Blessing in Disguise): the failure mode of the structured path becomes the product, resolving "reliability of typed tool calls vs. robustness of the old scrape-the-UI way."
   - Judges see the leap: a public gap log turns WebMCP adoption into a measurable, improving metric for the site — the app is meaningfully better *together* precisely because it knows when the agent is failing.

5. **Selection-to-Parameter Composer — a human's live cursor and text selection are auto-injected as parameters into the next agent tool call**
   - Principle 28 (Mechanics Substitution): ambient sensing of the human's attention replaces explicit UI mechanics for agent input, resolving "agents must have exact inputs vs. humans express intent loosely."
   - Judges see the leap: the human stops filling out forms for their own agent — pointing at a paragraph is enough for the agent's `summarize`/`extract` tools, which is a genuinely new human+agent interaction pattern on the open web.