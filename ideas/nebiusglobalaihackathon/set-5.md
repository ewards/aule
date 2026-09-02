---
problem: nebiusglobalaihackathon
method: inversion
date: 2026-09-02
---

Top 3 failure modes for this submission: (1) constraint violation — the mandatory
Nebius + NVIDIA stack, the video requirement that it actually be shown, the visible
license, and the README emphasis are all mechanically checkable, and Tech Implementation
is literally defined as "effective use of Nebius + NVIDIA models"; (2) judge apathy — the
default entry is another general Nemotron wrapper, which answers "creative, non-obvious
use" with silence; (3) scope death — the Design criterion explicitly says "complete,
coherent product experience, not just a PoC", and four tracks invite over-scoping.

1. **The Stack Is the First 60 Seconds** — removes constraint violation.
   - Mechanism: the video's first minute is a live Token Factory walk — workspace,
     Nemotron model selected, the actual API call and response — and the README opens
     with the same 60-second stack map; the video requirement becomes the strongest,
     most concrete moment of the pitch.
   - Kill risk: opening with plumbing spends the hook; a judge at item 23 may be asleep
     by the time the product finally appears.
2. **Name the Audience, Number the Pain** — removes judge apathy.
   - Mechanism: the pitch opens with one named audience, one number, and the workflow
     the model owns ("home researchers: 40 papers a week, 6 hours of triage, now one
     model on open infrastructure"), so "credible, specific case for a real problem and
     audience" is answered in the first sentence and the non-obviousness rides on the
     workflow choice.
   - Kill risk: the narrower the audience, the smaller the impact case; the number must
     be real, because a specific fake is worse than a vague true.
3. **Three Features, Cut Line Published** — removes scope death.
   - Mechanism: the cut line (three features, each independently demonstrable, everything
     else under "next") is published in the repo before the build, and the demo script
     is timed so one failed feature still leaves two complete loops — depth in three is
     how "not just a PoC" gets satisfied.
   - Kill risk: three features can look timid against "build the next frontier of AI"
     in a $50,000 global field.
4. **Anti-pitch: provably not a demo of a demo** — the entry judges do not want is a
   flashy chat UI whose video never shows the required stack, whose README says "uses
   NVIDIA models" without showing it, and whose pitch sells "open infrastructure" as a
   benefit to users who do not care who owns the infrastructure; the smallest design
   provably not that is a live call panel (model, tokens, latency visible during the
   whole demo) and a pitch that states the single user benefit in the user's language.
   - Kill risk: an always-on call panel can turn the product into an observability
     dashboard — the panel must stay glanceable, a second window, not a second product.