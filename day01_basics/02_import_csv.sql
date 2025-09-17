.print
.print ── Day 1 / Script 02: Import CSV into 'expenses'
.print ── Open sqlite3 shell and run the following meta-commands:
.print     .mode csv
.print     .headers on
.print     .import --skip 1 common/datasets/expenses.csv expenses
.print ── Then re-run the validator to confirm rows loaded.
.print

-- Run these *from the sqlite3 shell*:
-- .mode csv
-- .headers on
-- .import --skip 1 common/datasets/expenses.csv expenses
-- (If you imported into a temp table like expenses_raw, then copy into expenses.)
