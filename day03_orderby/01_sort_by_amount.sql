.print
.print ── Day 3 / Script 01: Sort by amount (DESC)
.print
.headers on
.mode box

.print ▶ Expenses sorted from highest to lowest
SELECT date, category, description, amount
FROM expenses
WHERE type = 'Expense'
ORDER BY amount DESC;
