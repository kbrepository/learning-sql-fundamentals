#!/usr/bin/env bash
set -euo pipefail
DB_FILE="${1:-expenses.db}"
DAY_DIR="${2:-day01_basics}"

echo "Running $DAY_DIR against $DB_FILE"
for f in $(ls "$DAY_DIR"/*.sql | sort); do
  echo "==> $f"
  sqlite3 "$DB_FILE" ".read $f"
done
echo "Done."

## Usage
# Command_Prompt> ./scripts/run_sqlite.sh expenses.db day03_aggregations
