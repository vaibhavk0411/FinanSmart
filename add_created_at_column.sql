-- Add createdAt column to expenses table
ALTER TABLE expenses ADD COLUMN IF NOT EXISTS "createdAt" timestamp DEFAULT now(); 