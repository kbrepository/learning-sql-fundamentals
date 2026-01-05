.print
.print ── Script 04: Subquery in FROM
.print
SELECT date, total_spend
FROM (
    SELECT date,
           SUM(amount) AS total_spend
    FROM expenses_main
    WHERE type='Expense'
    GROUP BY date
)
ORDER BY date;
