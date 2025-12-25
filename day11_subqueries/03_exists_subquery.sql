.print
.print ── Script 03: EXISTS Subquery
.print
SELECT a.account_name
FROM accounts a
WHERE EXISTS (
    SELECT 1
    FROM expenses_main e
    WHERE e.payment_method = a.account_name
);
