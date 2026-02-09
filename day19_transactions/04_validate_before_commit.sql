.print
.print ── Script 04: Validate Before Commit
.print
BEGIN;

INSERT INTO expenses_main
(date, category, description, amount, type)
VALUES
('2025-09-19','Shopping','Validate before commit',600,'Expense');

SELECT *
FROM expenses_main
WHERE description = 'Validate before commit';

ROLLBACK;
