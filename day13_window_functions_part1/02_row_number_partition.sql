.print
.print ── Script 02: ROW_NUMBER with PARTITION
.print
SELECT description,
       category,
       amount,
       ROW_NUMBER() OVER (
           PARTITION BY category
           ORDER BY amount DESC
       ) AS category_row_num
FROM expenses_main
WHERE type='Expense';
