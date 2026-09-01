---
problem: webmcp
method: cross-domain
date: 2026-09-01
---

Core loop, domain-neutral: a human and an agent of asymmetric skill and trust must both mutate one shared resource, without collision, and with something left to hold each of them accountable.

## Candidates

1. **Tower Clearance — every tool call is a filed flight plan; the human's UI is a control tower that shows the schedule and can hold, clear, or veto each pending call**
   - Source: airport operations — slot times and clearance, where aircraft get assigned time windows and the controller dispatches.
   - Mapping: tool calls enter a visible queue with slots (e.g., the agent earns a bounded budget of actions per minute); the app executes only cleared calls, so the "shared resource" has exactly one dispatch authority at a time.
   - Kill-risk: if the slot budget is too tight the agent feels crippled in the demo; tuning the throttle so it reads as safety, not lag, is the whole build.

2. **Surgical Timeout — destructive tools (delete, publish, pay) stage their change and freeze until a human completes a short verification checklist, then commit**
   - Source: hospital operations — the surgical safety timeout, where two parties independently verify before the high-risk step.
   - Mapping: the agent's `execute` returns a "staged" state instead of committing; the human's checklist (what/why/rollback) is the second verification, and the commit is a second, human-initiated tool call.
   - Kill-risk: checklist friction can look like bad UX if applied to low-risk calls too; it must trigger only on high-impact tools or judges will read it as cargo-cult.

3. **Mise Tray — creative tools (fetch, draft, render) do not commit results but plate them into a visible tray; a human expo reviews the tray and sends selected items to the real action**
   - Source: restaurant kitchens — mise en place and the expo station, where prepared ingredients wait at the pass until the expo calls "expedite."
   - Mapping: compound agent tasks decompose into prepared components (data fetched, copy drafted, image rendered) held in a staged tray; the human's one click per tray item is the "send," so humans and agents genuinely co-create rather than supervise.
   - Kill-risk: staging two many components turns the demo into a gallery of drafts; the tray must stay small (3-5 items) to read as craft, not clutter.

4. **Settlement Desk — the app is an escrow desk: the agent proposes a tool call with typed parameters, the human can counter-edit those parameters, and execution settles only the negotiated version**
   - Source: auctions and markets — escrow and two-sided settlement, where nothing moves until both counterparties' terms match.
   - Mapping: each proposed call shows its `inputSchema` values as editable fields; the agent's proposal and the human's edits form the settled parameters that `execute` finally runs — parameter-level negotiation instead of approve/reject.
   - Kill-risk: negotiating on parameters the human doesn't understand is busywork; it only works for a domain where parameter meanings are legible (e.g., a recipe or a budget), so the domain pick is make-or-break.

5. **Score Gate — the tool surface unlocks section by section as the shared plan advances, like an orchestra that may only play the current movement**
   - Source: orchestras — the score and the conductor's cues keep heterogeneous players in sync without each one deciding for itself.
   - Mapping: tools register themselves with a phase; an agent mid-plan can only call tools of the current phase, which prevents both chaos and the classic agent failure of jumping ahead, and the human sees which "movement" the pair is in.
   - Kill-risk: phase-gating a real workflow can deadlock when a legitimate action spans phases; the escape hatch (a "conductor override" the human grants) must be built, not hand-waved.