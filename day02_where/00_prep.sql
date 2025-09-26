.print
.print ── Day 2 : WHERE Clause – Prep
.print

.headers on
.mode box

-- Optional: quick data sanity
.print ▶ Sanity check: row count
SELECT COUNT(*) AS total_rows FROM expenses;

.print ▶ Peek first few rows
SELECT * FROM expenses LIMIT 5;
