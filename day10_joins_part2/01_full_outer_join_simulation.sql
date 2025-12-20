.print
.print ── Script 01: FULL OUTER JOIN Simulation
.print
SELECT e.date, e.description, e.amount, e.payment_method,
       a.account_name, a.type
FROM expenses_main e
LEFT JOIN accounts a
  ON e.payment_method = a.account_name
UNION
SELECT e.date, e.description, e.amount, e.payment_method,
       a.account_name, a.type
FROM accounts a
LEFT JOIN expenses_main e
  ON e.payment_method = a.account_name;
