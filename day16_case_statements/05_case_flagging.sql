.print
.print ── Script 05: CASE for Flagging
.print
SELECT description,
       amount,
       CASE
         WHEN amount > 1000 THEN 'Review'
         ELSE 'OK'
       END AS review_flag
FROM expenses_main
WHERE type='Expense';
