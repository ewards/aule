---
problem: zero-origin
method: scamper
date: 2026-09-02
---

Evidence note: the 10 problem statements are named in single clauses in the problem
file; moves below stay inside those clauses and the Round 1 format (PPT + pitch video,
no build), without inventing context.

Naive solution: an "AI dashboard for one of the finance problems" — a generic ML
dashboard deck (fraud detection or cash-flow prediction) with an architecture diagram,
the default move of 90% of the 92 participants.

- **S — The Alert That Reads Like a Human**: for the fraud statement, swap the output —
  the system's deliverable is not a flagged-transaction table but a plain-language story
  per alert ("what we saw, why it matters, what to do") delivered where the customer
  already is.
  - Rationale: the judging criterion "understanding of affected users" is answered by
    the format of the output, and the demo video can act out the story.
  - Kill risk: judges may score it as a UX layer, not an "innovative solution", since
    the detection itself stays unexamined.
- **A — The Eligibility Pre-Check Portal**: borrow the immigration/visa eligibility
  pre-check for the intelligent scholarship matching statement — a short structured
  questionnaire, scored against each scholarship's criteria, returning a ranked list
  plus a gap note ("you are short on criterion Y").
  - Rationale: eligibility auto-scoring is a proven pattern that maps one-to-one onto
    scholarship criteria, and the deck's innovation is the gap analysis, not the list.
  - Kill risk: a scholarship catalogue must exist and be current — the data burden is
    the whole build, and a stale catalogue sinks the feasibility claim.
- **M — One Number: Today's Runway**: magnify the cash-flow statement's 30 days down to
  its most decision-useful dimension — the single number a small business owner
  actually checks: days of runway left, updated daily from three inputs.
  - Rationale: shrinking the forecast to one number makes the pitch concrete and the
    10-day prototype believable at once.
  - Kill risk: "one number" can read as too thin against "innovative and feasible
    solution" — the deck must show the number changing a real decision.
- **E — The Validation-First Deck**: eliminate the product demo from Round 1 entirely —
  no screenshots, no architecture; the deck is problem identification and validation
  (field data, named users, numbers) plus a five-slide solution sketch, matching the
  Round 1 criteria order exactly.
  - Rationale: Round 1 judges clarity of problem identification/validation and user
  understanding first; nearly every competing deck spends its time on the product
  instead.
  - Kill risk: judges still expect to see the shape of a solution; a validation-only
    deck risks "where is the actual idea?" in the room.
- **R — The App That Asks Three Questions a Day**: invert the data-entry flow for the
  cash-flow statement — instead of a dashboard the business opens, the tool sends three
  daily questions (in? out? big bill coming?) and the 30-day view is a by-product of the
  conversation.
  - Rationale: the forecast stops depending on the user remembering to log; the system
    acts on the user, which is the freshest shape in a field of dashboards.
  - Kill risk: three daily pings can become spam — the pitch must show the ask/answer
    loop taking under ten seconds, or the engagement claim fails.

C (combine: fraud alerts + micro-financial-literacy lesson) did not clear the bar — the
educational overlay dilutes the product focus the design criterion rewards.