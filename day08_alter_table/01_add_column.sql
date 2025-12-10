.print
.print ── Script 01: Add New Column
.print
ALTER TABLE expenses ADD COLUMN notes TEXT;

.print ▶ Verify column added
PRAGMA table_info(expenses);
