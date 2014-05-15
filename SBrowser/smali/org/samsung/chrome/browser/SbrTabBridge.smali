.class public Lorg/samsung/chrome/browser/SbrTabBridge;
.super Lorg/chromium/chrome/browser/TabBase;
.source "SbrTabBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrTabBridge$DestroyRunnable;,
        Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;
    }
.end annotation


# instance fields
.field private mIsLoading:Z

.field private mNativeSbrTabBridge:I

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/samsung/chrome/browser/SbrTabBridgeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

.field private mValidWebcontent:Z


# direct methods
.method public constructor <init>(Lorg/chromium/ui/WindowAndroid;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/TabBase;-><init>(Lorg/chromium/ui/WindowAndroid;)V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mObservers:Lorg/chromium/base/ObserverList;

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mIsLoading:Z

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    iput-boolean v1, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mValidWebcontent:Z

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeDestroy(I)V

    return-void
.end method

.method public static createSbrHistoricalTabFromState([B)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeCreateHistoricalTabFromState([BI)V

    return-void
.end method

.method private destroy()V
    .locals 3

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/samsung/chrome/browser/SbrTabBridgeObserver;

    invoke-interface {v1, p0}, Lorg/samsung/chrome/browser/SbrTabBridgeObserver;->onCloseTab(Lorg/samsung/chrome/browser/SbrTabBridge;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-static {v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeDestroy(I)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    :cond_1
    return-void
.end method

.method private native nativeCreateHistoricalTab(II)V
.end method

.method private static native nativeCreateHistoricalTabFromState([BI)V
.end method

.method private static native nativeDestroy(I)V
.end method

.method private native nativeDestroyWebContents(IZ)V
.end method

.method private native nativeFixupUrl(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeFlushPendingMessages(I)V
.end method

.method private native nativeGetFaviconBitmap(I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetPopupBlockedCount(I)I
.end method

.method private native nativeGetRenderProcessPid(I)I
.end method

.method private native nativeGetRenderProcessPrivateSizeKBytes(I)I
.end method

.method private native nativeGetStateAsByteArray(I)[B
.end method

.method private native nativeGetWebContentDisplayHost(I)Ljava/lang/String;
.end method

.method private native nativeGetWebContents(I)I
.end method

.method private native nativeInit()I
.end method

.method private native nativeInitWebContents(ILorg/chromium/content/browser/ContentViewCore;Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;I)V
.end method

.method private native nativeIsInitialNavigation(I)Z
.end method

.method private native nativeLaunchBlockedPopups(I)V
.end method

.method private native nativeLoadUrl(ILjava/lang/String;II)V
.end method

.method private native nativePurgeRenderProcessNativeMemory(I)V
.end method

.method private native nativeReleaseWebContents(I)I
.end method

.method private static native nativeRestoreStateFromByteArray([B)I
.end method

.method private native nativeSaveTabIdForSessionSync(I)V
.end method

.method private native nativeSetInterceptNavigationDelegate(ILorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeSetWindowId(II)V
.end method

.method private native nativeTabSetWindowId(II)V
.end method

.method private native nativeUpdateThumbnail(ILandroid/graphics/Bitmap;)V
.end method

.method public static sbrRestoreStateFromByteArray([B)I
    .locals 1

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeRestoreStateFromByteArray([B)I

    move-result v0

    return v0
.end method

.method private swapWebContents(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    invoke-interface {v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;->swapWebContents(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/samsung/chrome/browser/SbrTabBridgeObserver;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public createSbrHistoricalTab()V
    .locals 2

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeCreateHistoricalTab(II)V

    return-void
.end method

.method public flushPendingMessages()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeFlushPendingMessages(I)V

    :cond_0
    return-void
.end method

.method public getFavIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mValidWebcontent:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetFaviconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeTab()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mIsLoading:Z

    return v0
.end method

.method public onDidFlushPendingMessages()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    invoke-interface {v0}, Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;->onDidFlushPendingMessages()V

    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;->receivedHttpAuthRequest(Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reSetSbrTabBridgeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    return-void
.end method

.method public removeObserver(Lorg/samsung/chrome/browser/SbrTabBridgeObserver;)V
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public sbrDestroyWebContents(Z)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeDestroyWebContents(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mValidWebcontent:Z

    return-void
.end method

.method public sbrFixupUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeFixupUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sbrGetPopupBlockedCount()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetPopupBlockedCount(I)I

    move-result v0

    return v0
.end method

.method public sbrGetReleasedWebContents()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeReleaseWebContents(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sbrGetRenderProcessPid()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetRenderProcessPid(I)I

    move-result v0

    return v0
.end method

.method public sbrGetRenderProcessPrivateSizeKBytes()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetRenderProcessPrivateSizeKBytes(I)I

    move-result v0

    return v0
.end method

.method public sbrGetStateAsByteArray()[B
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetStateAsByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public sbrGetWebContentDisplayHost()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetWebContentDisplayHost(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sbrGetWebContents()I
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeGetWebContents(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sbrInitWebContents(Lorg/chromium/content/browser/ContentViewCore;Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;I)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeInitWebContents(ILorg/chromium/content/browser/ContentViewCore;Lorg/samsung/chrome/browser/SbrWebContentsDelegateAndroid;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mValidWebcontent:Z

    return-void
.end method

.method public sbrIsInitialNavigation()Z
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeIsInitialNavigation(I)Z

    move-result v0

    return v0
.end method

.method public sbrLaunchBlockedPopups()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeLaunchBlockedPopups(I)V

    return-void
.end method

.method public sbrLoadUrl(Ljava/lang/String;II)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeLoadUrl(ILjava/lang/String;II)V

    return-void
.end method

.method public sbrPurgeRenderProcessNativeMemory()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativePurgeRenderProcessNativeMemory(I)V

    return-void
.end method

.method public sbrSaveTabIdForSessionSync()V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeSaveTabIdForSessionSync(I)V

    return-void
.end method

.method public sbrSetInterceptNavigationDelegate(Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeSetInterceptNavigationDelegate(ILorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    return-void
.end method

.method public sbrSetWindowId(I)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeSetWindowId(II)V

    return-void
.end method

.method public sbrTabBridgeDestroy()V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrTabBridge;->destroy()V

    return-void
.end method

.method public sbrTabSetWindowId()V
    .locals 2

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-virtual {p0}, Lorg/samsung/chrome/browser/SbrTabBridge;->getWindowAndroid()Lorg/chromium/ui/WindowAndroid;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/WindowAndroid;->getNativePointer()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeTabSetWindowId(II)V

    return-void
.end method

.method public sbrUpdateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mValidWebcontent:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mNativeSbrTabBridge:I

    invoke-direct {p0, v0, p1}, Lorg/samsung/chrome/browser/SbrTabBridge;->nativeUpdateThumbnail(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setSbrTabBridgeListener(Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrTabBridge;->mSbrTabBridgeListener:Lorg/samsung/chrome/browser/SbrTabBridge$SbrTabBridgeListener;

    return-void
.end method
