.print
.print ── Script 04: Composite Index
.print
CREATE INDEX idx_type_category
ON expenses_main(type, category);

EXPLAIN QUERY PLAN
SELECT *
FROM expenses_main
WHERE type='Expense'
  AND category='Food';
