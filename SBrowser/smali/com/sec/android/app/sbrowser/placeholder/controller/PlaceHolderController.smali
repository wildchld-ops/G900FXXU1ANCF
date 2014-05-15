.class public Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;
.super Ljava/lang/Object;
.source "PlaceHolderController.java"

# interfaces
.implements Lorg/samsung/content/sbrowser/SbrContentViewRenderView$ISurfaceChangeListener;
.implements Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter$SbrPlaceholderEventListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_PREV_TAB_ID:I = -0x2

.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final PROGRESS_FINISH:I = 0x6b

.field public static final PROGRESS_HUNDREAD:I = 0x6a

.field public static final PROGRESS_INCREMENT:I = 0x69

.field private static final TOP_ZERO:I


# instance fields
.field private isJSTabDestoyed:Z

.field private isPrintInProgress:Z

.field private isfromExternal:Z

.field private mCtx:Landroid/content/Context;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field private mCurrentTabId:I

.field public mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

.field private mPrevTabId:I

.field private mPreviousMode:I

.field mProgressHandler:Landroid/os/Handler;

.field mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field public mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field private mSwitchingToReader:Z

.field public mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

.field private mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

.field private sConfigChangedStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewRenderView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPreviousMode:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isfromExternal:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    new-instance v0, Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-direct {v0}, Lorg/samsung/content/sbrowser/SynchronizeObj;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPrevTabId:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->sConfigChangedStatus:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isPrintInProgress:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSwitchingToReader:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->initializePlaceHolderEnableState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Lorg/chromium/content/browser/ContentViewRenderView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->loadFullScreenBitmapForID(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->scaleImageIfRequired(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    return p1
.end method

.method private initializePlaceHolderEnableState(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "placeholder_enabled"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "placeholder_enabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->setIsPlaceHolderEnabled(Z)V

    return-void
.end method

.method private loadFullScreenBitmapForID(I)Landroid/graphics/Bitmap;
    .locals 17

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    instance-of v14, v14, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v7

    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

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

    invoke-direct {v10, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

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

    invoke-direct {v9, v10, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v14}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v14

    invoke-virtual {v14}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_1
    :try_start_0
    sget-boolean v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_BITMAP_COMPRESSION_ENABLED:Z

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiWindowScreenWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiWindowScreenHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiwindowToolBarHeight()I

    move-result v15

    sub-int v6, v14, v15

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getScreenOrientation()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ge v6, v14, :cond_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v12, 0x0

    :cond_2
    :goto_1
    move-object v14, v1

    goto :goto_0

    :cond_3
    move-object v1, v12

    goto :goto_1

    :cond_4
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_5

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    move-object v1, v12

    goto :goto_1

    :cond_6
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/TabData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabData;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabData;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/TabData;->getBitmap()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    const/4 v8, 0x0

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/16 v14, 0xc

    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private recaptureSoftBitmap()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->createPlaceHolderSoftBitmapListener()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v4

    if-nez v4, :cond_2

    if-le v0, v1, :cond_1

    sub-int v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->ReCaptureSoftBitmap(IZ)V

    :cond_0
    return-void

    :cond_1
    sub-int v4, v1, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0

    :cond_2
    sub-int v4, v0, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0
.end method

.method private scaleImageIfRequired(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiWindowScreenWidth()I

    move-result v9

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, v9, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiWindowScreenHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiwindowToolBarHeight()I

    move-result v2

    sub-int v8, v0, v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v8, v0, :cond_0

    int-to-float v0, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bitmapRefreshed(Landroid/graphics/Bitmap;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getBitmapFromCompositor()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    instance-of v2, v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isSwitchingToReader()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TAG"

    const-string v3, "Reader Mode : Reading Bitmap from Software Path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->recaptureSoftBitmap()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->storeBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->clearBitmapCache()V

    goto :goto_0
.end method

.method public configHasChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getIsBackFromTabManager()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPlaceHolderSoftBitmapListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$2;-><init>(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPlaceHolderSoftBitmapListener:Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setPlaceHolderSoftBitmapListener(Lorg/samsung/content/sbrowser/SbrContentViewCore$PlaceHolderSoftBitmapListener;)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowMode()I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_internet"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getMultiWindowScreenHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getMultiWindowScreenWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getMultiwindowToolBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getPrintProgressState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isPrintInProgress:Z

    return v0
.end method

.method public getScreenOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getWindowMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPreviousMode:I

    return v0
.end method

.method public getmPrevTabId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPrevTabId:I

    return v0
.end method

.method public isIsfromExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isfromExternal:Z

    return v0
.end method

.method public isSwitchingToReader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSwitchingToReader:Z

    return v0
.end method

.method public placeholderAboutToHide()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getPrintProgressState()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mProgressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mProgressHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mProgressHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    goto :goto_1
.end method

.method public placeholderAboutToShow()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v1, "APPLOGS:PlaceHolder Controller placeholderAboutToShow called ============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    goto :goto_0
.end method

.method public placeholderHidden()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v1, v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getTabBar()Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->isTabSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "TAB_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v2, "Broadcast sent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsBackFromTabManager(Z)V

    :cond_1
    return-void
.end method

.method public placeholderShown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setConfigChangedStatus(Z)V

    return-void
.end method

.method public refreshBitMap(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$1;-><init>(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    return-void
.end method

.method public setCurrentTabId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTabId:I

    return-void
.end method

.method public setIsfromExternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isfromExternal:Z

    return-void
.end method

.method public setPlaceholderViewAreaState(I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsBackKeyWhitePlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v1, "APPLOGS: BYPASSING THE STATE SETTING FOR WHITE (most possibly from onControllerChanged) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v1, "APPLOGS: BYPASSING THE STATE SETTING FOR FULL BITMAP (most possibly from onControllerChanged) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPrintProgressState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isPrintInProgress:Z

    return-void
.end method

.method public setProgressForPlaceHolder(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController$ProgressHandler;-><init>(Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mProgressHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mProgressHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setSwitchingToReader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSwitchingToReader:Z

    return-void
.end method

.method public setWindowMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPreviousMode:I

    return-void
.end method

.method public shouldRefreshBitmap()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public shouldTranslatePlaceHolderView()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getPlaceholderView()Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getPlaceholderView()Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->checkUtilityConditionsForHideUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/UI;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getMultiwindowToolBarHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    const-string v2, "APPLOGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPLOGS: setting topAMrgin for PlaceHolderView to :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getPlaceholderView()Lorg/samsung/content/sbrowser/SbrPlaceHolderView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public showPlaceHolderFromTab()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v1, "APPLOGS: place holder showPlaceHolderFromTab"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS : showPlaceHolderFromTab invoked  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->showPlaceHolder()V

    return-void
.end method

.method public showPlaceHolderFromTab(I)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS: place holder showPlaceHolderFromTab FOR ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPlaceholderViewAreaState(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLOGS : showPlaceHolderFromTab invoked  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->refreshBitMap(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "RaviReddy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RaviReddy : Dowait is invoked  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mSyncObj:Lorg/samsung/content/sbrowser/SynchronizeObj;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SynchronizeObj;->doWait()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->showPlaceHolder()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->getCurrentWindowMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setWindowMode(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    instance-of v3, v3, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v4, "APPLOGS: surfaceDestroyed for Reader"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v3

    if-ne v3, v9, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->captureAndStorePlaceHolder()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isfromExternal:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->showPlaceHolder()V

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isfromExternal:Z

    :cond_2
    return-void

    :cond_3
    sget-object v3, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v4, "APPLOGS: surfaceDestroyed for MainActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getIsBackFromTabManager()Z

    move-result v1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getFlagCloseThisPageOnly()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v4, "don\'t capture and store PlaceHolder when flagCloseThisPageOnly is true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->setFlagCloseThisPageOnly(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    iput v8, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPrevTabId:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getVisibility()I

    move-result v3

    if-ne v3, v9, :cond_7

    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isfromExternal:Z

    if-nez v3, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setSwitchingToReader(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPrevTabId:I

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->captureAndStorePlaceHolder()V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setSwitchingToReader(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setPlaceholderViewAreaState(I)V

    iput v8, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mPrevTabId:I

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->show()V

    goto/16 :goto_1
.end method

.method public updatePlaceHolderBitmap(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPlaceholderViewAreaState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->refreshBitMap(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->setPlaceholderViewAreaState(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->show()V

    goto :goto_0
.end method

.method public updateProgress(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getBackKeyPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->isJSTabDestoyed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->LOGTAG:Ljava/lang/String;

    const-string v1, "APPLOGS: resetting isJSTabDestoyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;->mTargetView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setLoadProgressForplaceHolder(I)V

    :cond_0
    return-void
.end method
