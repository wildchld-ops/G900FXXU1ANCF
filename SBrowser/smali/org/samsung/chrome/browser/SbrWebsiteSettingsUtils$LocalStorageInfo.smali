.class public Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;
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
    name = "LocalStorageInfo"
.end annotation


# static fields
.field private static final HTTPS_SCHEME_SUFFIX:Ljava/lang/String; = "https://"

.field private static final HTTP_SCHEME_SUFFIX:Ljava/lang/String; = "http://"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mFilePath:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mFilePath:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mFilePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mFilePath:Ljava/lang/String;

    #calls: Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeClearLocalStorageData(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->access$200(Ljava/lang/String;)V

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mSize:J

    return-wide v0
.end method

.method public setInfo(Ljava/lang/String;J)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "LocalStorageInfo"
    .end annotation

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mFilePath:Ljava/lang/String;

    iput-wide p2, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->mSize:J

    return-void
.end method
