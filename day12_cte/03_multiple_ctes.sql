.print
.print ── Script 03: Multiple CTEs
.print
WITH category_totals AS (
    SELECT category,
           SUM(amount) AS total_spend
    FROM expenses_main
    WHERE type='Expense'
    GROUP BY category
),
overall_avg AS (
    SELECT AVG(amount) AS avg_spend
    FROM expenses_main
    WHERE type='Expense'
)
SELECT c.category,
       c.total_spend,
       o.avg_spend
FROM category_totals c
CROSS JOIN overall_avg o
ORDER BY c.total_spend DESC;
