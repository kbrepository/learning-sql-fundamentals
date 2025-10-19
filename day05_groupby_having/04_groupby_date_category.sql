.print
.print ── Day 5 / Script 04: GROUP BY Date + Category
.print
.headers on
.mode box

.print ▶ Daily category-wise summary
SELECT date, category,
       SUM(amount) AS category_total
FROM expenses
WHERE type = 'Expense'
GROUP BY date, category
ORDER BY date ASC, category ASC;