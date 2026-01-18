.print
.print ── Script 01: LAG
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
       LAG(total_spend) OVER (ORDER BY date) AS prev_day_spend,
       total_spend - LAG(total_spend) OVER (ORDER BY date) AS change_from_prev
FROM daily_spend
ORDER BY date;
