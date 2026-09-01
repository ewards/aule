# Aule

AI agentic studio for research, ideation, patents, and startup work, built on
[DeepSeek Harness](https://github.com/deepseek-harness/deepseek-harness) (`dsh`).

Phase 1 vertical: **ideation** — a problem repository fed by scheduled monitors,
and a human-gated brainstorming pipeline (TRIZ, SCAMPER, first-principles,
cross-domain, inversion) with judged, ranked output.

## Layout

- `profile/` — the `aule` dsh profile (bundles: `dsh-base` + `dsh-headless`;
  campus model route in `cordis.patch.yml`). Symlinked to `~/.dsh/profiles/aule`.
- `problems/` — the problem repository (one markdown file per problem + `INDEX.md`).
- `ideas/` — brainstorming sets and ranked shortlists per problem
  (see `ideas/README.md`).
- `.dsh/skills/` — the brainstorm technique playbooks (TRIZ, SCAMPER,
  first-principles, cross-domain, inversion) and the judging rubric,
  installed as aule skills (auto-discovered from the project root) and
  loaded via the `skill` tool by the brainstorm monitor at run time.
- `inbox/REVIEW.md` — the monitor → human review queue.
- `digests/` — dated trend digests from the trends monitor.
- `monitors/` — cron-driven headless tasks (`radar.md`, `brainstorm.md`,
  `trends.md`) + `run.sh`.
- `whitelist.yaml` — organizer whitelist (ministry/PSU/IIT/corporate fit floor),
  ported from hackathon-radar.

## Model

`sofie-think-0` (256K context) served at `https://llm.karunya.edu/v1`, wired as a
hand-declared `llm-pi-ai` gateway route named `campus`; credential via the
`SOFIE_API_KEY` environment variable. DGX hosts (laurelin, telperion, sun) are
added as further `campus-*`-style routes when they start serving.

## Prerequisites

- A built harness checkout at `~/workspace/workspace-ewards/deepseek-harness`
  (`pnpm install && pnpm run build`).
- `SOFIE_API_KEY` in `~/.dsh/.env` (machine-level; see `.env.example`).
- `ln -s <this repo>/profile ~/.dsh/profiles/aule`.

## Run

From the harness checkout, with this repo as the workspace root:

```sh
cd ~/workspace/workspace-ewards/aule
node ~/workspace/workspace-ewards/deepseek-harness/apps/cli/lib/bin.js --profile aule "your task"
```

Monitors (cron-driven, off-peak):

```sh
monitors/run.sh monitors/radar.md       # discovery: Devpost + HackerEarth, nightly
monitors/run.sh monitors/brainstorm.md  # ideation: next 3 shortlisted problems, nightly
monitors/run.sh monitors/trends.md      # arXiv + HN digest, Mondays
```

Discovery rules (owned by `monitors/radar.md`): dedupe against `problems/INDEX.md`
by source url, ingest cap of 15 per run, `whitelist.yaml` organizer matches get a
`whitelist:` frontmatter flag, deadlines within 72h are surfaced as
`PRIORITY 72h` lines, moved deadlines are written back and reported as
`DEADLINE CHANGED`, and source failures leave a `source-health` note. All of these
land in `inbox/REVIEW.md` — the monitor never alerts outside the repository.

Ideation rules (owned by `monitors/brainstorm.md`): at most 3 shortlisted
problems per run (whitelisted first, then nearest deadline); each problem
gets one `ideas/<slug>/set-<n>.md` per technique method (TRIZ, SCAMPER,
first-principles, cross-domain, inversion, in that order) built only from
the problem file itself; all sets are re-judged into the problem's
`ranked.md` against the four-criterion rubric (weights follow the
problem's explicit judging criteria when it states any). A problem is
`ideated` once all five methods are covered and `closed` when its
deadline passes; `CLOSED` / `IDEATED` / `IDEATING` lines land in
`inbox/REVIEW.md`.

Provenance: the Python/Docker `hackathon-radar` project (retired 2026-09-01) is the
source of the fetcher endpoints and verification notes, `whitelist.yaml`, the alert
rules, and the first-run source-health check. Its Postgres store, Docker scheduler,
webhook alerts, and dashboard were not ported; this repository's markdown tree plus
host cron replace them.

## Conventions

- Monitors only add: new `problems/` entries, `ideas/` sets, `digests/`,
  and `inbox/` queue lines. The only existing text a monitor edits is a
  problem's `status` field (lifecycle transitions) and its `INDEX.md`
  status cell. Monitors never edit problem content or existing ideas,
  and never delete.
- Human gates: problems are shortlisted by a human; ideas are judged by
  the brainstorm monitor and marked accepted / rejected / park by a human
  in each `ranked.md`'s Decisions section.
- No paid web APIs: monitors fetch known keyless endpoints (Devpost API, arXiv,
  RSS, Google Patents) via `web_fetch`. `web_search` is registered but unusable
  without a search-provider key — monitor tasks must not call it.
```