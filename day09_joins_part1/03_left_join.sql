.print
.print ── Script 03: LEFT JOIN
.print
SELECT e.date,
       e.description,
       e.amount,
       e.payment_method,
       a.type AS account_type
FROM expenses_main e
LEFT JOIN accounts a
  ON e.payment_method = a.account_name
ORDER BY e.date;
