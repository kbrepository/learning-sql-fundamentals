.print
.print ── Script 02: LEAD
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
       LEAD(total_spend) OVER (ORDER BY date) AS next_day_spend
FROM daily_spend
ORDER BY date;
