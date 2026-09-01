---
name: inversion
description: Aule brainstorm technique - enumerate what guarantees losing, then design the removal of the top failure modes. Load before writing an INVERSION set for a shortlisted problem.
---

# Inversion set

Purpose: design from the failure side - enumerate what guarantees losing,
then build the submission that systematically removes the top failure
modes.

## How to apply

1. List the ways this specific submission is most likely to fail or land
   mid-table: dead demo (dependency outage, API limit, model latency),
   scope death (unfinished features over polished ones), judge apathy
   (generic pitch, no named user, no number), constraint violation
   (missed rule, eligibility, prohibited API), and the "so what" gap
   (works, but the stakes are unclear). Sharpen each using the judging
   criteria in the problem file.
2. Rank the top 3 failure modes by how often they decide this kind of
   hackathon.
3. Candidates: for each top failure mode, one candidate that is the
   submission designed so the mode cannot occur - the removal is the
   feature (an offline-deterministic fallback path, a 90-second demo that
   cannot fail, a pitch that opens with the judges' criterion as its
   headline).
4. One final candidate: the anti-pitch - what would the entry be if it
   were the submission judges explicitly do not want, and what is the
   smallest design that is provably not that?

## Output

3-4 candidates. Each: a one-line title, the failure mode it removes, one
line of the mechanism, one line of kill-risk.