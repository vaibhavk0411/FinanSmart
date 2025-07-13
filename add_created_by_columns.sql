-- Add createdBy columns to all tables
ALTER TABLE budgets ADD COLUMN IF NOT EXISTS "createdBy" text;
ALTER TABLE expenses ADD COLUMN IF NOT EXISTS "createdBy" text;
ALTER TABLE incomes ADD COLUMN IF NOT EXISTS "createdBy" text; 