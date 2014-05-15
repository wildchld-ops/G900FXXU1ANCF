.class public Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;
.super Ljava/lang/Object;
.source "ToolbarSwipeModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbarswipe/model/IToolbarModel;


# static fields
.field private static final CACHE_SIZE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "ToolbarSwipeModel"


# instance fields
.field private mBitmapCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private createBitmap(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;
    .locals 2

    if-gtz p2, :cond_0

    if-gtz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method private getBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addToCache(Landroid/graphics/Bitmap;I)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToSdCard(ILandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 18

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->addToCache(Landroid/graphics/Bitmap;I)V

    sget-boolean v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getInstanceIndex()I

    move-result v7

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Instance"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v4

    const-string v14, "ToolbarSwipeModel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Creation of new directory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v9, 0x0

    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-boolean v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    if-eqz v14, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_2

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v14

    :goto_2
    monitor-exit p0

    return-object v14

    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_3
    if-eqz p2, :cond_4

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v13, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    invoke-direct/range {v13 .. v17}, Lcom/sec/android/app/sbrowser/common/TabData;-><init>([BIILandroid/graphics/Bitmap$Config;)V

    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    :cond_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v9, v10

    :goto_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_5
    :goto_4
    const/4 v14, 0x0

    goto :goto_2

    :catch_2
    move-exception v5

    :goto_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v5

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v5

    move-object v9, v10

    goto :goto_6

    :catch_5
    move-exception v5

    move-object v9, v10

    goto :goto_5

    :catch_6
    move-exception v5

    goto :goto_3
.end method

.method public declared-synchronized evictBitmapFromCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ToolbarSwipeModel"

    const-string v1, "TAB_SWIPE:evictBitmapFromCache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitmapFromCompositor(Lorg/chromium/content/browser/ContentView;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getBitmapRGB565FromCompositor()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentBitmapFromSDcard(I)Landroid/graphics/Bitmap;
    .locals 22

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->getBitmapFromCache(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v19, v3

    :cond_0
    :goto_0
    return-object v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getInstanceIndex()I

    move-result v10

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FULL_SCREEN_BITMAP_PATH:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Instance"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".png"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_3
    sget-boolean v19, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    if-nez v19, :cond_10

    const/4 v15, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    new-instance v12, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v12, :cond_4

    :try_start_2
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabData;->getWidth()I

    move-result v18

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabData;->getHeight()I

    move-result v9

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabData;->getBitmap()[B

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getAppSideHideURLBarFeature()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/TabData;->getBitConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getCVHolderHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mToolbarSwipeHandler:Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;->getToolbarHeight()F

    move-result v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    move/from16 v0, v17

    if-le v9, v0, :cond_6

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_6

    array-length v0, v5

    move/from16 v19, v0

    mul-int v20, v18, v17

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const/16 v19, 0x0

    mul-int v20, v18, v17

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->createBitmap(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_14

    move-result-object v3

    :cond_4
    :goto_1
    if-eqz v16, :cond_12

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    const/4 v15, 0x0

    :goto_2
    if-eqz v12, :cond_11

    :try_start_4
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d

    :goto_3
    const/4 v11, 0x0

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->addToCache(Landroid/graphics/Bitmap;I)V

    move-object/from16 v19, v3

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1, v9}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->createBitmap(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v1, v9}, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->createBitmap(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/io/StreamCorruptedException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_14

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v8

    :goto_5
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v15, :cond_8

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    const/4 v15, 0x0

    :cond_8
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    :goto_6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v8

    :goto_7
    :try_start_8
    invoke-virtual {v8}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v15, :cond_9

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12

    const/4 v15, 0x0

    :cond_9
    if-eqz v11, :cond_5

    :try_start_a
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_6

    :catch_4
    move-exception v8

    :goto_8
    :try_start_b
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v15, :cond_a

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    const/4 v15, 0x0

    :cond_a
    if-eqz v11, :cond_5

    :try_start_d
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_6

    :catch_6
    move-exception v8

    :goto_9
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v15, :cond_b

    :try_start_f
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    const/4 v15, 0x0

    :cond_b
    if-eqz v11, :cond_5

    :try_start_10
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_3

    :catch_7
    move-exception v8

    goto :goto_6

    :catch_8
    move-exception v8

    :goto_a
    :try_start_11
    const-string v19, "ToolbarSwipeModel"

    const-string v20, "TAB_SWIPE: OutOfMemoryError!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/16 v19, 0x0

    if-eqz v15, :cond_c

    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    const/4 v15, 0x0

    :cond_c
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    :goto_b
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_9
    move-exception v8

    :goto_c
    :try_start_13
    const-string v19, "ToolbarSwipeModel"

    const-string v20, "TAB_SWIPE: ArrayIndexOutOfBoundsException!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/16 v19, 0x0

    if-eqz v15, :cond_d

    :try_start_14
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    const/4 v15, 0x0

    :cond_d
    if-eqz v11, :cond_0

    :try_start_15
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_b

    :catch_a
    move-exception v8

    :goto_d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    :goto_e
    if-eqz v15, :cond_e

    :try_start_16
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    const/4 v15, 0x0

    :cond_e
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    const/4 v11, 0x0

    :cond_f
    :goto_f
    throw v19

    :cond_10
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_4

    :catch_b
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_c
    move-exception v8

    move-object/from16 v15, v16

    :goto_10
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    move-object v11, v12

    goto/16 :goto_4

    :catch_d
    move-exception v8

    goto :goto_10

    :catch_e
    move-exception v8

    goto :goto_d

    :catch_f
    move-exception v8

    goto :goto_d

    :catch_10
    move-exception v8

    goto/16 :goto_6

    :catch_11
    move-exception v8

    goto/16 :goto_6

    :catch_12
    move-exception v8

    goto/16 :goto_6

    :catchall_1
    move-exception v19

    move-object/from16 v15, v16

    goto :goto_e

    :catchall_2
    move-exception v19

    move-object v11, v12

    move-object/from16 v15, v16

    goto :goto_e

    :catch_13
    move-exception v8

    move-object/from16 v15, v16

    goto :goto_c

    :catch_14
    move-exception v8

    move-object v11, v12

    move-object/from16 v15, v16

    goto :goto_c

    :catch_15
    move-exception v8

    move-object/from16 v15, v16

    goto :goto_a

    :catch_16
    move-exception v8

    move-object v11, v12

    move-object/from16 v15, v16

    goto/16 :goto_a

    :catch_17
    move-exception v8

    move-object/from16 v15, v16

    goto/16 :goto_9

    :catch_18
    move-exception v8

    move-object v11, v12

    move-object/from16 v15, v16

    goto/16 :goto_9

    :catch_19
    move-exception v8

    move-object/from16 v15, v16

    goto/16 :goto_8

    :catch_1a
    move-exception v8

    move-object v11, v12

    move-object/from16 v15, v16

    goto/16 :goto_8

    :catch_1b
    move-exception v8

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_1c
    move-exception v8

    move-object v11, v12

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_1d
    move-exception v8

    move-object/from16 v15, v16

    goto/16 :goto_5

    :catch_1e
    move-exception v8

    move-object v11, v12

    move-object/from16 v15, v16

    goto/16 :goto_5

    :cond_12
    move-object/from16 v15, v16

    goto/16 :goto_2
.end method

.method public getQuickLaunchPageBitmap(Lcom/sec/android/app/sbrowser/toolbarswipe/ui/IToolbarSwipeUi;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->captureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public declared-synchronized removeFromCache(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbarswipe/model/ToolbarSwipeModel;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
