/*
  Warnings:

  - The `billing_period` column on the `Subscription` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- CreateEnum
CREATE TYPE "SUBSCRIPTION_BILLING_PERIOD" AS ENUM ('MONTHLY', 'QUARTERLY', 'YEARLY');

-- AlterTable
ALTER TABLE "Subscription" ALTER COLUMN "currency" SET DEFAULT 'PLN',
ALTER COLUMN "start_date" SET DATA TYPE DATE,
ALTER COLUMN "end_date" SET DATA TYPE DATE,
DROP COLUMN "billing_period",
ADD COLUMN     "billing_period" "SUBSCRIPTION_BILLING_PERIOD" NOT NULL DEFAULT 'MONTHLY',
ALTER COLUMN "next_payment_date" SET DATA TYPE DATE,
ALTER COLUMN "status" SET DEFAULT 'ACTIVE';

-- DropEnum
DROP TYPE "SUBSCRIPTION_BILING_PERIOD";
