.print
.print ── Script 01: BEGIN & COMMIT
.print
BEGIN TRANSACTION;

INSERT INTO expenses_main
(date, category, description, amount, type)
VALUES
('2025-09-19','Food','Transaction test success',300,'Expense');

COMMIT;
