.print
.print ── Script 03: RANK
.print
SELECT description,
       category,
       amount,
       RANK() OVER (ORDER BY amount DESC) AS rank_num
FROM expenses_main
WHERE type='Expense';
