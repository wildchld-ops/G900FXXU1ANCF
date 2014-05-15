.class Lorg/chromium/content/browser/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "LocationProvider"


# instance fields
.field private mImpl:Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/LocationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/LocationProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/LocationProvider;->mImpl:Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/LocationProvider;)Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider;->mImpl:Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;

    return-object v0
.end method

.method static create(Landroid/content/Context;)Lorg/chromium/content/browser/LocationProvider;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/LocationProvider;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/LocationProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static native nativeNewErrorAvailable(Ljava/lang/String;)V
.end method

.method public static native nativeNewLocationAvailable(DDDZDZDZDZD)V
.end method


# virtual methods
.method public isRunning()Z
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/LocationProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/LocationProvider;->mImpl:Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;

    #calls: Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->isRunning()Z
    invoke-static {v0}, Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;->access$300(Lorg/chromium/content/browser/LocationProvider$LocationProviderImpl;)Z

    move-result v0

    return v0
.end method

.method public start(Z)Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lorg/chromium/content/browser/LocationProvider$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/LocationProvider$1;-><init>(Lorg/chromium/content/browser/LocationProvider;Z)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    return v1
.end method

.method public stop()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lorg/chromium/content/browser/LocationProvider$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/LocationProvider$2;-><init>(Lorg/chromium/content/browser/LocationProvider;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    return-void
.end method
