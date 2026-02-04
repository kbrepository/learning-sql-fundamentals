.print
.print ── Script 01: PRIMARY KEY & NOT NULL
.print
CREATE TABLE expense_constraints (
    expense_id INTEGER PRIMARY KEY,
    date TEXT NOT NULL,
    category TEXT NOT NULL,
    amount REAL NOT NULL,
    type TEXT NOT NULL
);
