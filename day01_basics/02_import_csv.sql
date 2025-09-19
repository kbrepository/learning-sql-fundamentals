.headers on
.mode box

DROP TABLE IF EXISTS expenses_raw;

CREATE TABLE IF NOT EXISTS expenses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  date TEXT NOT NULL,
  category TEXT NOT NULL,
  subcategory TEXT,
  description TEXT,
  amount REAL NOT NULL,
  type TEXT CHECK (type IN ('Income','Expense')) NOT NULL
);

CREATE TABLE expenses_raw(
  date TEXT,
  category TEXT,
  subcategory TEXT,
  description TEXT,
  amount REAL,
  type TEXT
);

.mode csv
.import --skip 1 common/datasets/expenses.csv expenses_raw

SELECT COUNT(*) AS rows_in_staging FROM expenses_raw;

DELETE FROM expenses;
INSERT INTO expenses(date, category, subcategory, description, amount, type)
SELECT date, category, subcategory, description, amount, type
FROM expenses_raw
WHERE type IN ('Income','Expense');

SELECT COUNT(*) AS rows_in_expenses FROM expenses;
SELECT * FROM expenses LIMIT 5;

DROP TABLE IF EXISTS expenses_raw;

.print
.print ✅ Import completed.
