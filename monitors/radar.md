Run the Aule radar monitor (hackathon discovery: Devpost + HackerEarth).

Rules:
- Work strictly sequentially and inline. Do not use background jobs or subagents:
  this process exits when you stop and any pending work is lost.
- Do not use web_search: no search backend is configured on this profile.
- Ingest at most 15 new hackathons this run; the rest wait for the next run.
- Use today's date from the request context for all deadline math.

Sources (fetch both, in this order):
1. Devpost — pages 1..5 of
   `https://devpost.com/api/hackathons?page=<N>&status[]=open&status[]=upcoming&per_page=40`
   (the server caps per_page at 40; total_count is ~180; stop early when a page
   returns no items or page*40 >= meta.total_count).
2. HackerEarth — `https://www.hackerearth.com/chrome-extension/events/`
   Keep only items whose url contains `/hackathon/`. Deadline is `end_tz`
   (ISO with timezone), falling back to `end_date`.

Steps:
1. Repair: list `problems/*.md`. Any file whose slug is not a row in
   `problems/INDEX.md` is orphaned — read it and add its row before anything else.
2. Fetch both sources. Source health: if a source returns zero items, or more than
   half its items lack a parseable deadline, note `source-health: <source> — <symptom>`
   in the review entry at step 6.
3. Deadline drift: for every already-tracked hackathon that appears in a listing,
   compare the listing's deadline with the stored entry's `deadline` field. If it
   moved, update the `deadline:` in the entry file and its INDEX row, and record
   `DEADLINE CHANGED: <title> <old> -> <new>`.
4. 72-hour gate: every tracked hackathon whose deadline falls within the next 72
   hours and whose status is not `submitted`, `won`, or `lost` is urgent. List these
   at the top of the review entry as `PRIORITY 72h: <title> — <deadline> (<status>)`.
5. For the first 15 not-yet-tracked hackathons (dedupe by source url):
   - Fetch its detail page once to extract the problem statement, judging criteria,
     prizes, and eligibility if present.
   - Create `problems/<slug>.md` from the template in `problems/INDEX.md`,
     status `new`, with `source: devpost` or `source: hackerearth` as applicable.
   - Whitelist: if the organizer or title matches any pattern in `whitelist.yaml`,
     add a `whitelist: <matched-organizer>` line to the frontmatter.
   - Add its row to `problems/INDEX.md` immediately after creating the file.
6. Append one dated entry under `## Pending` in `inbox/REVIEW.md` containing, in
   this order: the PRIORITY 72h lines, the DEADLINE CHANGED lines, then
   `New problems: <n> — <titles>` (whitelisted titles first, each prefixed `⚑`;
   or `New problems: 0`), and any source-health lines.
7. Do not modify `ideas/`. Do not delete anything.
8. Before your final answer, re-read `problems/INDEX.md` and `inbox/REVIEW.md`
   and confirm your rows and entry are present on disk.

Final answer: exactly one line —
`radar monitor: <n> new, <total> tracked, <p> priority-72h, <d> deadline-changed`.