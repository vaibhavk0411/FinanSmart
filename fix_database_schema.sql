-- Fix all missing columns in the database
-- Add createdBy columns to all tables (if they don't exist)
ALTER TABLE budgets ADD COLUMN IF NOT EXISTS "createdBy" text;
ALTER TABLE expenses ADD COLUMN IF NOT EXISTS "createdBy" text;
ALTER TABLE incomes ADD COLUMN IF NOT EXISTS "createdBy" text;

-- Add createdAt column to expenses table (if it doesn't exist)
ALTER TABLE expenses ADD COLUMN IF NOT EXISTS "createdAt" timestamp DEFAULT now();

-- Update existing records to have default values for createdBy (if they're null)
UPDATE budgets SET "createdBy" = 'default@user.com' WHERE "createdBy" IS NULL;
UPDATE expenses SET "createdBy" = 'default@user.com' WHERE "createdBy" IS NULL;
UPDATE incomes SET "createdBy" = 'default@user.com' WHERE "createdBy" IS NULL;

-- Make createdBy columns NOT NULL (after setting default values)
ALTER TABLE budgets ALTER COLUMN "createdBy" SET NOT NULL;
ALTER TABLE expenses ALTER COLUMN "createdBy" SET NOT NULL;
ALTER TABLE incomes ALTER COLUMN "createdBy" SET NOT NULL; 