.class Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ReadingListImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mId:Ljava/lang/String;

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingListTextView:Landroid/widget/TextView;

.field private mReadingListTitleTextView:Landroid/widget/TextView;

.field private mReadingListURLTextView:Landroid/widget/TextView;

.field private mSavePageId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mReadingListTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mReadingListURLTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mReadingListTitleTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mReadingListTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mReadingListURLTextView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mReadingListTitleTextView:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mView:Landroid/view/View;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mTitle:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mSavePageId:Ljava/lang/String;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$700(Landroid/widget/ImageView;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;

    move-result-object v0

    if-ne p0, v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBitmapFromDB(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    sget-object v5, Lcom/sec/android/app/sbrowser/readinglist/ReadingListConstants$ReadingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v8, 0x0

    new-array v2, v12, [Ljava/lang/String;

    const-string v5, "favicon"

    aput-object v5, v2, v11

    const-string v3, "_id=?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v11, "DB returned null cursor!"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const/4 v8, 0x0

    :cond_0
    :goto_0
    move-object v5, v10

    :goto_1
    return-object v5

    :cond_1
    if-eqz v8, :cond_4

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "favicon"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v11, "BitmapWorkerTask - bitmapData is null"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v8, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    const/4 v8, 0x0

    :cond_2
    :goto_2
    move-object v5, v10

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v10, "BitmapWorkerTask - creating drawable"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mContext:Landroid/content/Context;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->convertByteArrayToFavicon(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    invoke-static {v5, v10, v7}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$600(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v6

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :goto_3
    const/4 v8, 0x0

    :cond_5
    :goto_4
    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while getting save page data - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v9

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v9

    :try_start_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while getting save page data - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/database/CursorIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v9

    goto :goto_5

    :catch_4
    move-exception v9

    :try_start_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while getting save page data - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/database/StaleDataException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v9

    goto :goto_5

    :catch_6
    move-exception v9

    :try_start_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No memory to perform getBitmapFromDB hence exiting the activity - exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/support/v4/app/FragmentActivity;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_6
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v9

    goto/16 :goto_5

    :catchall_0
    move-exception v5

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_7

    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    const/4 v8, 0x0

    :cond_7
    :goto_6
    throw v5

    :catch_8
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_9
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_a
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_b
    move-exception v9

    goto/16 :goto_5
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BitmapWorkerTask - Background processing thumbnails"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mSavePageId:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWork:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$200(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mSavePageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mExitTasksEarly:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mSavePageId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->getBitmapFromDB(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$500(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mImageCache:Lcom/sec/android/app/sbrowser/common/cache/ImageCache;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$300(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Lcom/sec/android/app/sbrowser/common/cache/ImageCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->mSavePageId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/cache/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$100(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->mExitTasksEarly:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;->access$400(Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
