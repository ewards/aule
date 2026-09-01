---
name: scamper
description: Aule brainstorm technique - bend the seven SCAMPER moves against the naive solution. Load before writing a SCAMPER set for a shortlisted problem.
---

# SCAMPER set

Purpose: generate variations by bending each of seven moves against the
obvious solution to the problem.

## How to apply

First write the naive solution in one line: what 90% of teams would build
for this problem. Then work the seven moves. A move that yields nothing
gets a one-line note; keep the best 3-5 candidates across all moves.

- Substitute - which component (model, input, output, interface, user,
  judge) can be swapped? Replace the LLM with a retrieval or rule step,
  the human with an agent, text with voice or vision.
- Combine - merge the required function with an adjacent one nobody asked
  for but judges value: explainability, audit trail, cost meter.
- Adapt - what existing product or pattern already does this well
  elsewhere? Borrow its mechanics wholesale and adapt them to this
  constraint set.
- Modify/Magnify - exaggerate one dimension to the extreme (100x cheaper,
  100x faster, zero setup, works offline): what becomes possible? Also
  the mirror: what is the smallest version that still demonstrates the
  core?
- Put to other uses - who else has this exact problem (different domain,
  different user)? Reshape the build for that second user.
- Eliminate - remove a step the problem statement assumes (onboarding,
  login, dataset, GPU, human-in-the-loop). What breaks? The fix is the
  idea.
- Reverse - invert the flow: the object acts on the user, the judge sees
  the work before the pitch, the system starts from the answer and works
  backward.

## Output

3-5 candidates. Each: a one-line title, the letter that produced it, one
line of rationale, one line of kill-risk.