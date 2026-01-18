.print
.print ── Script 03: Account Spend View
.print
CREATE VIEW IF NOT EXISTS account_spend_summary AS
SELECT a.account_name,
       SUM(e.amount) AS total_spent
FROM expenses_main e
JOIN accounts a
  ON e.payment_method = a.account_name
WHERE e.type='Expense'
GROUP BY a.account_name;

SELECT * FROM account_spend_summary;
