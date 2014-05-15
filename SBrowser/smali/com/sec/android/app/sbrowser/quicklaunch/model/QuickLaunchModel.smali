.class public Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;
.super Ljava/lang/Object;
.source "QuickLaunchModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final LOGTAG:Ljava/lang/String; = "QuickLaunchModel"

.field private static final MAX_CONCURRENT_EXECUTORS:I = 0x1

.field private static final MOSTVISITED_MHTML:Ljava/lang/String; = "mostvisited.mhtml"

.field private static final PINNED_MHTML:Ljava/lang/String; = "pinned.mhtml"

.field private static final QUICK_ACCESS_MANDATORY_FILES:[Ljava/lang/String; = null

.field private static final QUICK_LAUNCH_MHTML_OP_DONE:Ljava/lang/String; = "quick_launch_file_op"

.field private static mIsClearAllHistory:Z


# instance fields
.field private final QUICK_LAUNCH_MODEL_INIT_DELAY:J

.field private final QUICK_LAUNCH_MODEL_INIT_ID:I

.field private isFirstLaunchToGetMostVisited:Z

.field private isFirstLaunchToInitModel:Z

.field private isNativeHasData:Z

.field private mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

.field private mContext:Landroid/content/Context;

.field private mMostVisitedCount:I

.field private mMostVisitedItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeQuickLaunchModel:I
    .annotation build Lorg/chromium/base/AccessedByNative;
    .end annotation
.end field

.field private mQuickLaunchModelHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mIsClearAllHistory:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mostvisited.mhtml"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "pinned.mhtml"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->QUICK_ACCESS_MANDATORY_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 6

    const-wide/16 v4, 0x64

    const/16 v3, 0x22b

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v1, 0xa

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToGetMostVisited:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToInitModel:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedCount:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isNativeHasData:Z

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->QUICK_LAUNCH_MODEL_INIT_DELAY:J

    iput v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->QUICK_LAUNCH_MODEL_INIT_ID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mQuickLaunchModelHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToInitModel:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$1;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mQuickLaunchModelHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mQuickLaunchModelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedCount:I

    :goto_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeInit()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedCount:I

    goto :goto_1
.end method

.method private ClearModelMostVisitedList()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public static CopyQuickLaunchFiles(Landroid/content/Context;)V
    .locals 26

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "quick_launch_file_op"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getSavepageDirFromContext(Landroid/content/Context;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "QuickLaunchModel"

    const-string v23, " Unable to create directory"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->QUICK_ACCESS_MANDATORY_FILES:[Ljava/lang/String;

    array-length v13, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_4

    aget-object v15, v3, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_3

    const/16 v22, 0x7c

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\\Q"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\\E"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    move-object v3, v8

    array-length v13, v3

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v13, :cond_0

    aget-object v7, v3, v10

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/regex/Matcher;->matches()Z

    move-result v22

    if-nez v22, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-nez v22, :cond_5

    const/4 v11, 0x0

    const/16 v16, 0x0

    :try_start_1
    invoke-virtual {v14, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    new-instance v17, Ljava/io/FileOutputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    const-string v22, "QuickLaunchModel"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Extracting : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7

    const/16 v22, 0x800

    move/from16 v0, v22

    new-array v4, v0, [B

    :cond_7
    const/4 v5, 0x0

    :goto_4
    const/16 v22, 0x0

    const/16 v23, 0x800

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_a

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v22

    move-object/from16 v16, v17

    :goto_5
    if-eqz v11, :cond_8

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    if-eqz v16, :cond_9

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_9
    :goto_6
    :try_start_6
    throw v22
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v6

    const-string v22, "QuickLaunchModel"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception unpacking required quick launch resources: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    const-string v22, "quick_launch_file_op"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mostVisitedFileOpCompleted(Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_c

    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " extracted with 0 length!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_1
    move-exception v22

    if-eqz v16, :cond_b

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_b
    :goto_7
    :try_start_a
    throw v22
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_1
    move-exception v6

    :try_start_b
    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during sync(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_6

    :catch_2
    move-exception v6

    :try_start_d
    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_6

    :catchall_2
    move-exception v22

    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :goto_8
    :try_start_f
    throw v22

    :catch_3
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_4
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_6

    :catch_5
    move-exception v6

    :try_start_10
    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during sync(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_7

    :catch_6
    move-exception v6

    :try_start_12
    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_7

    :catchall_3
    move-exception v22

    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    :goto_9
    :try_start_14
    throw v22

    :catch_7
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_8
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_7

    :cond_c
    if-eqz v11, :cond_d

    :try_start_15
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :cond_d
    if-eqz v17, :cond_5

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileDescriptor;->sync()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    :try_start_17
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_3

    :catch_9
    move-exception v6

    :try_start_18
    const-string v22, "QuickLaunchModel"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception during close(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_3

    :catchall_4
    move-exception v22

    if-eqz v17, :cond_e

    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    :cond_e
    :goto_a
    :try_start_1b
    throw v22
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    :catch_a
    move-exception v6

    :try_start_1c
    const-string v22, "QuickLaunchModel"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception during sync(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_3

    :catch_b
    move-exception v6

    :try_start_1e
    const-string v22, "QuickLaunchModel"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception during close(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_3

    :catchall_5
    move-exception v22

    :try_start_1f
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    :goto_b
    :try_start_20
    throw v22

    :catch_c
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0

    goto :goto_b

    :catch_d
    move-exception v6

    :try_start_21
    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during sync(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    :try_start_22
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0

    goto/16 :goto_a

    :catch_e
    move-exception v6

    :try_start_23
    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0

    goto/16 :goto_a

    :catchall_6
    move-exception v22

    :try_start_24
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0

    :goto_c
    :try_start_25
    throw v22

    :catch_f
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_10
    move-exception v6

    const-string v23, "QuickLaunchModel"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception during close(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0

    goto/16 :goto_a

    :catchall_7
    move-exception v22

    goto/16 :goto_5
.end method

.method public static IsURLHasThumbnail(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "bing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeIsURLHasThumbnail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private NotifyMostVisitedCompleted(Z)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/16 v1, 0x1e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isNativeHasData:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isClearAllHistory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->notify(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    const-string v0, "QuickLaunchModel"

    const-string v1, "Native callback - NotifyMostVisitedCompleted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->notify(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->notify(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private NotifyMostVisitedThumbnailChanged(Z)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->doFetchThumbnail(Z)V

    return-void
.end method

.method private NotifyingThumbnailchanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->notify(ILjava/lang/Object;)V

    :cond_0
    const-string v0, "QuickLaunchModel"

    const-string v1, "Native callback - NotifyMostVisitedThumbnailChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToInitModel:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeInit()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeIsURLHasThumbnail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->NotifyingThumbnailchanged(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToGetMostVisited:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeGetMostVisited(III)V

    return-void
.end method

.method private addMostVisited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isNativeHasData:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$2;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doFetchThumbnail(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$3;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->getMostVisited()V

    goto :goto_0
.end method

.method public static getSavepageDirFromContext(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "readinglist"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isClearAllHistory()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mIsClearAllHistory:Z

    return v0
.end method

.method private static mostVisitedFileOpCompleted(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private native nativeBlacklistURLFromMostVisited(ILjava/lang/String;)V
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetMostVisited(III)V
.end method

.method private native nativeInit()I
.end method

.method private native nativeIsBlacklistedURL(ILjava/lang/String;)Z
.end method

.method private native nativeIsMostVisited(ILjava/lang/String;)Z
.end method

.method private static native nativeIsURLHasThumbnail(Ljava/lang/String;)Z
.end method

.method public static setClearAllHistory(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mIsClearAllHistory:Z

    return-void
.end method


# virtual methods
.method public BlacklistURLFromMostVisited(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mIsClearAllHistory:Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeBlacklistURLFromMostVisited(ILjava/lang/String;)V

    return-void
.end method

.method public clearAll()V
    .locals 0

    return-void
.end method

.method public getIsDataAvailInNative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isNativeHasData:Z

    return v0
.end method

.method public getMostVisited()V
    .locals 4

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mIsClearAllHistory:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->isAppLaunchTimeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isFirstLaunchToGetMostVisited:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;)V

    const/16 v1, 0x22b

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$4;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeGetMostVisited(III)V

    goto :goto_0
.end method

.method public getMostVisitedData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMostVistedItemSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isBlacklistedURL(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->isClearAllHistory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07009f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeIsBlacklistedURL(ILjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public isMostVisited(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mNativeQuickLaunchModel:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->nativeIsMostVisited(ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;->modelPropertyChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/16 v1, 0x22b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mMostVisitedItem:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->shutDown()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mQuickLaunchModelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mQuickLaunchModelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mQuickLaunchModelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public populate()V
    .locals 0

    return-void
.end method

.method public removeProertyChangeListner()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void
.end method

.method public save()V
    .locals 0

    return-void
.end method

.method public setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel;->mChangeObserver:Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;

    return-void
.end method
