.print
.print ── Script 05: Chained CTEs
.print
WITH category_totals AS (
    SELECT category,
           SUM(amount) AS total_spend
    FROM expenses_main
    WHERE type='Expense'
    GROUP BY category
),
high_spend AS (
    SELECT *
    FROM category_totals
    WHERE total_spend > 1000
)
SELECT *
FROM high_spend
ORDER BY total_spend DESC;
