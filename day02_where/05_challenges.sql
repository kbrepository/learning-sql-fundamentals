.print
.print ── Day 2 / Script 05: Mini challenges (apply WHERE creatively)
.print

.headers on
.mode box

.print ▶ Challenge 1: Top 5 most expensive 'Expense' rows
SELECT date, category, description, amount
FROM expenses
WHERE type = 'Expense'
ORDER BY amount DESC
LIMIT 5;

.print ▶ Challenge 2: All non-Food, non-Shopping expenses above ₹200
SELECT date, category, description, amount
FROM expenses
WHERE type = 'Expense'
  AND category NOT IN ('Food','Shopping')
  AND amount > 200
ORDER BY amount DESC;

.print ▶ Challenge 3: Simple “month filter” using a string prefix on date ('YYYY-MM')
-- If your date is TEXT in 'YYYY-MM-DD' format, this works nicely.
SELECT date, category, description, amount
FROM expenses
WHERE date LIKE '2025-09-%'
ORDER BY date, amount DESC;

.print ▶ Challenge 4: Flag high-value expenses (preview for CASE usage)
SELECT date,
       category,
       description,
       amount,
       CASE WHEN amount >= 1000 THEN 'High'
            WHEN amount >= 300  THEN 'Medium'
            ELSE 'Low'
       END AS spend_band
FROM expenses
WHERE type = 'Expense'
ORDER BY amount DESC
LIMIT 10;
