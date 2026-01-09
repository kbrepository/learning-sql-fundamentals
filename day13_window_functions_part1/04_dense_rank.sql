.print
.print ── Script 04: DENSE_RANK
.print
SELECT description,
       category,
       amount,
       DENSE_RANK() OVER (ORDER BY amount DESC) AS dense_rank_num
FROM expenses_main
WHERE type='Expense';
