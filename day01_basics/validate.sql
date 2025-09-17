.print
.print ── ✅ Day 1 Validation: sanity checks
.print

.headers on
.mode box

.print 1) Does the table exist?
SELECT name AS table_name
FROM sqlite_master
WHERE type='table' AND name='expenses';

.print
.print 2) Row count in expenses
SELECT COUNT(*) AS total_rows FROM expenses;

.print
.print 3) Peek first 5 rows
SELECT * FROM expenses LIMIT 5;

.print
.print 4) Any obvious NULL issues in required columns?
SELECT
  SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS null_date,
  SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS null_category,
  SUM(CASE WHEN amount IS NULL THEN 1 ELSE 0 END) AS null_amount
FROM expenses;

.print
.print 5) Simple daily spend vs income (rollup)
SELECT date,
  SUM(CASE WHEN type='Expense' THEN amount ELSE 0 END) AS spend,
  SUM(CASE WHEN type='Income'  THEN amount ELSE 0 END) AS income
FROM expenses
GROUP BY date
ORDER BY date
LIMIT 10;
