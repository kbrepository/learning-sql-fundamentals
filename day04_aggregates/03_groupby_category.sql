.print
.print ── Day 4 / Script 03: GROUP BY – Category wise totals
.print

.headers on
.mode box

.print ▶ Total spend per category
SELECT category,
       SUM(amount) AS category_total
FROM expenses
WHERE type = 'Expense'
GROUP BY category
ORDER BY category_total DESC;

.print ▶ Average spend per category
SELECT category,
       AVG(amount) AS avg_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY category
ORDER BY avg_spend DESC;
