.print
.print ── Script 05: Top Expense per Category
.print
SELECT *
FROM (
    SELECT description,
           category,
           amount,
           ROW_NUMBER() OVER (
               PARTITION BY category
               ORDER BY amount DESC
           ) AS rn
    FROM expenses_main
    WHERE type='Expense'
)
WHERE rn = 1;
