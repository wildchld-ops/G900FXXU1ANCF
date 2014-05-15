.class public abstract Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;
.super Ljava/lang/Object;
.source "SbrWebsiteSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoClearedCallback;,
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoReadyCallback;,
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfoReadyCallback;,
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;,
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;,
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;,
        Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebsiteSettingsUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeGetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeSetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeClearLocalStorageData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeClearStorageData(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static clearAllGeolocationAccess()Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->getGeolocationInfo()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getOrigin()Ljava/lang/String;

    move-result-object v3

    #calls: Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getEmbedderSafe()Ljava/lang/String;
    invoke-static {v2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->access$400(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeSetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static fetchLocalStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfoReadyCallback;)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeFetchLocalStorageInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public static fetchStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoReadyCallback;)V
    .locals 0

    invoke-static {p0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeFetchStorageInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public static getGeolocationInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeGetGeolocationOrigins()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPopupExceptionInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v6

    invoke-virtual {v6}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getPopupExceptions()[Ljava/util/HashMap;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_0

    move-object v0, v5

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    new-instance v7, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    const-string v6, "displayPattern"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getStorageUsageLevel(J)I
    .locals 5

    long-to-float v1, p0

    const/high16 v2, 0x4980

    div-float v0, v1, v2

    float-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x40a0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private static native nativeClearLocalStorageData(Ljava/lang/String;)V
.end method

.method private static native nativeClearStorageData(Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method private static native nativeFetchLocalStorageInfo(Ljava/lang/Object;)V
.end method

.method private static native nativeFetchStorageInfo(Ljava/lang/Object;)V
.end method

.method private static native nativeGetGeolocationOrigins()Ljava/util/ArrayList;
.end method

.method private static native nativeGetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method private static native nativeSetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public static sizeValueToString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x4480

    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const v4, 0x7f0c00f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x1

    const v5, 0x7f0c00f9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const v5, 0x7f0c00fa

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const v5, 0x7f0c00fb

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const v5, 0x7f0c00fc

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    const-string v4, "WebsiteSettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sizeValueToString called with non-positive value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v1, 0x0

    long-to-float v3, p1

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    cmpg-float v4, v3, v6

    if-ltz v4, :cond_1

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    div-float/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static trimTrailingBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
