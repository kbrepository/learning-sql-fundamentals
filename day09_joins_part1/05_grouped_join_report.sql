.print
.print ── Script 05: Total Spend by Account
.print
SELECT a.account_name,
       SUM(e.amount) AS total_spent
FROM expenses_main e
JOIN accounts a
  ON e.payment_method = a.account_name
WHERE e.type='Expense'
GROUP BY a.account_name
ORDER BY total_spent DESC;
