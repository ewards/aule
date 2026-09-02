---
problem: nebiusglobalaihackathon
method: cross-domain
date: 2026-09-02
---

Core loop, domain-neutral: one open model (or a small family) must own a whole
end-to-end workflow on infrastructure the team controls, and prove it concretely in
three minutes.

1. **The Expediter's Pass** — source: kitchens and food service, the expo who calls each
   plate ready before it leaves the pass.
   - Mapping: the agent as expediter — nothing reaches the user's output (inbox, commit,
     send) until the pass-gate calls it ready: every artifact is checked against the
     output spec, and the gate's call is visible in the UI ("ready / hold / send back").
   - Kill risk: a gate that holds good output as often as bad output reads as
     bureaucracy, not a product.
2. **The Intermodal Container** — source: logistics and warehousing, the container
   standard that lets one cargo unit move across truck, ship, and rail.
   - Mapping: the skill contract as container — one thin interface so the same skill
     runs on Token Factory, Nebius Serverless Endpoints, and (for Physical AI) a Jetson
     edge device; the demo is the same skill executed on two substrates.
   - Kill risk: "runs anywhere" is the claim, but demonstrating two substrates live
     doubles the failure surface in a 3-minute video.
3. **The Five-Item Checklist** — source: hospital operations, the surgical safety
   checklist that gates the highest-stakes moment.
   - Mapping: a model-call checklist — before any high-stakes call (send, delete,
     commit, spend), five visible checks run: input schema, token budget, timeout,
     fallback, audit log — pass/fail shown in the UI the way a surgical timeout is.
   - Kill risk: five checks on every call adds latency to the demo path; the checks must
     be fast enough to watch, or the video hides the thing that is the product.
4. **Sectionals Before the Concert** — source: orchestras and ensembles, sectionals —
   each section rehearses to a fixed cue so the full performance is assembly, not
   invention.
   - Mapping: every module (writer, critic, verifier) rehearses against fixed I/O
     contracts with a recorded "cue", and the 3-minute video is the concert — the
     harness that proves each section works is shipped as the demo.
   - Kill risk: demo reliability as a shipped feature is meta; a judge may see test
     infrastructure rather than a product they would use.