Run the Aule brainstorm monitor (ideation for shortlisted problems).

Rules:
- Work strictly sequentially and inline. Do not use background jobs or
  subagents: this process exits when you stop and any pending work is lost.
- Write as you go: as soon as you have composed one artifact (one set
  file, or one ranked.md), write it to disk immediately, and only then
  start composing the next. Never draft more than one artifact's content
  in a response: a response that runs too long dies and loses everything
  not yet written to disk.
- Work only from files in this repository. Do not fetch the web and do
  not use web_search: ideas must rest on the problem file's own problem
  statement, context, and judging criteria. If a problem file is thin,
  say so in a one-line evidence note in its set file; do not invent
  context.
- Process at most 3 problems this run; the rest wait for the next run.
- Use today's date from the request context for all date math.

Techniques: the five method playbooks and the judging rubric are
installed skills - `triz`, `scamper`, `first-principles`,
`cross-domain`, `inversion`, `judging-rubric`. Load a skill with the
`skill` tool before using it; do not write a set from memory of the
technique.

Steps:
1. Close expired: every `problems/*.md` with `status: shortlisted` whose
   `deadline` is earlier than today gets `status: closed` in the file and
   its INDEX row. Record `CLOSED: <title> (deadline <deadline>)` for each.
2. Select the batch: among entries with `status: shortlisted`, take at
   most 3, whitelisted (a `whitelist:` frontmatter line) first and then
   nearest deadline, skipping any problem that already has set files for
   all 5 methods (fully ideated). If none is selected, skip steps 3-5.
3. For each selected problem, in the fixed order triz, scamper,
   first-principles, cross-domain, inversion, for each method that does
   not yet have a set file in `ideas/<slug>/`:
   - Load the method's skill, then read `problems/<slug>.md` fully.
   - Compose the set and immediately write `ideas/<slug>/set-<n>.md`,
     where `<n>` is the next free number. Frontmatter: exactly
     `problem: <slug>`, `method: <skill name>`, `date: <today>`. Body:
     the candidates the skill's Output section specifies, in its format.
   - Create `ideas/<slug>/` if it does not exist.
4. Judge: load the `judging-rubric` skill once. For each selected
   problem, (re)write `ideas/<slug>/ranked.md` from all of its set files,
   writing each ranked.md to disk before starting the next problem.
5. Lifecycle: a problem that now has set files for all 5 methods gets
   `status: ideated` in the file and its INDEX row; record
   `IDEATED: <title> — <total candidates> candidates, top: <rank-1 idea
   title>`. A problem still missing methods keeps `shortlisted` and
   records `IDEATING: <title> — <k>/5 methods (added: <methods this run>)`.
6. Append one dated entry under `## Pending` in `inbox/REVIEW.md`
   containing, in this order: the CLOSED lines, the IDEATED lines, the
   IDEATING lines (or `no eligible problems`).
7. In `problems/`, modify only the status line of files whose status you
   changed, and only their status cell in `problems/INDEX.md`. Do not
   modify `digests/`, existing set files, or the Decisions section of any
   `ranked.md`. Do not delete anything.
8. Before your final answer, re-read `inbox/REVIEW.md` and each
   selected problem's `ranked.md`, and confirm they are present on disk.

Final answer: exactly one line —
`brainstorm monitor: <p> problems, <s> sets, <i> fully-ideated, <c> closed`.