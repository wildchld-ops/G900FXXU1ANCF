.class public Lorg/samsung/content/sbrowser/SbrContentSettings;
.super Ljava/lang/Object;
.source "SbrContentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAXIMUM_FONT_SIZE:I = 0x48

.field private static final MINIMUM_FONT_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SbrContentSettings"


# instance fields
.field private final mContentSettingsLock:Ljava/lang/Object;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDefaultFontSize:I

.field private final mEventHandler:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

.field private mIsSyncMessagePending:Z

.field private mNativeSbrContentSettings:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/samsung/content/sbrowser/SbrContentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/samsung/content/sbrowser/SbrContentSettings;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mIsSyncMessagePending:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    const/16 v0, 0x10

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mDefaultFontSize:I

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->nativeInit(I)I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrContentSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;-><init>(Lorg/samsung/content/sbrowser/SbrContentSettings;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mEventHandler:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->syncFromNativeOnUiThread()V

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/SbrContentSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/samsung/content/sbrowser/SbrContentSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mIsSyncMessagePending:Z

    return v0
.end method

.method static synthetic access$102(Lorg/samsung/content/sbrowser/SbrContentSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mIsSyncMessagePending:Z

    return p1
.end method

.method static synthetic access$200(Lorg/samsung/content/sbrowser/SbrContentSettings;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    return v0
.end method

.method private clipFontSize(I)I
    .locals 2

    const/16 v1, 0x48

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeInit(I)I
.end method

.method private native nativeSyncFromNative(I)V
.end method

.method private native nativeSyncToNative(I)V
.end method

.method private onNativeContentSettingsDestroyed(I)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/samsung/content/sbrowser/SbrContentSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    return-void
.end method

.method private final syncFromNativeOnUiThread()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->nativeSyncFromNative(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyNative()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->nativeDestroy(I)V

    :cond_0
    return-void
.end method

.method public getDefaultFontSize()I
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mDefaultFontSize:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initFrom(Lorg/samsung/content/sbrowser/SbrContentSettings;)V
    .locals 1

    invoke-virtual {p1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->getDefaultFontSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method sendSyncMessage()V
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mEventHandler:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    #calls: Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->syncSettingsLocked()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->access$300(Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 2

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mContentSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/SbrContentSettings;->clipFontSize(I)I

    move-result p1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mDefaultFontSize:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mEventHandler:Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;

    #calls: Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->syncSettingsLocked()V
    invoke-static {v0}, Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;->access$300(Lorg/samsung/content/sbrowser/SbrContentSettings$EventHandler;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method syncToNativeOnUiThread()V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrContentSettings;->mNativeSbrContentSettings:I

    invoke-direct {p0, v0}, Lorg/samsung/content/sbrowser/SbrContentSettings;->nativeSyncToNative(I)V

    :cond_0
    return-void
.end method
