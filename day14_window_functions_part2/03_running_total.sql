.print
.print ── Script 03: Running Total
.print
WITH daily_spend AS (
    SELECT date,
           SUM(amount) AS total_spend
    FROM expenses_main
    WHERE type='Expense'
    GROUP BY date
)
SELECT date,
       total_spend,
       SUM(total_spend) OVER (
           ORDER BY date
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total
FROM daily_spend
ORDER BY date;
