.print
.print ── Day 1 / Script 03: First SELECT queries
.print

.headers on
.mode box

-- sanity checks
SELECT COUNT(*) AS total_rows FROM expenses;
SELECT * FROM expenses LIMIT 5;

-- simple projections & filters
SELECT category, amount FROM expenses WHERE type='Expense' LIMIT 10;
SELECT description, amount FROM expenses WHERE type='Expense' AND amount > 200;

-- quick view of daily spend vs income (very basic)
SELECT date,
  SUM(CASE WHEN type='Expense' THEN amount ELSE 0 END) AS spend,
  SUM(CASE WHEN type='Income'  THEN amount ELSE 0 END) AS income
FROM expenses
GROUP BY date
ORDER BY date;
