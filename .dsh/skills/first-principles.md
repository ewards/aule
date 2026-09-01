---
name: first-principles
description: Aule brainstorm technique - strip to hard requirements, discard inherited assumptions, rebuild the minimal system. Load before writing a FIRST-PRINCIPLES set for a shortlisted problem.
---

# First-principles set

Purpose: strip the problem to what is actually required and rebuild the
minimal system, discarding inherited assumptions.

## How to apply

1. List the hard requirements: the few constraints that hold no matter
   how it is built - what the judging criteria literally require, the
   deadline, the team's realistic build time, the platforms that must be
   supported.
2. List the inherited assumptions: things "hackathons usually include" or
   things the problem statement implies but does not require - a web UI,
   an LLM, a database, user accounts, a demo script, a mobile app.
3. For each assumption ask: "if I removed this, which hard requirement
   fails?" If none fails, remove it.
4. Rebuild: describe the smallest system that satisfies the hard
   requirements. That is candidate 1.
5. Candidates 2-3: take one removed assumption and ask what the freed
   capacity buys - redirect it at the weakest judging criterion.
6. Candidate 4 (optional): restate the core loop in one sentence. If the
   naive reading and the minimal reading differ, the gap itself is a
   candidate - the redefinition.

## Output

3-4 candidates. Each: a one-line title, the assumptions it discards named
explicitly, one line on why it is minimal yet judge-proof, one line of
kill-risk.