.print
.print ── Script 04: Moving Average
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
       ROUND(
         AVG(total_spend) OVER (
             ORDER BY date
             ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
         ), 2
       ) AS moving_avg_3d
FROM daily_spend
ORDER BY date;
