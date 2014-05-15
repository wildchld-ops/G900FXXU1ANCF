.class public Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
.super Ljava/lang/Object;
.source "ReadingListModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;,
        Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;
    }
.end annotation


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

.field public final mEncryptedDirectryPath:Ljava/lang/String;

.field private mReadingListDataTask:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mReadingListDataTask:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mEncryptedDirectryPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private saveBitmapToSdCard(Landroid/graphics/Bitmap;)V
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sdcard/test.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mReadingListDataTask:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mReadingListDataTask:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    :cond_2
    return-void
.end method

.method public deleteAllReadingListData()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0x21

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_0
.end method

.method public deleteReadingListById(J)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public executeCreateReadingListBitmapTask(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public executeReadingListDataTask(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;Z)V
    .locals 8

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/ui/ReadingListUi;ZLcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mReadingListDataTask:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mReadingListDataTask:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$ReadingListDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getActualReadingListDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "readinglist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentReadingListData()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "description"

    aput-object v5, v2, v10

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v7, ""

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v5, "description"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-object v7

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while checking description in db - exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v6, 0x0

    goto :goto_0

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v8

    :try_start_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while checking description in db- exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v6, 0x0

    goto :goto_0

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v8

    :try_start_6
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while checking description in db - exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_2

    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v6, 0x0

    :cond_2
    :goto_1
    throw v5

    :catch_7
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSaveAsOption()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getSaveAsOption()Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;->SAVE_PAGE_AS_INVALID:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;

    goto :goto_0
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public populate()V
    .locals 0

    return-void
.end method

.method public save()V
    .locals 0

    return-void
.end method

.method public setFavicon(Lcom/sec/android/app/sbrowser/common/Tab;Z)V
    .locals 14

    const/4 v0, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getReaderDetectionObj()Lcom/sec/android/app/sbrowser/reader/ReaderDetection;

    move-result-object v8

    :cond_0
    if-nez p2, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/reader/ReaderDetection;->isReaderMode()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getThumbnailCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v11, v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p2, :cond_1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v11

    invoke-virtual {v11}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v11

    invoke-virtual {v11}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;

    const-string v12, "Error : bitmap is null in setFavicon"

    invoke-static {v11, v12}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v11, v10

    const/high16 v12, 0x4314

    div-float v7, v11, v12

    const/high16 v11, 0x42cc

    mul-float/2addr v11, v7

    float-to-int v3, v11

    move v4, v10

    if-ge v2, v3, :cond_6

    move v3, v2

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v11, v12, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    div-int/lit8 v11, v4, 0x3

    div-int/lit8 v12, v3, 0x3

    const/4 v13, 0x1

    invoke-static {v5, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v0, v9

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x46

    invoke-virtual {v0, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    const/4 v0, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    const/4 v5, 0x0

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    const/4 v9, 0x0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v11, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setFavIconBlog([B)V

    goto/16 :goto_0
.end method

.method public setSaveAsOption(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setSaveAsOption(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData$SaveAsOption;)V

    :cond_0
    return-void
.end method

.method public updateDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mCurrentReadingListData:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateReadingListRead(I)V
    .locals 3

    sget-object v2, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;->start()V

    return-void
.end method
