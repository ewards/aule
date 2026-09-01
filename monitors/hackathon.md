Run the Aule hackathon monitor.

Rules:
- Work strictly sequentially and inline. Do not use background jobs, subagents,
  or any tool whose result arrives after your final answer: this process exits
  when you stop and any pending work is lost.
- Do not use web_search: no search backend is configured on this profile.
- Process at most 15 new hackathons this run; the rest wait for the next run.

Steps:
1. Repair: list `problems/*.md`. Any file whose slug is not a row in
   `problems/INDEX.md` is orphaned — read it and add its row before anything else.
2. Use web_fetch on `https://devpost.com/api/hackathons?challenge_status[]=open&per_page=50`.
3. For the first 15 open hackathons not yet tracked in `problems/INDEX.md`:
   - Fetch its detail page once to extract the problem statement, deadline,
     location, and judging criteria if present.
   - Create `problems/<slug>.md` from the template in `problems/INDEX.md`,
     status `new`.
   - Add its row to `problems/INDEX.md` immediately after creating the file.
4. Append one dated entry under `## Pending` in `inbox/REVIEW.md`:
   `New problems: <n> — <comma-separated titles>` (or `New problems: 0`).
5. Do not modify `ideas/`. Do not delete anything.
6. Before your final answer, re-read `problems/INDEX.md` and `inbox/REVIEW.md`
   and confirm your rows and entry are present on disk.

Final answer: exactly one line — `hackathon monitor: <n> new, <total> tracked`.