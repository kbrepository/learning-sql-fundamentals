.print
.print ── Day 2 / Script 02: Logical operators (AND, OR, NOT, IN, BETWEEN)
.print

.headers on
.mode box

.print ▶ Food expenses above ₹100 (AND)
SELECT date, category, amount
FROM expenses
WHERE category = 'Food' AND amount > 100;

.print ▶ Either Shopping or Transport (OR)
SELECT date, category, description, amount
FROM expenses
WHERE category = 'Shopping' OR category = 'Transport';

.print ▶ Exclude Salary category (NOT)
SELECT date, category, description, amount
FROM expenses
WHERE NOT category = 'Salary';

.print ▶ IN: Pick from a list of categories
SELECT date, category, description, amount
FROM expenses
WHERE category IN ('Food','Shopping','Transport');

.print ▶ BETWEEN: Mid-range filter (inclusive)
SELECT date, category, amount
FROM expenses
WHERE type = 'Expense' AND amount BETWEEN 200 AND 1000
ORDER BY amount DESC;
