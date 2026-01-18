.print
.print ── Script 05: Partitioned Running Total
.print
SELECT date,
       category,
       amount,
       SUM(amount) OVER (
           PARTITION BY category
           ORDER BY date
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS category_running_total
FROM expenses_main
WHERE type='Expense'
ORDER BY category, date;
