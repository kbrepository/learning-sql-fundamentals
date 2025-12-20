.print
.print ── Script 05: JOIN with CASE
.print
SELECT e.description,
       e.amount,
       a.account_name,
       CASE
         WHEN a.type='Digital' THEN 'Online'
         WHEN a.type='Credit'  THEN 'Card-based'
         ELSE 'Offline'
       END AS payment_category
FROM expenses_main e
JOIN accounts a
  ON e.payment_method = a.account_name;
