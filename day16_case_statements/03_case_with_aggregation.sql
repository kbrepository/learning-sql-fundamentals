.print
.print ── Script 03: CASE with Aggregation
.print
SELECT
  CASE
    WHEN amount < 200 THEN 'Low'
    WHEN amount BETWEEN 200 AND 500 THEN 'Medium'
    ELSE 'High'
  END AS spend_bucket,
  COUNT(*) AS txn_count,
  SUM(amount) AS total_spend
FROM expenses_main
WHERE type='Expense'
GROUP BY spend_bucket
ORDER BY total_spend DESC;
