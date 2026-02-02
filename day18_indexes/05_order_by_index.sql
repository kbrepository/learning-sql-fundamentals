.print
.print ── Script 05: ORDER BY Index
.print
CREATE INDEX idx_date
ON expenses_main(date);

EXPLAIN QUERY PLAN
SELECT *
FROM expenses_main
ORDER BY date;
