.print
.print ── Script 01: Daily Expense View
.print
CREATE VIEW IF NOT EXISTS daily_expense_summary AS
SELECT date,
       SUM(amount) AS total_spend
FROM expenses_main
WHERE type='Expense'
GROUP BY date;

SELECT * FROM daily_expense_summary ORDER BY date;
