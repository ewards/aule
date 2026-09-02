---
problem: amazonappdev2026
method: cross-domain
date: 2026-09-02
---

Core loop, domain-neutral: many devices each hold a fragment of one household situation,
and something must turn those fragments into one coherent, confirmed action in seconds.

1. **The Tower** — source: air traffic control, slot assignment and controller handoff.
   - Mapping: the MCP server issues one active action per room (a slot), a visible
     "who has the floor" state shows it, and a doorbell event takes the slot from the
     movie with a standard handoff phrase before it yields it back.
   - Kill risk: strict one-action-at-a-time may feel like a limitation, not a product,
     when judges compare against freeform multi-task demos.
2. **The Charge Nurse's Board** — source: hospital operations, the unit-wide status
   board and the SBAR handoff.
   - Mapping: every household event gets a tile with exactly four lines — Situation,
     Background (Bee/Ring context), Assessment (what the agent decided), Recommendation
     (what asks for a human) — and Fire TV is the board every device writes to.
   - Kill risk: a board of four-line tiles can read as a wall of text if the tile
     discipline slips.
3. **The Conductor's Downbeat** — source: orchestras, the conductor aligns independent
   players to a shared downbeat instead of conducting each part.
   - Mapping: the MCP server publishes the household's phase (arrival / focus / rest)
     once, and each device locally renders what that phase means for it — no per-device
     command traffic in the demo path.
   - Kill risk: "shared phase, local rendering" is elegant but makes it harder to show
     each device's required tech actively doing work in the 3-minute video.
4. **First-Ten-Seconds Dispatch** — source: emergency dispatch, response pre-staged
   before the call ends.
   - Mapping: while Ring is still classifying a motion event, the system has already
     pre-staged the Fire TV tile and the confirmation flow, so the moment classification
     lands, the response is one render away.
   - Kill risk: pre-staging the wrong action is a visible error in a live demo; the
     classification must be good enough to be safe to show.