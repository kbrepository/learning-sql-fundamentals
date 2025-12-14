.print
.print ── Script 02: INNER JOIN
.print
SELECT e.date,
       e.description,
       e.amount,
       e.payment_method,
       a.type AS account_type
FROM expenses_main e
JOIN accounts a
  ON e.payment_method = a.account_name
ORDER BY e.date;
