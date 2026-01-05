.print
.print ── Script 01: Basic CTE
.print
WITH daily_spend AS (
    SELECT date,
           SUM(amount) AS total_spend
    FROM expenses_main
    WHERE type='Expense'
    GROUP BY date
)
SELECT *
FROM daily_spend
ORDER BY date;
