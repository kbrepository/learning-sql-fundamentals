.print
.print ── Script 04: Layered Views
.print
CREATE VIEW IF NOT EXISTS high_spend_categories AS
SELECT *
FROM category_spend_summary
WHERE total_spend > 1000;

SELECT * FROM high_spend_categories;
