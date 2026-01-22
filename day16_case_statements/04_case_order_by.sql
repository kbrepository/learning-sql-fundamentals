.print
.print ── Script 04: CASE in ORDER BY
.print
SELECT description,
       category,
       amount
FROM expenses_main
WHERE type='Expense'
ORDER BY
  CASE category
    WHEN 'Rent' THEN 1
    WHEN 'Food' THEN 2
    WHEN 'Travel' THEN 3
    ELSE 4
  END,
  amount DESC;
