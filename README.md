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
- `monitors/` — cron-driven headless tasks (`hackathon.md`, `trends.md`) + `run.sh`.

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
~/workspace/workspace-ewards/deepseek-harness/node_modules/.bin/dsh --profile aule "your task"
```

Monitors (cron-driven, off-peak):

```sh
monitors/run.sh monitors/hackathon.md
monitors/run.sh monitors/trends.md
```

## Conventions

- Monitors only add: new `problems/` entries, `digests/`, and `inbox/` queue lines.
  They never edit existing problems or ideas, and never delete.
- Human gates: problems are shortlisted, idea sets are judged and marked
  accepted/rejected, by a human, in the markdown files.
- No paid web APIs: monitors fetch known keyless endpoints (Devpost API, arXiv,
  RSS, Google Patents) via `web_fetch`. `web_search` is registered but unusable
  without a search-provider key — monitor tasks must not call it.
```