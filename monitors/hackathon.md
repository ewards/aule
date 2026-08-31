Run the Aule hackathon monitor.

1. Use web_fetch on `https://devpost.com/api/hackathons?challenge_status[]=open&per_page=50`.
   Do not use web_search: no search backend is configured on this profile.
2. Read `problems/INDEX.md` and note every `source_url` already tracked.
3. For each open hackathon whose URL is not tracked:
   - Fetch its detail page once (the devpost.com page from the API entry) to extract the
     problem statement, deadline, location, and judging criteria if present.
   - Create `problems/<slug>.md` from the template in `problems/INDEX.md`, status `new`.
   - Add its row to `problems/INDEX.md`.
4. Append one dated entry under `## Pending` in `inbox/REVIEW.md`:
   `New problems: <n> — <comma-separated titles>` (or `New problems: 0`).
5. Do not modify `ideas/`. Do not delete anything.

Final answer: exactly one line — `hackathon monitor: <n> new, <total> tracked`.