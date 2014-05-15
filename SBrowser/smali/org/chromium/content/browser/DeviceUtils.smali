.class public Lorg/chromium/content/browser/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final MINIMUM_TABLET_WIDTH_DP:I = 0x258


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lorg/chromium/content/browser/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "tablet-ui"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->appendSwitch(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/common/CommandLine;->getInstance()Lorg/chromium/content/common/CommandLine;

    move-result-object v0

    const-string v1, "use-mobile-user-agent"

    invoke-virtual {v0, v1}, Lorg/chromium/content/common/CommandLine;->appendSwitch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Lorg/chromium/content/browser/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-ge v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.hardware.type.television"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
