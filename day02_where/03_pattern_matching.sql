.print
.print ── Day 2 / Script 03: Pattern matching with LIKE
.print

.headers on
.mode box

-- Note: In SQLite, LIKE is case-insensitive by default (unless PRAGMA case_sensitive_like = ON).

.print ▶ Descriptions containing the word 'online'
SELECT date, category, description, amount
FROM expenses
WHERE description LIKE '%online%';

.print ▶ Descriptions starting with 'S'
SELECT date, category, description, amount
FROM expenses
WHERE description LIKE 'S%';

.print ▶ Descriptions ending with 'ride'
SELECT date, category, description, amount
FROM expenses
WHERE description LIKE '%ride';

.print ▶ Single-character wildcard example: 'S_bway sandwich' (matches 'Subway sandwich')
SELECT date, category, description, amount
FROM expenses
WHERE description LIKE 'S_bway sandwich';
