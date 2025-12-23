.print
.print ── Script 01: Scalar Subquery
.print
SELECT description, amount
FROM expenses_main
WHERE amount >
      (SELECT AVG(amount)
       FROM expenses_main
       WHERE type='Expense');
