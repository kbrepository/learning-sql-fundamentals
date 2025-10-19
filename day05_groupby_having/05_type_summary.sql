.print
.print ── Day 5 / Script 05: Summary by Type (Expense vs Income)
.print
.headers on
.mode box

.print ▶ Total amount & count by type
SELECT type,
       SUM(amount) AS total_amount,
       COUNT(*) AS entries
FROM expenses
GROUP BY type;
