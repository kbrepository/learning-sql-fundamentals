.print
.print ── Script 05: FOREIGN KEY Constraint
.print
CREATE TABLE account_master (
    account_id INTEGER PRIMARY KEY,
    account_name TEXT UNIQUE
);

CREATE TABLE expense_fk (
    id INTEGER PRIMARY KEY,
    amount REAL,
    account_name TEXT,
    FOREIGN KEY (account_name)
      REFERENCES account_master(account_name)
);
