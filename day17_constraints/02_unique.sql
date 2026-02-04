.print
.print ── Script 02: UNIQUE Constraint
.print
CREATE TABLE unique_expenses (
    id INTEGER PRIMARY KEY,
    description TEXT UNIQUE,
    amount REAL
);
