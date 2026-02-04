.print
.print ── Day 3 / Script 03: Sort by category (ASC), amount (DESC)
.print
.headers on
.mode box

.print ▶ Category A→Z, then high→low amount
SELECT category, description, amount
FROM expenses
ORDER BY category ASC, amount DESC;
