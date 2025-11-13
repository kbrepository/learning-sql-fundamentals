.print
.print ── Day 5 / Script 01: GROUP BY Category
.print
.headers on
.mode box

.print ▶ Total spend per category
SELECT category,
       SUM(amount) AS total_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY category
ORDER BY total_spend DESC;