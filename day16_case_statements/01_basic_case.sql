.print
.print ── Script 01: Basic CASE
.print
SELECT description,
       amount,
       CASE
         WHEN amount < 200 THEN 'Low'
         WHEN amount BETWEEN 200 AND 500 THEN 'Medium'
         ELSE 'High'
       END AS expense_level
FROM expenses_main
WHERE type='Expense';
