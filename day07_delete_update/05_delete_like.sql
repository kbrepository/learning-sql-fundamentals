.print
.print ── Script 05: Delete Using LIKE
.print
DELETE FROM expenses
WHERE description LIKE '%sample%';

SELECT COUNT(*) AS remaining_rows FROM expenses;
