.print
.print ── Script 05: Fill New Columns
.print
UPDATE expenses_main
SET created_at = date,
    updated_at = date;

UPDATE expenses_main
SET notes = 'Food expense - daily meals'
WHERE category='Food';

.print ▶ Preview updates
SELECT category, description, notes, created_at, updated_at
FROM expenses_main 
LIMIT 5;
