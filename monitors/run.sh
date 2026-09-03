#!/usr/bin/env bash
# Aule monitor runner: one headless dsh task per invocation.
# Usage: monitors/run.sh <task-file>   e.g. monitors/run.sh monitors/hackathon.md
# Cron:  7 6 * * *  /home/ewards/workspace/workspace-ewards/aule/monitors/run.sh /home/ewards/workspace/workspace-ewards/aule/monitors/hackathon.md
set -euo pipefail

HARNESS=/home/ewards/workspace/workspace-ewards/deepseek-harness
AULE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Cron has no login shell: load machine-level dsh env (SOFIE_API_KEY) explicitly.
if [ -f "$HOME/.dsh/.env" ]; then
  set -a
  # shellcheck disable=SC1091
  . "$HOME/.dsh/.env"
  set +a
fi

# Cron's minimal PATH does not include nvm's bin: resolve node explicitly
# (lowest installed version first - the one the harness is verified on).
if ! command -v node >/dev/null 2>&1; then
  for n in "$HOME"/.nvm/versions/node/*/bin; do
    if [ -x "$n/node" ]; then
      export PATH="$n:$PATH"
      break
    fi
  done
fi
command -v node >/dev/null 2>&1 || {
  echo "aule monitor: node not found (checked PATH and ~/.nvm/versions/node/*/bin)" >&2
  exit 127
}

# The invoking directory is the dsh workspace root: run from aule so the
# agent's file tools are confined here.
cd "$AULE"
exec node "$HARNESS/apps/cli/lib/bin.js" --profile aule "$(cat "$1")"