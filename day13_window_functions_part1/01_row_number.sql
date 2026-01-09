.print
.print ── Script 01: ROW_NUMBER
.print
SELECT description,
       category,
       amount,
       ROW_NUMBER() OVER (ORDER BY amount DESC) AS row_num
FROM expenses_main
WHERE type='Expense';
