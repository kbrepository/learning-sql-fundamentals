.print
.print ── Script 03: CHECK Constraint
.print
CREATE TABLE checked_expenses (
    id INTEGER PRIMARY KEY,
    amount REAL CHECK (amount > 0),
    type TEXT CHECK (type IN ('Expense', 'Income'))
);
