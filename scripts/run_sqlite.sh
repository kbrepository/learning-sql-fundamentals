#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <DB_FILE> <DAY_DIR> [-v]"
  echo "Example: $0 expenses.db day01_basics -v"
  exit 1
fi

DB_FILE="$1"
DAY_DIR="$2"
VERBOSE="${3:-}"

if [[ ! -d "$DAY_DIR" ]]; then
  echo "❌ Day folder not found: $DAY_DIR"
  exit 1
fi

echo "📚 Database: $DB_FILE"
echo "📦 Day folder: $DAY_DIR"
echo "🔧 Mode: $([[ "$VERBOSE" == "-v" ]] && echo "verbose" || echo "normal")"
echo "────────────────────────────────────────────"

for f in $(ls "$DAY_DIR"/*.sql 2>/dev/null | sort); do
  echo ""
  echo "▶ Running: $(basename "$f")"
  echo "   Path   : $f"
  echo "────────────────────────────────────────────"

  # Run with human-friendly output
  if [[ "$VERBOSE" == "-v" ]]; then
    sqlite3 "$DB_FILE" <<SQL
.headers on
.mode box
.timer on
.echo on
.read $f
.echo off
SQL
  else
    sqlite3 "$DB_FILE" <<SQL
.headers on
.mode box
.read $f
SQL
  fi
done

echo ""
echo "✅ DONE — executed all scripts in $DAY_DIR"
