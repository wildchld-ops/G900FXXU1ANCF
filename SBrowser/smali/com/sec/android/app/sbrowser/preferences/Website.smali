.class public Lcom/sec/android/app/sbrowser/preferences/Website;
.super Ljava/lang/Object;
.source "Website.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/preferences/Website$StoredDataClearedCallback;
    }
.end annotation


# instance fields
.field private mAddress:Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

.field private mGeolocationInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

.field private mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

.field private mPopupExceptionInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

.field private mStorageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageInfoCallbacksLeft:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mAddress:Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllStoredData(Lcom/sec/android/app/sbrowser/preferences/Website$StoredDataClearedCallback;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfoCallbacksLeft:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfoCallbacksLeft:I

    if-lez v2, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/preferences/Website$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/preferences/Website$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/Website;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;

    invoke-virtual {v2, v1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->clear(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoClearedCallback;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/preferences/Website$StoredDataClearedCallback;->onStoredDataCleared()V

    return-void
.end method

.method public compareByAddressTo(Lcom/sec/android/app/sbrowser/preferences/Website;)I
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mAddress:Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/preferences/Website;->mAddress:Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->compareTo(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)I

    move-result v0

    goto :goto_0
.end method

.method public getLocalStorageInfo()Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    return-object v0
.end method

.method public getStorageInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalUsage()J
    .locals 9

    const-wide/16 v0, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    invoke-virtual {v7}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;->getSize()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    add-long v0, v7, v2

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;

    invoke-virtual {v7}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->getSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public isGeolocationAccessAllowed()Ljava/lang/Boolean;
    .locals 3

    const-string v1, "Website"

    const-string v2, "isGeolocationAccessAllowed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mGeolocationInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mGeolocationInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getAllowed()Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupExceptionAllowed()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mPopupExceptionInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mPopupExceptionInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    invoke-virtual {v1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->getAllowed()Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGeolocationInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;)V
    .locals 4

    const-string v2, "Website"

    const-string v3, "setGeolocationInfo"

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mGeolocationInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    invoke-virtual {p1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGeolocationInfoAllowed(Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "Website"

    const-string v1, "setGeolocationInfoAllowed"

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mGeolocationInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mGeolocationInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->setAllowed(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setLocalStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mLocalStorageInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    return-void
.end method

.method public setPopupExceptionInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mPopupExceptionInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    return-void
.end method

.method public setPopupExceptionInfoAllowed(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mPopupExceptionInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/Website;->mPopupExceptionInfo:Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    invoke-virtual {v0, p1}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->setAllowed(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
