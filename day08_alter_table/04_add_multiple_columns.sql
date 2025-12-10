.print
.print ── Script 04: Add Multiple Columns
.print
ALTER TABLE expenses_main ADD COLUMN created_at TEXT;
ALTER TABLE expenses_main ADD COLUMN updated_at TEXT;

.print ▶ Verify schema
PRAGMA table_info(expenses_main);
