.print
.print ── Script 04: Delete by Exact Match
.print
DELETE FROM expenses
WHERE description='test';

SELECT COUNT(*) AS remaining_rows FROM expenses;
