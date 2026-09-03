# Aule pipeline

Aule is a hackathon ideation studio for the Karunya Innovation and Design
Studio. Scheduled monitors discover competition problems and generate
ranked, judged ideas; humans decide at named gates. Everything lives as
markdown in this repository, so every state, every artifact, and every
decision is visible, auditable, and diffable in git.

## The loop

```
 sources          monitor: radar          monitor: brainstorm          human
 (Devpost,   --->  problems/ entries,  --->  ideas/<slug>/ sets,    --->  Decisions in
  HackerEarth)      INDEX rows, REVIEW       ranked.md, lifecycle         ranked.md,
                    lines, deadline          transitions                  accepted
                    write-backs                                    ideas to teams
```

## Stages

1. **Discovery** — `monitors/radar.md`, nightly. Fetches Devpost
   (open + upcoming, 5 pages at the verified filter) and HackerEarth,
   ingests up to 15 untracked problems per run (HackerEarth first, to
   prevent starvation), maintains `problems/INDEX.md`, writes back
   listing-side deadline drift, and queues `PRIORITY 72h` /
   `DEADLINE CHANGED` / source-health lines into `inbox/REVIEW.md`.
   Ingest cap: 15/run; full ~180-problem Devpost corpus lands over
   ~13 nightly runs.
2. **Shortlist (human gate 1)** — a human marks problems
   `status: shortlisted` (frontmatter + INDEX row). The monitor never
   shortlists.
3. **Ideation** — `monitors/brainstorm.md`, nightly. Takes at most 3
   shortlisted problems (preparation window first, then whitelisted
   first, then nearest deadline) and, for each, one
   `ideas/<slug>/set-<n>.md` per technique method not yet covered:
   TRIZ, SCAMPER, first-principles, cross-domain, inversion (fixed
   order, playbooks in `.dsh/skills/`). Sets are built only from the
   problem file itself - no web.
4. **Judging** — same run. All of a problem's sets are re-scored into
   `ideas/<slug>/ranked.md` on four criteria (novelty, feasibility,
   impact, judge-appeal, 1-5 each); weights follow the problem's
   explicit judging criteria when it states any. The top 3 get a
   recommendation with kill-risks.
5. **Decision (human gate 2)** — a human fills each `ranked.md`'s
   Decisions section (accepted / rejected / park) and records the
   accepted idea in the problem entry's `## Ideas` section (pattern:
   `problems/zero-origin.md`).
6. **Build & submit** — students, outside the monitors: prototype,
   deck, submission by the problem's deadline.
7. **Outcome** — human flips the entry `submitted` at submission, then
   `won` / `lost` at announcement. The lifecycle in
   `problems/INDEX.md` is the single state machine.

## Lifecycle

```
new -> shortlisted -> ideated -> submitted -> won | lost
      shortlisted -> closed          (deadline passed without submission)
```

## Standing rules

- **Preparation window: 21 days.** The brainstorm monitor only selects
  problems with at least 21 days to deadline (user decision 2026-09-01:
  "only competitions with enough time for preparation"). Below the
  window a problem is skipped, not closed - step 1 of the contract
  closes it when the deadline itself passes.
- **Batch size: 3 problems per run**, so the nightly run stays
  bounded; the rest wait for the next run.
- **Whitelist** (`whitelist.yaml`): organizer regexes (ministries,
  PSUs, IIT/IISc/NIT, named corporates) act as a fit floor and a
  priority signal - whitelisted problems are ideated first and get a
  `⚑` prefix in review lines.
- **Monitor discipline** (both contracts): strictly inline - no
  background jobs or subagents, because a headless one-shot process
  dies when it exits; write each artifact to disk immediately, one
  artifact per response; never delete; re-read key files before the
  final answer; end with exactly one machine-readable line
  (`radar monitor: ...` / `brainstorm monitor: ...`).
- **Monitors never alert outside the repository.** `inbox/REVIEW.md`
  is the entire handoff to a human.

## Why it is built this way

- **Markdown repo as the cross-process store.** Cron launches a fresh
  one-shot dsh process each night; the git repository is the only
  state that survives the process, is readable by the model, and is
  auditable by a human. Git history is the studio's memory.
- **One-shot headless, inline only.** The harness can run background
  work, but process-local background jobs die with the process - the
  contracts ban them for that reason (run 1 of the radar lost work to
  exactly this).
- **Sequential cron chain.** Radar and brainstorm both write problem
  status cells, INDEX, and REVIEW; one nightly line runs them in
  order so concurrent runs cannot clobber each other.
- **HackerEarth first, 40-per-page.** Devpost's `per_page` is capped
  at 40 server-side and `challenge_status[]` is ignored server-side;
  the real filter is `status[]=open&status[]=upcoming` (see
  `monitors/radar.md` step 2).
- **Offline ideation.** Ideas must rest on the problem file's own text
  so a thin entry produces an honest thin set (with an evidence note)
  rather than invented context.