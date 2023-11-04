/*
  Warnings:

  - The `isActive` column on the `User` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `isActive` column on the `UserSubMenu` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "isActive",
ADD COLUMN     "isActive" INTEGER DEFAULT 1,
ALTER COLUMN "roleId" SET DEFAULT 1;

-- AlterTable
ALTER TABLE "UserSubMenu" DROP COLUMN "isActive",
ADD COLUMN     "isActive" INTEGER NOT NULL DEFAULT 1;
