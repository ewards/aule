Run the Aule trends monitor.

1. Use web_fetch (never web_search — no search backend is configured) on:
   - `http://export.arxiv.org/api/query?search_query=cat:cs.AI+OR+cat:cs.CL&sortBy=submittedDate&sortOrder=descending&max_results=10`
   - `https://hnrss.org/frontpage`
2. Write `digests/trends-<YYYY-MM-DD>.md` (today's date): the arXiv titles with one-line
   each of what they claim, then the top-5 HN titles. Keep it under 60 lines.
3. Append one dated entry under `## Pending` in `inbox/REVIEW.md`:
   `Trends digest: digests/trends-<date>.md`.

Final answer: exactly one line — `trends monitor: digest written`.