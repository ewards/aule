---
problem: nebiusglobalaihackathon
method: first-principles
date: 2026-09-02
---

Hard requirements: one chosen track with a working project; must run on Nebius Token
Factory or Nebius AI Cloud using at least one NVIDIA open source model; 3-min public
video that shows Nebius + the model actually being used (Physical AI: 1+ min hardware
clip); public repo with visible license and README highlighting the model and Nebius;
tool feedback; judging on tech implementation, design (complete, not a PoC), potential
impact (specific problem and audience), quality of the idea (non-obvious, genuine
understanding).

Inherited assumptions checked: chat UI, multi-model stack, free-form generation in the
critical path, accounts/onboarding, multi-user, mobile app, "app" as in consumer app.

1. **The One-Model Pipeline** — Best Apps track: one Nemotron model via Token Factory
   owning one narrow workflow end-to-end (fetch, classify, draft, act) behind a single
   demo page.
   - Discards: multi-model stack, chat UI, accounts, multi-user, mobile.
   - Minimal yet judge-proof: the 3-minute video can show the required stack directly
     (Token Factory calls, model in the loop), the demo URL is one page that cannot
     confuse a judge, and impact rests on one specific pain.
   - Kill risk: one model, one workflow is the shape of every PoC; "not just a PoC"
     is the criterion this candidate must beat with the workflow choice alone.
2. **The Model Is the API** — the product is a strict service contract ("send X, receive
   schema-verified Y with sources"), and the web app exists only to demo the contract.
   - Discards: chat, multi-model, onboarding; redirects freed capacity at quality of the
     idea — the contract's guarantees (schema, latency, citations) are the creative part.
   - Minimal yet judge-proof: a contract is verifiable in 3 minutes and in the code,
     which is the strongest possible answer to "effective use" and "complete, not PoC".
   - Kill risk: an API has no face for a tired judge; the video needs one concrete,
     emotionally legible consumer of the contract.
3. **One Named User** — Personal AI track built for one persona end to end: a home
   researcher's lab notebook — persistent memory of experiments, reusable skill
   templates, tools limited to Tavily and files in the user's own Nebius workspace.
   - Discards: multi-user, chat-first UI (a notebook surface instead), mobile, general
     assistant scope.
   - Minimal yet judge-proof: "credible, specific case for a real problem and audience"
     is answered by the persona, and "keep your data under your control" is the track's
     own language, so the privacy claim is not an add-on.
   - Kill risk: a niche persona can read as small; the demo must show the assistant
     doing work in minute one, not explaining the persona.
4. **The Whole-Workflow Claim (redefinition)** — naive reading: build an AI app on
   Nebius with Nemotron; minimal reading: prove one open model, properly scoped, owns an
   entire workflow that teams currently stitch across four tools. The pitch's headline
   is the workflow, not the model.
   - Discards: chat UI, multi-model, consumer-app framing; keeps only Token Factory,
     one Nemotron instance, and the workflow's real inputs/outputs.
   - Minimal yet judge-proof: "creative, non-obvious use" becomes a demonstrable
     before/after (four tools → one open model), which is the gap the criterion asks
     about.
   - Kill risk: "workflow automation" is a crowded genre this season; the specific
     workflow chosen carries the entire novelty budget.