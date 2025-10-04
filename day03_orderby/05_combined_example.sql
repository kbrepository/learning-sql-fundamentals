.print
.print ── Day 3 / Script 05: Combined ORDER BY with filters
.print
.headers on
.mode box

.print ▶ Shopping > ₹200, sorted by date (ASC) then amount (DESC)
SELECT date, category, description, amount
FROM expenses
WHERE category = 'Shopping' AND amount > 200
ORDER BY date ASC, amount DESC;
