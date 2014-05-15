.class Lcom/sec/android/app/sbrowser/common/Tab$18;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->onBitmapForPrint(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "page_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v9

    const-string v10, "Print"

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Failed to create print directory"

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v10, 0x0

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintBitmap(Z)V
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8000(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8100(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    const-string v9, "Tab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Writing Permission Given "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    const-string v9, "Tab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading Permission Given "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8100(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8100(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8100(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mPrintBitmap:Landroid/graphics/Bitmap;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8102(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/Tab;->access$000(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getImgUris()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x0

    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/Tab$18;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #calls: Lcom/sec/android/app/sbrowser/common/Tab;->notifyPrintBitmap(Z)V
    invoke-static {v9, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8000(Lcom/sec/android/app/sbrowser/common/Tab;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "captureScreen : FAILED to save bitmap"

    invoke-static {v9, v10, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "captureScreen : FAILED to save bitmap"

    invoke-static {v9, v10, v1}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/Tab;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "IO exception, erroe in closing output file"

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v6, v7

    goto :goto_3
.end method
