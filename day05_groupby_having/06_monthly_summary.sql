.print
.print ── Day 5 / Script 06: Monthly Spend Summary
.print
.headers on
.mode box

.print ▶ Monthly spend summary (using substring on date)
SELECT substr(date, 1, 7) AS month,
       SUM(amount) AS total_spend
FROM expenses
WHERE type = 'Expense'
GROUP BY month
ORDER BY month ASC;
