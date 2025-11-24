.print
.print ── Script 03: Conditional Update
.print
UPDATE expenses
SET amount = amount * 0.90
WHERE type='Expense' AND amount > 1000;

SELECT description, amount
FROM expenses
WHERE amount > 900
ORDER BY amount DESC;
