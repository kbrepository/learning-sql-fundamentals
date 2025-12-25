.print
.print ── Script 05: Correlated Subquery
.print
SELECT e1.description,
       e1.category,
       e1.amount
FROM expenses_main e1
WHERE e1.amount >
      (
        SELECT AVG(e2.amount)
        FROM expenses_main e2
        WHERE e2.category = e1.category
          AND e2.type='Expense'
      );
