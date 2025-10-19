.print
.print ── Day 5 / Script 02: HAVING Filter
.print
.headers on
.mode box

.print ▶ Categories where total spend > ₹1000
SELECT category,
       SUM(amount) AS total_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY category
HAVING SUM(amount) > 1000
ORDER BY total_spend DESC;
