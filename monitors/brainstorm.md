Run the Aule brainstorm monitor (ideation for shortlisted problems).

Rules:
- Work strictly sequentially and inline. Do not use background jobs or
  subagents: this process exits when you stop and any pending work is lost.
- Work only from files in this repository. Do not fetch the web and do
  not use web_search: ideas must rest on the problem file's own problem
  statement, context, and judging criteria. If a problem file is thin,
  say so in a one-line evidence note in its set file; do not invent
  context.
- Process at most 3 problems this run; the rest wait for the next run.
- Use today's date from the request context for all date math.

Technique files (read each file before writing its sets; fixed order):
1. `skills/triz.md` - method `TRIZ`
2. `skills/scamper.md` - method `SCAMPER`
3. `skills/first-principles.md` - method `FIRST-PRINCIPLES`
4. `skills/cross-domain.md` - method `CROSS-DOMAIN`
5. `skills/inversion.md` - method `INVERSION`
Judging: `skills/judging-rubric.md` (read once, applied at step 4).

Steps:
1. Close expired: every `problems/*.md` with `status: shortlisted` whose
   `deadline` is earlier than today gets `status: closed` in the file and
   its INDEX row. Record `CLOSED: <title> (deadline <deadline>)` for each.
2. Select the batch: among entries with `status: shortlisted`, take at
   most 3, whitelisted (a `whitelist:` frontmatter line) first and then
   nearest deadline, skipping any problem that already has set files for
   all 5 methods (fully ideated). If none is selected, skip steps 3-5.
3. For each selected problem, in the fixed technique order, for each
   method that does not yet have a set file in `ideas/<slug>/`:
   - Read `problems/<slug>.md` fully and the technique file.
   - Create `ideas/<slug>/set-<n>.md` where `<n>` is the next free
     number, with frontmatter `problem: <slug>`, `method: <METHOD>`,
     `date: <today>`, and the candidate count the technique file
     specifies.
   - Create `ideas/<slug>/` if it does not exist.
4. Judge: for each selected problem, (re)write `ideas/<slug>/ranked.md`
   from all of its set files per `skills/judging-rubric.md`.
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