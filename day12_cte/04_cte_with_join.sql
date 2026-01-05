.print
.print ── Script 04: CTE with JOIN
.print
WITH expense_accounts AS (
    SELECT e.amount,
           a.account_name
    FROM expenses_main e
    JOIN accounts a
      ON e.payment_method = a.account_name
    WHERE e.type='Expense'
)
SELECT account_name,
       SUM(amount) AS total_spent
FROM expense_accounts
GROUP BY account_name
ORDER BY total_spent DESC;
