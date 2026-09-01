# Judging rubric

Used to (re)judge all of a problem's sets into `ideas/<slug>/ranked.md`.

## Criteria

Score every candidate from every set file on four criteria, 1-5 each:

- novelty - not the obvious first answer; a judge has not seen this
  framing this season
- feasibility - buildable by this team before the deadline; the demo
  cannot depend on a flaky external
- impact - the problem's stated harm or value, addressed for real
- judge-appeal - would a tired judge at item 23 of the day still
  remember this pitch five minutes later

## Weights

Default: 1/1/1/1. If the problem file's Context section states explicit
judging criteria, adjust the weights toward them (e.g. "judged on
novelty 50%" -> novelty 2, others 1). State the weights and the reason in
the ranked.md header.

## Procedure

1. List every candidate for the problem, by set file and title.
2. Score each on the four criteria. Be strict: a 4 must beat the median
   hackathon entry on that criterion, a 5 must be unusual. Two
   candidates rarely share a 5.
3. Total = sum of score x weight. Rank descending.
4. Rewrite `ranked.md` from scratch, but preserve any Decisions lines a
   human has already filled in.

## ranked.md format

Frontmatter: `problem: <id>`, `judged: <date>`, `weights: <n/f/i/j>`.

- A table: rank | idea (set: title) | novelty | feasibility | impact |
  judge-appeal | total
- `## Recommendation` - the top 3, each with one line of "why a judge
  picks it" and one line of kill-risk. If a set file contributed no
  candidate in the top 3, say so - the method may be wrong for this
  problem and the human can re-run it.
- `## Decisions` - one line per top-3 idea: accepted / rejected / park,
  to be filled in by the human. The monitor never writes this section.

## Discipline

- Re-judging replaces all scores; do not carry a previous run's totals
  into new sets.
- Score candidates, not titles: read the candidate's rationale before
  scoring it.