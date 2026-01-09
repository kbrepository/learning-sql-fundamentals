.print
.print ── Script 06: Window Function with JOIN
.print
SELECT e.description,
       a.account_name,
       e.amount,
       RANK() OVER (
           PARTITION BY a.account_name
           ORDER BY e.amount DESC
       ) AS account_rank
FROM expenses_main e
JOIN accounts a
  ON e.payment_method = a.account_name
WHERE e.type='Expense';
