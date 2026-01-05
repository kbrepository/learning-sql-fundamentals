.print
.print ── Script 02: IN Subquery
.print
SELECT description, category, amount
FROM expenses_main
WHERE category IN (
    SELECT category
    FROM expenses_main
    WHERE type='Expense'
    GROUP BY category
    HAVING SUM(amount) > 1000
);
