---
problem: agentic-cinema
method: triz
date: 2026-09-01
---

Core contradiction: the agent must be autonomous enough to be impressive and deterministic enough to satisfy the judging emphasis on "a deterministic, multi-step agent that solves enterprise friction" — improving autonomy worsens predictability, and vice versa.

## Candidates

1. **Contract Rail Pipeline — a 5-step media workflow (raw audience/video analytics → next-episode content brief) where every step is an LLM call constrained by a JSON input/output contract, an automatic validator checks each contract, and violations trigger a repair agent before a deterministic fallback**
   - Principle 23 (Feedback) + 15 (Dynamics): sensing that corrects the output resolves "autonomous agent vs. deterministic judging" — determinism is engineered around the LLMs, not by removing them.
   - Judges see the leap: the demo can show a validator catching a bad step and the repair agent fixing it live — non-determinism made visible and contained, which no "prompt chain" demo can show.

2. **Twin Run Auditor — every agent pipeline run is paired with a shadow control run (a cheap deterministic rule-based version of the same workflow) and the deliverable includes a diff report: where the agent beat the control, where it drifted, and drift past threshold routes to human review**
   - Principle 26 (Copying): a shadow replica of the good object resolves "impressive autonomy vs. enterprise predictability."
   - Judges see the leap: the product is the diff — an artifact the panel can open and read, turning enterprise trust from a claim into a visible document.

3. **Fallback Cushion Catalog — each pipeline step ships with a pre-computed deterministic fallback (cached result or rule-based default), so a live demo can never stall; a badge shows how many cushions the last 10 runs consumed**
   - Principle 11 (Beforehand Cushioning): a safety margin prepared in advance resolves "live demo reliability vs. an agent that actually does the work."
   - Judges see the leap: the fallback catalog becomes the architecture exhibit — the agent is allowed to be non-deterministic because the system prepaid for failure step by step.

4. **Three-Takes Studio — the agent deliberately runs three takes of the same M&E task (e.g., three alternate trailer narrations or thumbnail concepts) and an evaluator agent ranks them; the variance is the creative deliverable, not a bug**
   - Principle 22 (Blessing in Disguise): using the harmful factor as the solution resolves "LLM variance is a liability" by making variance the creative engine.
   - Judges see the leap: while every other team spends time suppressing variance, this demo shows one prompt producing three distinct, ranked outputs — non-determinism as the product in a media context where multiple takes are normal.

5. **Checkpoint Time Machine — the multi-step M&E job (processing a season's worth of assets) runs as a resumable agent pipeline with explicit checkpoints persisted to Google Cloud; the demo kills the run at step 3 and resumes it from the checkpoint**
   - Principle 17 (Another Dimension): adding the time dimension (persisted, replayable runs) resolves "long multi-step reliability vs. a 3-minute demo."
   - Judges see the leap: resumability is an enterprise property almost no hackathon agent demonstrates, and kill-and-resume is a clean 60-second demo beat that proves the pipeline survives real failure.