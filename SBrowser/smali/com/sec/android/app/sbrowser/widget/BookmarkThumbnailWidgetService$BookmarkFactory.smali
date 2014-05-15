.class Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;
.super Ljava/lang/Object;
.source "BookmarkThumbnailWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookmarkFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;,
        Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;
    }
.end annotation


# instance fields
.field folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

.field private folderGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field groupCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:J

.field private mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootFolder:J

.field private mWidgetId:I

.field private opBookmarkFavicon:[B

.field private opBoookmarkUrl:Ljava/lang/String;

.field private setAddBookmark:I

.field private tempbyte:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folderGroups:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->tempbyte:[B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->opBookmarkFavicon:[B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->opBoookmarkUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->setAddBookmark:I

    const-string v0, "BookmarkThumbnailWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIDGET] BookmarkFactory CREATOR - widgetId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    return-void
.end method

.method private getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 18

    const/16 v16, 0x0

    const/4 v15, 0x0

    const-string v4, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "URL"

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

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    :goto_0
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v13, 0x1

    :goto_1
    const/4 v1, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->create(JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v15

    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setOrderPosition(I)V

    const/4 v1, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setFavicon([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v16, :cond_1

    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v15

    :cond_2
    :try_start_1
    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :catch_0
    move-exception v17

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_1

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
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

    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "URL"

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

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v6, "POSITION ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

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
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getChildrenSize(J)I

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

    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v15

    :cond_2
    :try_start_2
    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :cond_6
    if-eqz v17, :cond_1

    goto :goto_4
.end method

.method private getChildrenSize(J)I
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v3, "PARENT = ? AND DELETED = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_ID"

    aput-object v0, v2, v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getFaviconData(Ljava/lang/String;)[B
    .locals 3

    const-string v1, "BookmarkThumbnailWidgetService"

    const-string v2, "getFaviconData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v1, p1}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "BookmarkThumbnailWidgetService"

    const-string v2, " mFaviconController.GetFaviconData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const-string v1, "BookmarkThumbnailWidgetService"

    const-string v2, "Get Favicon Data Success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v1, "BookmarkThumbnailWidgetService"

    const-string v2, " mFaviconController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private identifyDominantColor([B)I
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_2

    array-length v6, p1

    invoke-static {p1, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v6}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getLuminance(I)D

    move-result-wide v1

    if-eq v0, v5, :cond_1

    const-wide/high16 v5, 0x4014

    cmpg-double v5, v1, v5

    if-ltz v5, :cond_0

    const-wide v5, 0x406f600000000000L

    cmpl-double v5, v1, v5

    if-lez v5, :cond_1

    :cond_0
    invoke-virtual {v4, v3, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method private resetBookmarks()V
    .locals 2

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v1, "[WIDGET] resetBookmarks "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "BookmarkThumbnailWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIDGET] getCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040020

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 26

    const-string v22, "BookmarkThumbnailWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[WIDGET] BookmarkFactory getViewAt - position : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    :cond_0
    const/16 v21, 0x0

    :goto_0
    return-object v21

    :cond_1
    const-wide/16 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v22

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v16

    :cond_2
    :goto_2
    if-eqz v11, :cond_7

    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f040021

    invoke-direct/range {v21 .. v23}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_3
    move-object/from16 v5, v19

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v5, v20

    :cond_3
    const v22, 0x7f0a00c6

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v11, :cond_9

    const-string v22, "TAG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "current folder id  is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    move-wide/from16 v22, v0

    cmp-long v22, v9, v22

    if-nez v22, :cond_8

    const-string v22, "TAG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "current folder is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v9, v16

    const v22, 0x7f0a00e9

    const v23, 0x7f0202e5

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v22, 0x7f0a00ec

    const v23, 0x7f0202dd

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    if-eqz v11, :cond_d

    new-instance v22, Landroid/content/Intent;

    const-string v23, "com.sec.android.app.sbrowser.CHANGE_FOLDER"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v23, "appWidgetId"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v22

    const-string v23, "ID"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v8

    :goto_5
    const v22, 0x7f0a00e8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    const-string v22, "BookmarkThumbnailWidgetService"

    const-string v23, "[WIDGET] mAdapterData is NULL "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v9, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;->id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    goto/16 :goto_2

    :cond_7
    new-instance v21, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f040020

    invoke-direct/range {v21 .. v23}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_8
    const v22, 0x7f0a00e9

    const v23, 0x7f0202e4

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v22, 0x7f0a00ec

    const v23, 0x7f0202dc

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :cond_9
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v22, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->thumbnail:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09008f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090090

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    if-eqz v4, :cond_b

    array-length v0, v4

    move/from16 v22, v0

    if-lez v22, :cond_b

    const-string v22, "BookmarkThumbnailWidgetService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[WIDGET] BookmarkFactory getViewAt - blob.LENGTH : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v4

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    mul-int v22, v22, v13

    div-int v12, v22, v14

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v12, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    :cond_a
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    const v22, 0x7f0a00e9

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v22, 0x7f0a00e9

    const-string v23, "setVisibility"

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v22, 0x7f0a00ea

    const-string v23, "setVisibility"

    const/16 v24, 0x8

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->tempbyte:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->tempbyte:[B

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->tempbyte:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->tempbyte:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    const v22, 0x7f0a00ec

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v22, 0x7f0a00c6

    const-string v23, "setBackgroundResource"

    const v24, 0x7f020019

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v23, 0x7f0a00eb

    const-string v24, "setBackgroundColor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->dominant:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_4

    :cond_b
    const v22, 0x7f0a00ea

    const v23, 0x7f0202e3

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v22, 0x7f0a00ea

    const-string v23, "setVisibility"

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v22, 0x7f0a00e9

    const-string v23, "setVisibility"

    const/16 v24, 0x8

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_6

    :cond_c
    const v22, 0x7f0a00ec

    const v23, 0x7f0202e2

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v22, 0x7f0a00c6

    const-string v23, "setBackgroundColor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x106000d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v22, 0x7f0a00eb

    const-string v23, "setBackgroundColor"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f08004a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v21 .. v24}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_4

    :cond_d
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    goto/16 :goto_5

    :cond_e
    new-instance v8, Landroid/content/Intent;

    const-string v22, "show_browser"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method loadBookmarks()V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v4, "[WIDGET] loadBookmarks "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getChildren(J)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->groupCount:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folderGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folderGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folderGroups:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->setFillData(Ljava/util/ArrayList;IIZZI)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method loadBookmarksWithId(J)V
    .locals 13

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v2, "[WIDGET] loadBookmarksWithId "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v11, p1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v9

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getChildren(J)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->groupCount:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->groupCount:Ljava/util/ArrayList;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folderGroups:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v9, :cond_1

    new-instance v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    invoke-direct {v8}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;-><init>()V

    iput-object v9, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const/4 v0, 0x0

    iput v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->padding:I

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isChecked:Z

    const/4 v0, 0x0

    iput v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->groupPosition:I

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isPrimaryGroup:Z

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isExpand:Z

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->hasChild:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v0, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "BookmarkThumbnailWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Back Folder Add :: mAdapterData.size : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v10

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->setFillData(Ljava/util/ArrayList;IIZZI)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->groupCount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v2, "[WIDGET] mAdapterData is NULL "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v1, "[WIDGET] onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDataSetChanged()V
    .locals 6

    const-string v2, "BookmarkThumbnailWidgetService"

    const-string v3, "[WIDGET] onDataSetChanged "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->syncState()V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->loadBookmarks()V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->loadBookmarksWithId(J)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v1, "[WIDGET] onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;->deleteWidgetState(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    return-void
.end method

.method public onExpandGroup(Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;II)V
    .locals 8

    const/4 v2, 0x0

    iget-object v7, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "node in expandgroup "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-string v0, "BookmarkThumbnailWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExpandGroup - id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getChildren(J)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    iget-boolean v5, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isChecked:Z

    move-object v0, p0

    move v4, v2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->setFillData(Ljava/util/ArrayList;IIZZI)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isExpand:Z

    return-void
.end method

.method saveState()V
    .locals 4

    const-string v0, "BookmarkThumbnailWidgetService"

    const-string v1, "[WIDGET] saveState "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    :cond_0
    const-string v0, "BookmarkThumbnailWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIDGET]mCurrentFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mRootFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_folder"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "root_folder"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFillData(Ljava/util/ArrayList;IIZZI)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;IIZZI)V"
        }
    .end annotation

    const/4 v7, 0x0

    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WIDGET] setFillData / nodeList.size() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ Position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_e

    const-string v3, "TAG"

    const-string v4, "setfilldata"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v13, 0x0

    const-string v4, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setfilldata_ type  is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v3, v4, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder.node is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move/from16 v0, p2

    iput v0, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->padding:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move/from16 v0, p5

    iput-boolean v0, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isChecked:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move/from16 v0, p6

    iput v0, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->groupPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move/from16 v0, p4

    iput-boolean v0, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isPrimaryGroup:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->opBookmarks:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$OperatorBookmarks;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->identifyDominantColor([B)I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->dominant:I

    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    if-eqz v3, :cond_3

    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder.favicon is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->getChildren(J)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isPrimaryGroup:Z

    if-eqz v3, :cond_4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->favicon:[B

    goto :goto_1

    :cond_3
    const-string v3, "TAG"

    const-string v4, "folder.favicon is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isPrimaryGroup:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->groupCount:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p6, p6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folderGroups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder.node.name() is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isExpand:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->hasChild:Z

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_d

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v12

    :cond_6
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url value is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/provider/BookmarkWidgetProvider$BookmarkWidget;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor value is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "TAG"

    const-string v4, "cursor value is inside case"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const-string v4, "preview_thumbnail"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->thumbnail:[B

    :goto_5
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v9, 0x0

    :cond_7
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_6
    const/4 v9, 0x0

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v14, p3, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8

    move/from16 p3, v14

    :cond_9
    :goto_7
    const-string v3, "BookmarkThumbnailWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdapterData.size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder.node.name()in 2nd is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->node:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->isExpand:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;->hasChild:Z

    goto/16 :goto_4

    :cond_b
    :try_start_3
    const-string v3, "BookmarkThumbnailWidgetService"

    const-string v4, "no cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    :catch_0
    move-exception v3

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_c
    throw v3

    :catch_1
    move-exception v10

    :goto_8
    const-string v3, "BookmarkThumbnailWidgetService"

    const-string v4, "[WIDGET] IndexOutOfBoundsException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_2
    move-exception v10

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-nez v3, :cond_9

    const-string v3, "BookmarkThumbnailWidgetService"

    const-string v4, "[WIDGET] mAdapterData is NULL "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    add-int/lit8 v14, p3, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->folder:Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory$WidgetItem;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    move/from16 p3, v14

    goto/16 :goto_3

    :catch_3
    move-exception v10

    :goto_a
    const-string v3, "BookmarkThumbnailWidgetService"

    const-string v4, "[WIDGET] IndexOutOfBoundsException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_4
    move-exception v10

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mAdapterData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const-string v3, "BookmarkThumbnailWidgetService"

    const-string v4, "[WIDGET] mAdapterData is NULL "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    return-void

    :catch_5
    move-exception v3

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catch_6
    move-exception v10

    move/from16 p3, v14

    goto :goto_b

    :catch_7
    move-exception v10

    move/from16 p3, v14

    goto :goto_a

    :catch_8
    move-exception v10

    move/from16 p3, v14

    goto :goto_9

    :catch_9
    move-exception v10

    move/from16 p3, v14

    goto :goto_8
.end method

.method syncState()V
    .locals 6

    const-wide/16 v4, -0x1

    const-string v2, "BookmarkThumbnailWidgetService"

    const-string v3, "[WIDGET] syncState "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mWidgetId:I

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService;->getWidgetState(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "current_folder"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "root_folder"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mRootFolder:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->resetBookmarks()V

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkThumbnailWidgetService$BookmarkFactory;->mCurrentFolder:J

    :cond_1
    return-void
.end method
