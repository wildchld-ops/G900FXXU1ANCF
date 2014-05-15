.class public abstract Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->recursiveAddChildren(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->removeThumbnailFromDbFromToolbar(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->clearUndos(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateChildrenCount(Ljava/lang/Long;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObjectFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getPostion(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildren(J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->isItAncestor(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->removeThumbnailFromDb(Ljava/lang/String;)V

    return-void
.end method

.method private static clearUndos(Landroid/content/Context;)V
    .locals 17

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v8

    const-string v3, "IS_COMMITED = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_ID"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "SURL"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "bookmark_type"

    aput-object v1, v2, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v8, :cond_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "_ID = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v0, v1, v5, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v12, "widget_url = ?"

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "DIRTY"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "DELETED"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "IS_COMMITED"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "MODIFIED"

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "SYNC5"

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "_ID = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v0, v1, v11, v5, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static deleteBookmarkFromToolbar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$14;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    return-void
.end method

.method public static donotUndoFromToolbar(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$15;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 17

    const/4 v15, 0x0

    const/4 v14, 0x0

    const-string v3, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_ID"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "SURL"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "TITLE"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "FAVICON"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "EDITABLE"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "bookmark_type"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "FOLDER"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "PARENT"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "POSITION"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "CHILDREN_COUNT"

    aput-object v1, v2, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    :goto_0
    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x7

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x4

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    :goto_1
    const/4 v0, 0x5

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-static/range {v5 .. v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v14

    const/16 v0, 0x8

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setOrderPosition(I)V

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V

    :cond_0
    const/16 v0, 0x9

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    return-object v14

    :cond_3
    :try_start_1
    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :catch_0
    move-exception v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getBookmarkObject(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 17

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v14, 0x0

    const-string v3, "SURL = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_ID"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "SURL"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "TITLE"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "FAVICON"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "EDITABLE"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "bookmark_type"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "FOLDER"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "PARENT"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "POSITION"

    aput-object v1, v2, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    :goto_0
    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x7

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x4

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v12, 0x1

    :goto_1
    const/4 v0, 0x5

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-static/range {v5 .. v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v14

    const/16 v0, 0x8

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setOrderPosition(I)V

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    return-object v14

    :cond_2
    :try_start_1
    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    :catch_0
    move-exception v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getBookmarkObjectFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 17

    const/4 v15, 0x0

    const/4 v14, 0x0

    const-string v3, "TITLE = ? AND DELETED = ? AND IS_COMMITED = ? AND PARENT = ? AND FOLDER = ?"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_ID"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "SURL"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "TITLE"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "FAVICON"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "EDITABLE"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "bookmark_type"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "FOLDER"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "PARENT"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "POSITION"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "CHILDREN_COUNT"

    aput-object v1, v2, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    :goto_0
    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x7

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v0, 0x4

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    :goto_1
    const/4 v0, 0x5

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-static/range {v5 .. v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v14

    const/16 v0, 0x8

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setOrderPosition(I)V

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V

    :cond_0
    const/16 v0, 0x9

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    return-object v14

    :cond_3
    :try_start_1
    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :catch_0
    move-exception v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getBookmarkSuggestions(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation

    const/4 v15, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "SURL"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "TITLE"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "EDITABLE"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "bookmark_type"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "FOLDER"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "PARENT"

    aput-object v2, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETED = 0 AND FOLDER = 0 AND TITLE LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "http"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "MODIFIED DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_5

    const-string v1, "_ID"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v1, "bookmark_type"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    :goto_2
    const-string v1, "TITLE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "SURL"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "PARENT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v1, "EDITABLE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v12, 0x1

    :goto_3
    const-string v1, "bookmark_type"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v13, 0x1

    :goto_4
    invoke-static/range {v5 .. v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL LIKE \'%http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "http://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://m."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    :try_start_1
    sget-object v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_5
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    return-object v14

    :catch_0
    move-exception v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v1

    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public static getBookmarkURLNodeCount(Landroid/content/Context;)J
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const-string v3, "FOLDER=0 "

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v7, v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v7
.end method

.method private getChildren(J)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/16 v16, 0x0

    const-string v4, "PARENT = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0xa

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "SURL"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "TITLE"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "FAVICON"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "EDITABLE"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "bookmark_type"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "FOLDER"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "PARENT"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "POSITION"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "CHILDREN_COUNT"

    aput-object v2, v3, v1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v6, "POSITION ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    :goto_1
    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v1, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v13, 0x1

    :goto_2
    const/4 v1, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v14, 0x1

    :goto_3
    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v16

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setOrderPosition(I)V

    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V

    :cond_0
    const/16 v1, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v18

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_4
    return-object v15

    :cond_2
    :try_start_2
    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v1

    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private getChildrenSize(J)I
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v3, "PARENT = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_ID"

    aput-object v0, v2, v5

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "POSITION DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getPostion(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 11

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v3, "PARENT = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_ID"

    aput-object v0, v2, v1

    const-string v0, "POSITION"

    aput-object v0, v2, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "POSITION DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v0, v0, v9

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isItAncestor(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Z
    .locals 4

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isThumbnailAvailableForUrl(Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v0, 0x0

    const-string v3, "twitter"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bing"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v9, v0

    :cond_1
    :goto_0
    return v9

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v10, 0x0

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_opbookmark"

    aput-object v3, v2, v12

    const/4 v3, 0x2

    const-string v5, "widget_url"

    aput-object v5, v2, v3

    new-array v4, v12, [Ljava/lang/String;

    aput-object p0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "widget_url"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_3

    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isURLBookmarked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "SURL = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_ID"

    aput-object v0, v2, v5

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isURLEditable(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 11

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v3, "SURL = ? AND DELETED = ? AND IS_COMMITED = ?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_ID"

    aput-object v0, v2, v10

    const-string v0, "SURL"

    aput-object v0, v2, v9

    const-string v0, "EDITABLE"

    aput-object v0, v2, v1

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v8, v9

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v8

    :cond_2
    move v8, v10

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private recursiveAddChildren(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildren(J)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->recursiveAddChildren(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Z)V

    goto :goto_1
.end method

.method private removeThumbnailFromDb(Ljava/lang/String;)V
    .locals 4

    const-string v0, "widget_url = ?"

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static removeThumbnailFromDbFromToolbar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "widget_url = ?"

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static undoFromToolbar(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$16;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateChildrenCount(Ljava/lang/Long;I)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "CHILDREN_COUNT"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method public static updateFavicon(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v5, "MODIFIED"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "SYNC5"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v5, "FAVICON"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v5, "DIRTY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "SURL = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v5, v1

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    return-void
.end method

.method public static updateThumbnailFromDB(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;II)V
    .locals 21

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v2, v2, p4

    div-int v15, v2, p3

    const-string v2, "Bookmark Hover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mThumbHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, v15, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v0, v20

    invoke-static {v9, v2, v4, v0, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    const/16 v2, 0xc4

    const/16 v4, 0xae

    const/4 v5, 0x1

    invoke-static {v8, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "AddBookmarkActivity"

    const-string v4, "[WIDGET] save JPEG "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    if-nez v10, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V

    const-string v2, "AddBookmarkActivity"

    const-string v4, "[WIDGET] save JPEG 60"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    if-eqz v18, :cond_1

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    const/4 v8, 0x0

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    const/4 v11, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/4 v9, 0x0

    :try_start_0
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "widget_url"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "widget_thumbnail"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "preview_thumbnail"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "widget_url"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_thumbnail"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "preview_thumbnail"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v2, "is_opbookmark"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "widget_url"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_thumbnail"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "preview_thumbnail"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x1e

    invoke-static {v2, v4, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method


# virtual methods
.method public addBookObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;[BZ)V
    .locals 10

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    move/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZZ[B)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    return-void
.end method

.method public deleteBookmarks(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    return-void
.end method

.method public donotUndo()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public editBookmark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;ZI)V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$7;

    move-object v1, p0

    move-wide v2, p4

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p8

    move/from16 v8, p7

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$7;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/Long;IZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    return-void
.end method

.method public abstract getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
.end method

.method public getAllAncestorBookmarkObjects(J)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBookmarkObjectChildren(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$9;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBookmarkObjectForID(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBookmarkObjectHierarchy(Z)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBookmarkRoot()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 9

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0252

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v5, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
.end method

.method public getThumbnailForUrl(Ljava/lang/String;)[B
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "is_opbookmark"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v3, "widget_url"

    aput-object v3, v2, v0

    const-string v0, "widget_thumbnail"

    aput-object v0, v2, v11

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v5

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveToFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;",
            ">;",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$6;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    return-void
.end method

.method public reorderBookmarks(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runBookmarkDbThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public undo(Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFavicon(Ljava/lang/String;[B)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$12;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->runBookmarkDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
