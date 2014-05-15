.class public Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;
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
    name = "StorageInfo"
.end annotation


# instance fields
.field private mHost:Ljava/lang/String;

.field private mSize:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoClearedCallback;)V
    .locals 2

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mHost:Ljava/lang/String;

    iget v1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mType:I

    #calls: Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->nativeClearStorageData(Ljava/lang/String;ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->access$300(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mSize:J

    return-wide v0
.end method

.method public setInfo(Ljava/lang/String;IJ)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "StorageInfo"
    .end annotation

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mHost:Ljava/lang/String;

    iput p2, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mType:I

    iput-wide p3, p0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->mSize:J

    return-void
.end method
