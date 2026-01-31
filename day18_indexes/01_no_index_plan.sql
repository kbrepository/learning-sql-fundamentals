.print
.print ── Script 01: Query Plan Without Index
.print
EXPLAIN QUERY PLAN
SELECT *
FROM expenses_main
WHERE category = 'Food';
