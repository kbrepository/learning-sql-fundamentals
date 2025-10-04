## Execution Steps SQLite
From your repo root:

```
cd learning-sql-fundamentals
sqlite3 expenses.db
```
## Inside he SQLite prompt, run each script with .read

```
.headers on
.mode box

.read day03_orderby/00_prep.sql
.read day03_orderby/01_sort_by_amount.sql
.read day03_orderby/02_top5_expenses.sql
.read day03_orderby/03_sort_by_category_amount.sql
.read day03_orderby/04_sort_by_date.sql
.read day03_orderby/05_combined_example.sql
```