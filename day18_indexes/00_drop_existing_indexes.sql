.print
.print ── Optional: Drop indexes to show baseline (before indexing)
.print
DROP INDEX IF EXISTS idx_expenses_category;
DROP INDEX IF EXISTS idx_type_category;
DROP INDEX IF EXISTS idx_date;

.print ▶ Remaining indexes (if any)
SELECT name
FROM sqlite_master
WHERE type='index'
ORDER BY name;
