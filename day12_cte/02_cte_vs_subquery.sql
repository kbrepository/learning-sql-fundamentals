.print
.print ── Script 02: CTE vs Subquery
.print
WITH avg_expense AS (
    SELECT AVG(amount) AS avg_amt
    FROM expenses_main
    WHERE type='Expense'
)
SELECT description, amount
FROM expenses_main
WHERE amount > (SELECT avg_amt FROM avg_expense);
