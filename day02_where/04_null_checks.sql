.print
.print ── Day 2 / Script 04: NULL checks (IS NULL / IS NOT NULL) + COALESCE
.print

.headers on
.mode box

-- If you don’t yet have NULLs, you can insert one test row (optional):
-- INSERT INTO expenses (date, category, subcategory, description, amount, type)
-- VALUES ('2025-09-03', 'Misc', 'NA', NULL, 0, 'Expense');

.print ▶ Rows with missing description (IS NULL)
SELECT date, category, description, amount
FROM expenses
WHERE description IS NULL;

.print ▶ Rows with present description (IS NOT NULL)
SELECT date, category, description, amount
FROM expenses
WHERE description IS NOT NULL
LIMIT 10;

.print ▶ Use COALESCE to show a fallback label when description is NULL
SELECT date,
       category,
       COALESCE(description, '(no description)') AS description_or_label,
       amount
FROM expenses
ORDER BY date
LIMIT 10;
