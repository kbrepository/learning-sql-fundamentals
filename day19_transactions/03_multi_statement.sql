.print
.print ── Script 03: Multi-statement Transaction
.print
BEGIN;

UPDATE expenses_main
SET amount = amount + 50
WHERE description = 'Transaction test success';

INSERT INTO expenses_main
(date, category, description, amount, type)
VALUES
('2025-09-19','Travel','Multi-step insert',800,'Expense');

COMMIT;
