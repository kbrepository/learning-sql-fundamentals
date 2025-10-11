.print
.print ── Day 4 / Script 01: COUNT & SUM
.print

.headers on
.mode box

.print ▶ Total number of transactions
SELECT COUNT(*) AS total_records FROM expenses;

.print ▶ Total money spent (Expense only)
SELECT SUM(amount) AS total_expense
FROM expenses
WHERE type = 'Expense';

.print ▶ Total income received
SELECT SUM(amount) AS total_income
FROM expenses
WHERE type = 'Income';
