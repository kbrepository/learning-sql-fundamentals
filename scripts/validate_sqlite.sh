#!/usr/bin/env bash
set -euo pipefail
DB_FILE="${1:-expenses.db}"
DAY_DIR="${2:-day01_basics}"
sqlite3 "$DB_FILE" ".read $DAY_DIR/validate.sql"
