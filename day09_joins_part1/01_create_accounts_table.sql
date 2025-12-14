.print
.print ── Script 01: Create Accounts Table
.print
CREATE TABLE IF NOT EXISTS accounts (
    account_id INTEGER PRIMARY KEY,
    account_name TEXT,
    type TEXT
);

INSERT INTO accounts (account_name, type) VALUES
('UPI','Digital'),
('Card','Credit'),
('Cash','Physical'),
('Bank','Savings');

.print ▶ Accounts table preview
SELECT * FROM accounts;
