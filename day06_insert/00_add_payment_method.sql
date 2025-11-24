.print
.print ── Day 6 : Table Update – Adding payment_method column
.print
ALTER TABLE expenses ADD COLUMN payment_method TEXT;

.print ▶ Column added successfully
PRAGMA table_info(expenses);
