.print
.print ── Script 06: Join Validation
.print
SELECT COUNT(*) AS expense_rows FROM expenses_main;

SELECT COUNT(*) AS joined_rows
FROM expenses_main e
JOIN accounts a
  ON e.payment_method = a.account_name;
