.print
.print ── Script 02: Update Multiple Rows
.print
UPDATE expenses
SET payment_method = 'Cash'
WHERE category='Food';

SELECT category, description, payment_method
FROM expenses
WHERE category='Food';
