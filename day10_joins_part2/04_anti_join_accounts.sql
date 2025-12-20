.print
.print ── Script 04: Accounts Never Used
.print
SELECT a.*
FROM accounts a
LEFT JOIN expenses_main e
  ON e.payment_method = a.account_name
WHERE e.payment_method IS NULL;
