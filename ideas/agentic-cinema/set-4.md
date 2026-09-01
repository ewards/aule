---
problem: agentic-cinema
method: cross-domain
date: 2026-09-01
---

Core loop, domain-neutral: an unattended operator must run a multi-step job on expensive external equipment, produce a trustworthy artifact for a demanding client, and prove that the job actually ran.

## Candidates

1. **The Manifest — the pipeline is a parcel: every partner call and Gemini step emits a timestamped scan event with payload hash, and the artifact ships with its manifest; a missing or mismatched scan raises a visible exception**
   - Source: logistics and warehousing — track-and-travel manifests, where each checkpoint scan proves location and time and a gap triggers an exception.
   - Mapping: the "parcel" is one pipeline run; the "scans" are per-step events in the run log; the "exception queue" is where a failed or skipped step is held for human review instead of silently degrading.
   - Kill-risk: manifests are table stakes for observability — they only stand out if the exception path is also demoed (show one scan missing and the run held).

2. **Double-Scan Pipeline — every step is checked twice: an input hash must match the previous step's expected output and an output hash is recorded; a mismatch blocks the pipeline the way a med-scan mismatch blocks administration**
   - Source: hospital operations — closed-loop medication administration, where barcodes are scanned at dispense and again at administration and any mismatch stops the dose.
   - Mapping: the "dispense" is a step emitting results, the "administration" is the next step consuming them; the block-on-mismatch is what makes "deterministic" verifiable rather than asserted.
   - Kill-risk: strict blocking can stall a real run on benign LLM variance (whitespace, ordering) — the hash normalization must be tuned or the demo shows a pipeline that trips itself.

3. **Seeded Replay — the run is replayable from a seed: same seed plus same data snapshot reproduces the identical artifact, and the demo runs the pipeline twice and diffs the outputs to prove it**
   - Source: game design — deterministic lockstep and replay verification, where the whole game state is reproducible from seed and inputs.
   - Mapping: the "seed" fixes model parameters and step order, the "data snapshot" is the partner query pinned in time, and the diff of two runs is the determinism exhibit the judging emphasis asks for.
   - Kill-risk: full determinism over LLM outputs is not guaranteed even at temperature 0 — the diff must compare the artifact's structured fields, not raw prose, or the proof fails in front of the panel.

4. **Copy Desk Gate — a copy-desk step reviews the draft artifact and footnotes every factual claim to the partner query that produced it; claims without a supporting footnote are blocked from publication**
   - Source: newsrooms — the copy desk and fact-check, where nothing ships without sourcing and edit notes accompany the piece.
   - Mapping: the "copy desk" is a deterministic validation step over the agent's draft; the artifact is published with its edit notes, turning explainability into a shipping gate rather than a slide.
   - Kill-risk: auto-footnoting free-form prose is a research problem; the artifact's claims must be constrained (a fixed template of claim slots) or the gate becomes hand-tuning for one demo sentence.

5. **Pre-Flight Gate — before each run, the pipeline signs a readiness checklist (partner endpoint reachable, quota budget, step budget, data freshness) and logs every deviation in a running logbook**
   - Source: aviation — the pre-flight checklist and technical logbook, where no flight departs without signed-off checks and every deviation is entered in the log.
   - Mapping: the checklist gates the run start, so the demo can show a run correctly refusing to launch (e.g., simulated quota failure) — a negative test that proves the determinism machinery.
   - Kill-risk: a checklist that always passes is invisible; it needs a realistic failure to demonstrate, and an over-strict checklist makes the agent look fragile rather than disciplined.