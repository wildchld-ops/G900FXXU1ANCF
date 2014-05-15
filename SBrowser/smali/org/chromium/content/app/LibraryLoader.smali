.class public Lorg/chromium/content/app/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"

.field private static sInitialized:Z

.field private static sLoaded:Z

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lorg/chromium/content/app/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/LibraryLoader;->$assertionsDisabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/app/LibraryLoader;->sLock:Ljava/lang/Object;

    sput-boolean v1, Lorg/chromium/content/app/LibraryLoader;->sLoaded:Z

    sput-boolean v1, Lorg/chromium/content/app/LibraryLoader;->sInitialized:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsReady()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/app/LibraryLoader;->sInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ensureInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/content/common/ProcessInitException;
        }
    .end annotation

    sget-object v1, Lorg/chromium/content/app/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lorg/chromium/content/app/LibraryLoader;->sInitialized:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/app/LibraryLoader;->loadAlreadyLocked()V

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/app/LibraryLoader;->initializeAlreadyLocked([Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static initialize([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/content/common/ProcessInitException;
        }
    .end annotation

    sget-object v1, Lorg/chromium/content/app/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/chromium/content/app/LibraryLoader;->initializeAlreadyLocked([Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initializeAlreadyLocked([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/content/common/ProcessInitException;
        }
    .end annotation

    sget-boolean v1, Lorg/chromium/content/app/LibraryLoader;->sInitialized:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/app/LibraryLoader;->nativeLibraryLoaded([Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "LibraryLoader"

    const-string v2, "error calling nativeLibraryLoaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/chromium/content/common/ProcessInitException;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/ProcessInitException;-><init>(I)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lorg/chromium/content/app/LibraryLoader;->sInitialized:Z

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->enableNativeProxy()V

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->setEnabledToMatchNative()V

    goto :goto_0
.end method

.method private static loadAlreadyLocked()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/content/common/ProcessInitException;
        }
    .end annotation

    :try_start_0
    sget-boolean v6, Lorg/chromium/content/app/LibraryLoader;->sLoaded:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lorg/chromium/content/app/LibraryLoader;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lorg/chromium/content/app/LibraryLoader;->sInitialized:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v6, Lorg/chromium/content/common/ProcessInitException;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v1}, Lorg/chromium/content/common/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v6

    :cond_0
    :try_start_1
    sget-object v0, Lorg/chromium/content/app/NativeLibraries;->libraries:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    const-string v6, "LibraryLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v6, "LibraryLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsReadingListFaceDetectionEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v2, "dmcMVFD_IR"

    const-string v6, "LibraryLoader"

    const-string v7, "loading: dmcMVFD_IR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "dmcMVFD_IR"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v6, "LibraryLoader"

    const-string v7, "loaded: dmcMVFD_IR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :try_start_3
    sput-boolean v6, Lorg/chromium/content/app/LibraryLoader;->sLoaded:Z

    :cond_3
    return-void

    :catch_1
    move-exception v1

    const-string v6, "LibraryLoader"

    const-string v7, "face detection library is missing."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static loadNow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/content/common/ProcessInitException;
        }
    .end annotation

    sget-object v1, Lorg/chromium/content/app/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/chromium/content/app/LibraryLoader;->loadAlreadyLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native nativeLibraryLoaded([Ljava/lang/String;)I
.end method

.method public static setLibraryToLoad(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
