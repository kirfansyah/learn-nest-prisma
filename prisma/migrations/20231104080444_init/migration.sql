-- CreateTable
CREATE TABLE "UserMenu" (
    "id" SERIAL NOT NULL,
    "menuName" TEXT NOT NULL,
    "icon" TEXT NOT NULL,

    CONSTRAINT "UserMenu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSubMenu" (
    "id" SERIAL NOT NULL,
    "menuId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "UserSubMenu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSubSubMenu" (
    "id" SERIAL NOT NULL,
    "subMenuId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "UserSubSubMenu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSubSubSubMenu" (
    "id" SERIAL NOT NULL,
    "subSubMenuId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "UserSubSubSubMenu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserAccessMenu" (
    "id" SERIAL NOT NULL,
    "roleId" INTEGER NOT NULL,
    "menuId" INTEGER NOT NULL,

    CONSTRAINT "UserAccessMenu_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "UserSubMenu" ADD CONSTRAINT "UserSubMenu_menuId_fkey" FOREIGN KEY ("menuId") REFERENCES "UserMenu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserSubSubMenu" ADD CONSTRAINT "UserSubSubMenu_subMenuId_fkey" FOREIGN KEY ("subMenuId") REFERENCES "UserSubMenu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserSubSubSubMenu" ADD CONSTRAINT "UserSubSubSubMenu_subSubMenuId_fkey" FOREIGN KEY ("subSubMenuId") REFERENCES "UserSubSubMenu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserAccessMenu" ADD CONSTRAINT "UserAccessMenu_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "UserRole"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserAccessMenu" ADD CONSTRAINT "UserAccessMenu_menuId_fkey" FOREIGN KEY ("menuId") REFERENCES "UserMenu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
