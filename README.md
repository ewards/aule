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
- `ideas/` — brainstorming sets and ranked shortlists per problem.
- `inbox/REVIEW.md` — the monitor → human review queue.
- `digests/` — dated trend digests from the trends monitor.
- `monitors/` — cron-driven headless tasks (`radar.md`, `trends.md`) + `run.sh`.
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
monitors/run.sh monitors/radar.md     # discovery: Devpost + HackerEarth, nightly
monitors/run.sh monitors/trends.md    # arXiv + HN digest, Mondays
```

Discovery rules (owned by `monitors/radar.md`): dedupe against `problems/INDEX.md`
by source url, ingest cap of 15 per run, `whitelist.yaml` organizer matches get a
`whitelist:` frontmatter flag, deadlines within 72h are surfaced as
`PRIORITY 72h` lines, moved deadlines are written back and reported as
`DEADLINE CHANGED`, and source failures leave a `source-health` note. All of these
land in `inbox/REVIEW.md` — the monitor never alerts outside the repository.

Provenance: the Python/Docker `hackathon-radar` project (retired 2026-09-01) is the
source of the fetcher endpoints and verification notes, `whitelist.yaml`, the alert
rules, and the first-run source-health check. Its Postgres store, Docker scheduler,
webhook alerts, and dashboard were not ported; this repository's markdown tree plus
host cron replace them.

## Conventions

- Monitors only add: new `problems/` entries, `digests/`, and `inbox/` queue lines.
  They never edit existing problems or ideas, and never delete.
- Human gates: problems are shortlisted, idea sets are judged and marked
  accepted/rejected, by a human, in the markdown files.
- No paid web APIs: monitors fetch known keyless endpoints (Devpost API, arXiv,
  RSS, Google Patents) via `web_fetch`. `web_search` is registered but unusable
  without a search-provider key — monitor tasks must not call it.
```