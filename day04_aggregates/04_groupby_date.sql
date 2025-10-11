.print
.print ── Day 4 / Script 04: GROUP BY – Daily summary
.print

.headers on
.mode box

.print ▶ Daily totals of spend & income
SELECT date,
       SUM(CASE WHEN type = 'Expense' THEN amount ELSE 0 END) AS total_spend,
       SUM(CASE WHEN type = 'Income'  THEN amount ELSE 0 END) AS total_income
FROM expenses
GROUP BY date
ORDER BY date ASC;

.print ▶ Net savings per day (income - spend)
SELECT date,
       SUM(CASE WHEN type='Income' THEN amount ELSE 0 END)
       - SUM(CASE WHEN type='Expense' THEN amount ELSE 0 END) AS net_savings
FROM expenses
GROUP BY date
ORDER BY date ASC;
