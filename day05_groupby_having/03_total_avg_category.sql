.print
.print ── Day 5 / Script 03: Total & Average Spend per Category
.print
.headers on
.mode box

.print ▶ Total & average spend per category
SELECT category,
       SUM(amount) AS total_spend,
       AVG(amount) AS avg_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY category
ORDER BY total_spend DESC;
