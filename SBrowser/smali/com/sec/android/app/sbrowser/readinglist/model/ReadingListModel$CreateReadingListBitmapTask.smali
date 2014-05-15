.class Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;
.super Landroid/os/AsyncTask;
.source "ReadingListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateReadingListBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;-><init>(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/Tab;)V

    return-void
.end method

.method private createBitmapInExternalStorage(Landroid/graphics/Bitmap;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v9

    :cond_0
    const-string v0, "yyyyMMddHHmm"

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/Internet/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$400(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "directory creation failed!!"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$300(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    move-object v6, v7

    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->this$0:Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->LOGTAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;->access$400(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while creating save page data for bitmap : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v9

    :catchall_1
    move-exception v9

    move-object v6, v7

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v6, v7

    goto :goto_2

    :cond_5
    move-object v6, v7

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->createBitmapInExternalStorage(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListModel$CreateReadingListBitmapTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
