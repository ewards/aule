# Aule operations

Day-to-day runbook: running monitors, triaging the queue, recording
decisions, and the failure modes already seen in the field.

## Components

- **Profile `aule`** — `profile/`, symlinked to `~/.dsh/profiles/aule`.
  Bundles `dsh-base` + `dsh-headless`; the campus model route and the
  gateway wire quirks (reasoningEfforts `xhigh`/`medium`/`low` only,
  `supportsDeveloperRole: false`, `tool-web` fetch override) are
  documented in `profile/cordis.patch.yml` comments. `SOFIE_API_KEY`
  lives in `~/.dsh/.env` (mode 600).
- **cron** (`crontab -l` for the user running the workstation):
  nightly `06:07` runs `radar.md; brainstorm.md` as one sequential
  line; Mondays `06:23` run `trends.md`. Sequential because both
  nightly monitors write problem status cells, INDEX, and REVIEW.
- **`monitors/run.sh`** — one headless dsh task per invocation:
  sources `~/.dsh/.env`, resolves nvm's node for cron's minimal PATH,
  runs from the aule root so the agent's file tools are confined here,
  execs the harness bin with the task file as the prompt.
- **`.dsh/skills/`** — the five technique playbooks plus the judging
  rubric, auto-discovered from the project root and loaded by the
  brainstorm monitor via the `skill` tool.
- **`whitelist.yaml`** — organizer regexes (fit floor + `⚑` priority).

## Running a monitor manually

```sh
monitors/run.sh monitors/radar.md       # or brainstorm.md / trends.md
```

A run is one model session (~20-40 min); run it in the foreground or
background it with a log redirect and check the final line. Every run
ends with exactly one machine-readable line:

```
radar monitor: <n> new, <total> tracked, <p> priority-72h, <d> deadline-changed
brainstorm monitor: <p> problems, <s> sets, <i> fully-ideated, <c> closed
```

A run with `EXIT=1` and no artifacts on disk lost work mid-response -
check `git status`, re-run, and report the contract gap (see failure
modes).

## Nightly queue triage (a few minutes, on waking)

1. `git pull`, read the newest entries in `inbox/REVIEW.md`.
2. Act on each line type:
   - `PRIORITY 72h:` — decide per problem: form a team / ignore.
   - `New problems:` — shortlist the ones worth it (set
     `status: shortlisted` in the entry frontmatter and its INDEX row).
   - `DEADLINE CHANGED:` — note it; the write-back already happened.
   - `IDEATED:` / `IDEATING:` — open `ideas/<slug>/ranked.md`, fill the
     Decisions section for the ones you act on.
   - `CLOSED:` — nothing to do.
3. Clear acted lines (the file is a queue, not a log - keep it small).
4. `git add -A && git commit -m "decision: ..." && git push` - pushing
   is what makes the repo the record.

## Recording decisions

- **Shortlist:** `status: shortlisted` in the entry frontmatter and the
  INDEX status cell.
- **Idea accepted / rejected / parked:** the Decisions section of the
  `ranked.md` (monitors never write that section). An accepted idea
  also gets a pointer block in the problem entry's `## Ideas` section -
  pattern in `problems/zero-origin.md`.
- **Submission:** `status: submitted` in entry + INDEX when the
  submission goes out.
- **Outcome:** `status: won` / `lost` at announcement.

## Known failure modes (and what already prevents them)

| Failure | Symptom | Prevented by |
|---|---|---|
| One-shot background jobs | final answer claims work "running in the background"; artifacts never appear | contract rule: strictly inline, no subagents |
| Mega-response | `EXIT=1`, nothing on disk, log cut mid-sentence | contract rule: one artifact per response, write as you go |
| Source starvation | one source consumes the whole 15-slot ingest cap | HackerEarth ingested before Devpost |
| Server-ignored filter | `total_count` unchanged (~13830 instead of ~180) | Devpost `status[]`, never `challenge_status[]` |
| `node` not found under cron | monitor silently no-ops; cron mails the error | `run.sh` nvm resolution (fix 2026-09-03) |

## Caveats

- **Date boundary.** The nightly 06:07 IST run fires just after UTC
  midnight, so monitor date math sees "today" one IST day early. This
  is conservative for every rule: 72h warnings land a day early,
  expiry closes on the morning after the deadline day.
- **Shared gateway.** `llm.karunya.edu` serves other users; avoid
  scheduling ad-hoc runs during class peaks.
- **Trends monitor** had not produced a digest as of 2026-09-03 (it had
  never run under cron); check `digests/` after the first successful
  Monday cron run.
- **REVIEW.md is a queue.** Stale lines (e.g. 72h warnings whose
  deadline has since passed) should be cleared, not re-acted on.