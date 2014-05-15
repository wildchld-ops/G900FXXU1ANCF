.class public Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;
.super Ljava/lang/Object;
.source "SbrWebsiteSettingsUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeolocationInfo"
.end annotation


# instance fields
.field private mEmbedder:Ljava/lang/String;

.field private mOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmbedderSafe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mEmbedder:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mEmbedder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mOrigin:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAllowed()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mOrigin:Ljava/lang/String;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v1

    #calls: Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeGetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getEmbedder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mEmbedder:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowed(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mOrigin:Ljava/lang/String;

    invoke-direct {p0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getEmbedderSafe()Ljava/lang/String;

    move-result-object v1

    #calls: Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeSetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, p1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "GeolocationInfo"
    .end annotation

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mOrigin:Ljava/lang/String;

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->mEmbedder:Ljava/lang/String;

    return-void
.end method
