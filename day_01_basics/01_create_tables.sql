-- Day 1: Create base tables
-- Day 1: create base tables
CREATE TABLE IF NOT EXISTS expenses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  date TEXT NOT NULL,                -- 'YYYY-MM-DD'
  category TEXT NOT NULL,
  subcategory TEXT,
  description TEXT,
  amount REAL NOT NULL,
  type TEXT CHECK (type IN ('Income','Expense')) NOT NULL
);

-- Optional dim table for later joins
CREATE TABLE IF NOT EXISTS categories (
  category TEXT PRIMARY KEY,
  is_need INTEGER NOT NULL DEFAULT 1  -- 1=need, 0=want
);

INSERT OR IGNORE INTO categories(category,is_need) VALUES
('Food',1),('Transport',1),('Shopping',0),('Salary',1),('Bills',1);
