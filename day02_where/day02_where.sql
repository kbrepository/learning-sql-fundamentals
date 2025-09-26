-- Day 2: WHERE Clause Examples
SELECT * FROM expenses WHERE category = 'Food';
SELECT * FROM expenses WHERE amount > 500;
SELECT * FROM expenses WHERE category = 'Food' AND amount > 100;
SELECT * FROM expenses WHERE category = 'Shopping' OR category = 'Transport';
SELECT * FROM expenses WHERE description LIKE '%online%';
