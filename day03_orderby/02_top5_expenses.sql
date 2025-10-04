.print
.print ── Day 3 / Script 02: Top 5 expenses
.print
.headers on
.mode box

.print ▶ Top 5 most expensive expenses
SELECT date, category, description, amount
FROM expenses
WHERE type = 'Expense'
ORDER BY amount DESC
LIMIT 5;
