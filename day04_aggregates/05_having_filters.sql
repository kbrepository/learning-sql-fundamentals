.print
.print ── Day 4 / Script 05: HAVING clause – Filtering aggregated data
.print

.headers on
.mode box

.print ▶ Categories with total spend > ₹1000
SELECT category,
       SUM(amount) AS total_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY category
HAVING SUM(amount) > 1000
ORDER BY total_spend DESC;

.print ▶ Average spend > ₹300
SELECT category,
       AVG(amount) AS avg_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY category
HAVING AVG(amount) > 300
ORDER BY avg_spend DESC;
