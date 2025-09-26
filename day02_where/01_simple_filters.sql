.print
.print ── Day 2 / Script 01: Simple filters with WHERE
.print

.headers on
.mode box

.print ▶ All 'Food' expenses
SELECT * FROM expenses
WHERE category = 'Food';

.print ▶ Expenses strictly above ₹500
SELECT * FROM expenses
WHERE amount > 500 AND type = 'Expense';

.print ▶ All 'Income' rows (baseline contrast)
SELECT date, description, amount
FROM expenses
WHERE type = 'Income';
