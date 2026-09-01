---
problem: agentic-cinema
method: scamper
date: 2026-09-01
---

Naive solution: a "media analytics copilot" — a chat UI where the agent answers questions about viewing data via one partner MCP tool and writes a report.

## Candidates

1. **The Call Sheet Agent — the agent first writes a film call sheet for the job (which partner MCP tools, in what order, with which inputs and budgets), then executes it and ticks off each line item, delivering the ticked call sheet plus the artifacts**
   - A (Adapt): borrows the call-sheet mechanic from film production itself and adapts it to agent orchestration.
   - Kill-risk: the call sheet must read as genuinely industry (roles, slots, times) or it degenerates into a cute Gantt chart in the demo.

2. **Run Receipt — every agent run emits a "receipt": the tools called in order, inputs/outputs, GCP and partner-API cost, and wall time; the final report footnotes every claim with the tool call that produced it**
   - C (Combine): merges the required agent with the audit trail and cost meter nobody asked for but an enterprise panel scores immediately.
   - Kill-risk: the receipt layer is pure overhead build time; if the underlying workflow is thin, the receipt documents the thinness rather than hiding it.

3. **Season Autopsy — the agent ingests a full season of transcripts plus viewing metadata overnight and outputs a one-page autopsy: what worked, what did not, and three concrete recommendations for the next season**
   - M (Modify/Magnify): exaggerates scale (one season, not one query) while keeping the output to one page so the demo stays sharp.
   - Kill-risk: no real season-scale dataset exists in 48h — a synthetic or licensed sample must be convincing or the Impact claim ("real workflow") cracks under a skeptical panel.

4. **Dubbing Floor Agent — reshaped for localization ops: the agent runs a dubbing/subtitling QC workflow — flagging sync offsets, regional issues, and rework candidates — using the partner tool as the data spine**
   - P (Put to other uses): same agent pattern, second user (localization floor managers) in a friction-heavy M&E workflow that is not another analytics copilot.
   - Kill-risk: audio sync checking is a genuine rabbit hole in 48h; the QC heuristics must stay shallow enough to demo and deep enough to be credible.

5. **Greenlight in Reverse — the agent takes a finished show's performance data and works backward, reconstructing which creative decisions likely drove the results, and writes a counterfactual memo for the greenlight committee**
   - R (Reverse): starts from the answer (the finished show's numbers) and works backward, inverting the usual "predict before release" pitch.
   - Kill-risk: counterfactual claims are unprovable — a skeptical enterprise judge can dock Impact for "says a lot, proves little" if the memo isn't anchored to specific tool-queried data.