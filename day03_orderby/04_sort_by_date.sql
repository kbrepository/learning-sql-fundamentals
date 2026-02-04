.print
.print ── Day 3 / Script 04: Sort by date (chronological)
.print
.headers on
.mode box

.print ▶ Expenses by date (oldest first)
SELECT date, category, description, amount
FROM expenses
WHERE type = 'Expense'
ORDER BY date ASC;
