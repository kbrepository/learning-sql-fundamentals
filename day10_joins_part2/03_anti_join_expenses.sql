.print
.print ── Script 03: Expenses without Account Match
.print
SELECT e.*
FROM expenses_main e
LEFT JOIN accounts a
  ON e.payment_method = a.account_name
WHERE a.account_name IS NULL;
