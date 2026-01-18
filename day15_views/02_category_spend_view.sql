.print
.print ── Script 02: Category Spend View
.print
CREATE VIEW IF NOT EXISTS category_spend_summary AS
SELECT category,
       SUM(amount) AS total_spend
FROM expenses_main
WHERE type='Expense'
GROUP BY category;

SELECT * FROM category_spend_summary ORDER BY total_spend DESC;
