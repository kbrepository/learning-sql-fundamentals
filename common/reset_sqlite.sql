PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS expenses;
DROP TABLE IF EXISTS categories;
DROP VIEW  IF EXISTS v_expense_monthly;
DROP TRIGGER IF EXISTS trg_expenses_amount_check;

PRAGMA foreign_keys = ON;
