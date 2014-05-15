.class public Lorg/chromium/content/browser/ContentSettings;
.super Ljava/lang/Object;
.source "ContentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentSettings$EventHandler;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ContentSettings"


# instance fields
.field private mBuiltInZoomControls:Z

.field private final mContentSettingsLock:Ljava/lang/Object;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDisplayZoomControls:Z

.field private final mEventHandler:Lorg/chromium/content/browser/ContentSettings$EventHandler;

.field private mNativeContentSettings:I

.field private mSupportZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/ContentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentSettings;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentSettings;->mSupportZoom:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentSettings;->mBuiltInZoomControls:Z

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentSettings;->mDisplayZoomControls:Z

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/chromium/content/browser/ContentSettings;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, p2}, Lorg/chromium/content/browser/ContentSettings;->nativeInit(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    sget-boolean v0, Lorg/chromium/content/browser/ContentSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/ContentSettings$EventHandler;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentSettings$EventHandler;-><init>(Lorg/chromium/content/browser/ContentSettings;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mEventHandler:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isPersonalityView()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentSettings;->mBuiltInZoomControls:Z

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentSettings;->mDisplayZoomControls:Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentSettings;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentSettings;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentSettings;->nativeGetJavaScriptEnabled(I)Z

    move-result v0

    return v0
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeGetJavaScriptEnabled(I)Z
.end method

.method private native nativeInit(I)I
.end method

.method private onNativeContentSettingsDestroyed(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/content/browser/ContentSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    return-void
.end method


# virtual methods
.method public destroyNative()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentSettings;->mNativeContentSettings:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentSettings;->nativeDestroy(I)V

    :cond_0
    return-void
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentSettings;->mDisplayZoomControls:Z

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/ContentSettings$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentSettings$1;-><init>(Lorg/chromium/content/browser/ContentSettings;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public initFrom(Lorg/chromium/content/browser/ContentSettings;)V
    .locals 1

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentSettings;->supportZoom()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentSettings;->setSupportZoom(Z)V

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentSettings;->getBuiltInZoomControls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentSettings;->getDisplayZoomControls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentSettings;->setDisplayZoomControls(Z)V

    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentSettings;->mBuiltInZoomControls:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mEventHandler:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    #calls: Lorg/chromium/content/browser/ContentSettings$EventHandler;->sendUpdateMultiTouchMessageLocked()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings$EventHandler;->access$300(Lorg/chromium/content/browser/ContentSettings$EventHandler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentSettings;->mDisplayZoomControls:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mEventHandler:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    #calls: Lorg/chromium/content/browser/ContentSettings$EventHandler;->sendUpdateMultiTouchMessageLocked()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings$EventHandler;->access$300(Lorg/chromium/content/browser/ContentSettings$EventHandler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentSettings;->mSupportZoom:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentSettings;->mEventHandler:Lorg/chromium/content/browser/ContentSettings$EventHandler;

    #calls: Lorg/chromium/content/browser/ContentSettings$EventHandler;->sendUpdateMultiTouchMessageLocked()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentSettings$EventHandler;->access$300(Lorg/chromium/content/browser/ContentSettings$EventHandler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method shouldDisplayZoomControls()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentSettings;->supportsMultiTouchZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentSettings;->mDisplayZoomControls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportZoom()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentSettings;->mSupportZoom:Z

    return v0
.end method

.method supportsMultiTouchZoom()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentSettings;->mSupportZoom:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentSettings;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
