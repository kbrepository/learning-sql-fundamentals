.print
.print ── Script 02: ROLLBACK
.print
BEGIN TRANSACTION;

INSERT INTO expenses_main
(date, category, description, amount, type)
VALUES
('2025-09-19','Food','Transaction test rollback',250,'Expense');

ROLLBACK;
