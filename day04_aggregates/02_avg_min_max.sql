.print
.print ── Day 4 / Script 02: AVG, MIN, MAX
.print

.headers on
.mode box

.print ▶ Average expense amount
SELECT AVG(amount) AS avg_expense
FROM expenses
WHERE type = 'Expense';

.print ▶ Minimum & maximum expense amounts
SELECT MIN(amount) AS lowest_expense,
       MAX(amount) AS highest_expense
FROM expenses
WHERE type = 'Expense';
