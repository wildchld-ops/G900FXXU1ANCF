.class Lcom/sec/android/app/sbrowser/common/Tab$21;
.super Landroid/os/AsyncTask;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab;->setFullScreenBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/Tab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 15

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/Tab$21;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_0
    new-instance v9, Ljava/io/File;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->access$1900(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Instance"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mInstanceIndex:I
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8400(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    if-nez v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    if-nez v12, :cond_e

    const/4 v10, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    :try_start_2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabData;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabData;->getHeight()I

    move-result v0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabData;->getBitmap()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;
    invoke-static {v12, v13}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8502(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    #getter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;
    invoke-static {v12}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8500(Lcom/sec/android/app/sbrowser/common/Tab;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15

    if-eqz v11, :cond_3

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    :cond_4
    :goto_1
    move-object v6, v7

    move-object v10, v11

    :cond_5
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_6

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    :goto_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v5

    :goto_5
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_7

    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13

    :cond_7
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_4

    :catch_4
    move-exception v5

    :goto_6
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_8

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12

    :cond_8
    if-eqz v6, :cond_5

    :try_start_b
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    :catch_5
    move-exception v5

    goto :goto_4

    :catch_6
    move-exception v5

    :goto_7
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v10, :cond_9

    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    :cond_9
    if-eqz v6, :cond_5

    :try_start_e
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_2

    :catch_7
    move-exception v5

    goto :goto_4

    :catch_8
    move-exception v5

    :goto_8
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v10, :cond_a

    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    :cond_a
    if-eqz v6, :cond_5

    :try_start_11
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_2

    :catch_9
    move-exception v5

    goto :goto_4

    :catch_a
    move-exception v5

    :goto_9
    :try_start_12
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v10, :cond_b

    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    :cond_b
    if-eqz v6, :cond_5

    :try_start_14
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_2

    :catch_b
    move-exception v5

    goto :goto_4

    :catchall_0
    move-exception v12

    :goto_a
    if-eqz v10, :cond_c

    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    :cond_d
    :goto_b
    throw v12

    :cond_e
    :try_start_16
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/common/Tab$21;->this$0:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    #setter for: Lcom/sec/android/app/sbrowser/common/Tab;->mTabManagerFullBitmap:Landroid/graphics/Bitmap;
    invoke-static {v12, v13}, Lcom/sec/android/app/sbrowser/common/Tab;->access$8502(Lcom/sec/android/app/sbrowser/common/Tab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_2

    :catch_c
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_2

    :catch_d
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_e
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_f
    move-exception v5

    goto/16 :goto_4

    :catch_10
    move-exception v5

    goto/16 :goto_4

    :catch_11
    move-exception v5

    goto/16 :goto_4

    :catch_12
    move-exception v5

    goto/16 :goto_4

    :catch_13
    move-exception v5

    goto/16 :goto_4

    :catchall_1
    move-exception v12

    move-object v10, v11

    goto :goto_a

    :catchall_2
    move-exception v12

    move-object v6, v7

    move-object v10, v11

    goto :goto_a

    :catch_14
    move-exception v5

    move-object v10, v11

    goto :goto_9

    :catch_15
    move-exception v5

    move-object v6, v7

    move-object v10, v11

    goto :goto_9

    :catch_16
    move-exception v5

    move-object v10, v11

    goto :goto_8

    :catch_17
    move-exception v5

    move-object v6, v7

    move-object v10, v11

    goto :goto_8

    :catch_18
    move-exception v5

    move-object v10, v11

    goto/16 :goto_7

    :catch_19
    move-exception v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_7

    :catch_1a
    move-exception v5

    move-object v10, v11

    goto/16 :goto_6

    :catch_1b
    move-exception v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_6

    :catch_1c
    move-exception v5

    move-object v10, v11

    goto/16 :goto_5

    :catch_1d
    move-exception v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_5

    :catch_1e
    move-exception v5

    move-object v10, v11

    goto/16 :goto_3

    :catch_1f
    move-exception v5

    move-object v6, v7

    move-object v10, v11

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$21;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/Tab$21;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/Tab$21;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
