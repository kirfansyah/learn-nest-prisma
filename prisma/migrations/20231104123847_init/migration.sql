/*
  Warnings:

  - The `isActive` column on the `UserSubSubMenu` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `isActive` column on the `UserSubSubSubMenu` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "UserSubSubMenu" DROP COLUMN "isActive",
ADD COLUMN     "isActive" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "UserSubSubSubMenu" DROP COLUMN "isActive",
ADD COLUMN     "isActive" INTEGER NOT NULL DEFAULT 0;
