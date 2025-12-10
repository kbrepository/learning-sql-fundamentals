.print
.print ── Script 02: Rename Column
.print
ALTER TABLE expenses RENAME COLUMN subcategory TO sub_category;

.print ▶ Verify rename
PRAGMA table_info(expenses);
