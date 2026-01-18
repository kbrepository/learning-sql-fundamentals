.print
.print ── Script 05: Update & Drop View
.print
DROP VIEW IF EXISTS daily_expense_summary;

CREATE VIEW daily_expense_summary AS
SELECT date,
       COUNT(*) AS txn_count,
       SUM(amount) AS total_spend
FROM expenses_main
WHERE type='Expense'
GROUP BY date;

SELECT * FROM daily_expense_summary;
