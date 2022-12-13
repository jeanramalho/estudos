-- CreateTable
CREATE TABLE "Notifications" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "recipentId" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "catgory" TEXT NOT NULL,
    "readAt" DATETIME,
    "createAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE INDEX "Notifications_recipentId_idx" ON "Notifications"("recipentId");
