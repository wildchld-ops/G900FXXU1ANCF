.class Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->onBitmapForScrap(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    #calls: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getCurrentTimeStamp()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$700(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mReaderArticleHeadingData:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$800(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mReaderArticleHeadingData:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$800(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Ljava/lang/String;

    move-result-object v3

    const-string v22, "[<>*.$&+,:;=?@#|/]"

    const-string v23, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v22, "\\"

    const-string v23, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v22, "\""

    const-string v23, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    const/16 v22, 0x0

    const/16 v23, 0x3c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, v17

    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".png"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "/"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->getSettings(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isDownloadInternalMemory()Z

    move-result v22

    if-nez v22, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getSDCardPath()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_2
    new-instance v7, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Internet"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Reader"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v4

    const-string v22, "ReaderController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The file fileDir is created "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v15, v0

    move-wide/from16 v20, v15

    cmp-long v22, v20, v18

    if-lez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->hSavedReader:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    const-string v23, "Internet"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mSavedImageBitmap:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$600(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/graphics/Bitmap;

    move-result-object v22

    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x64

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->this$0:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;

    move-object/from16 v22, v0

    #getter for: Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->mActivity:Landroid/app/Activity;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;->access$000(Lcom/sec/android/app/sbrowser/reader/controller/ReaderController;)Landroid/app/Activity;

    move-result-object v22

    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MEDIA_MOUNTED"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    move-result v13

    const-string v22, "ReaderController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "The file imageFile is made real only "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2$1;->this$1:Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/reader/controller/ReaderController$2;->hSavedReader:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v5

    :goto_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_4

    :catchall_0
    move-exception v22

    :goto_6
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v11, 0x0

    :goto_7
    throw v22

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    goto/16 :goto_1

    :catchall_1
    move-exception v22

    move-object v11, v12

    goto :goto_6

    :catch_6
    move-exception v5

    move-object v11, v12

    goto :goto_5

    :catch_7
    move-exception v5

    move-object v11, v12

    goto :goto_3
.end method
