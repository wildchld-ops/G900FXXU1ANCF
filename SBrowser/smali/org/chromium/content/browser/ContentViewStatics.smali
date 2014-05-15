.class public Lorg/chromium/content/browser/ContentViewStatics;
.super Ljava/lang/Object;
.source "ContentViewStatics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/net/ProxyChangeListener;->setEnabled(Z)V

    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/net/ProxyChangeListener;->setEnabled(Z)V

    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "addr is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewStatics;->nativeFindAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private static native nativeFindAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeSetWebKitSharedTimersSuspended(Z)V
.end method

.method public static setWebKitSharedTimersSuspended(Z)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewStatics;->nativeSetWebKitSharedTimersSuspended(Z)V

    return-void
.end method
