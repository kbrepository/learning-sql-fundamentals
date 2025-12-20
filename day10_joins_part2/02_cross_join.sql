.print
.print ── Script 02: CROSS JOIN
.print
SELECT e.description, a.account_name
FROM expenses_main e
CROSS JOIN accounts a
LIMIT 10;
