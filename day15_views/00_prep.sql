.print
.print ── Day 15 : Views – Prep
.print
.headers on
.mode box

.print ▶ Existing views
SELECT name, sql
FROM sqlite_master
WHERE type='view';
