---
problem: amazonappdev2026
method: inversion
date: 2026-09-02
---

Top 3 failure modes for this submission: (1) constraint violation — the rule that the
repo must actually call the track's required tech in code, not a README mention, is
mechanically checkable and a docked "Tech Implementation" score follows; (2) scope death —
four products, one window, and the design criterion rewards "complete, coherent" over
"started everywhere"; (3) judge apathy — the generic smart-home-assistant pitch is the
field's default and answers "genuine understanding of the ecosystem" with silence.

1. **In-Code Proof First** — removes constraint violation.
   - Mechanism: the repo README opens with a required-tech proof map — the exact import,
     entry point, or loaded MCP config line that calls each track SDK, linked to the
     source — and the first 30 seconds of the video show that path executing live.
   - Kill risk: opening with verification reads as lawyerly and spends the pitch's first
     minute on defense.
2. **One Track, Done Dead** — removes scope death.
   - Mechanism: a cut line published in the repo before the build — one track, three
     features, everything else named under "next" — and a demo script where every feature
     is independently demonstrable, so one failure still leaves a complete loop.
   - Kill risk: deliberately small scope can read as low ambition against a $138,000 pool.
3. **Name the Person, Name the Number** — removes judge apathy.
   - Mechanism: the pitch opens with one named user, one number, and a track priority
     quoted from the problem statement (Ring's caretaking, Bee's productivity, Fire TV's
     sports), so "credible case for customer needs" is answered in the first sentence.
   - Kill risk: a single-user opening can look narrow until the audience is widened, and
     the widening must be in the same minute.
4. **Anti-pitch: provably not the hub** — the entry judges do not want is a four-device
   "smart home hub" of unfinished features whose repo only mentions the SDKs in the
   README; the smallest design provably not that is one live end-to-end action, runnable
   from a clean checkout in under ten minutes, with the required tech visibly in code.
   - Kill risk: optimized for "cannot fail", the demo can land so safe it is unmemorable
     — the one live action has to carry the whole pitch.