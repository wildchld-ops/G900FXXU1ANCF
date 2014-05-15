.class public Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
.super Landroid/app/Application;
.source "SBrowserMobileApplication.java"


# static fields
.field private static final CHROME_MANDATORY_PAKS:[Ljava/lang/String; = null

.field private static final NATIVE_LIBARY:Ljava/lang/String; = "sbrowser"

.field private static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "sbrowser"

.field private static final TAG:Ljava/lang/String;

.field private static resultFrameRate:I

.field private static sIsSmoothAnimationEnabled:Z


# instance fields
.field private mBrowserSetting:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

.field private mClientID:Ljava/lang/String;

.field private mContentViewListAdapterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActiveSBrowserMainActivityContextIdString:Ljava/lang/String;

.field private mImeAdapterObserver:Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

.field private mIsReadLaterActivtyRunning:Z

.field private mLoginUserName:Ljava/lang/String;

.field private mPauseCounterForWebkitTimers:I

.field private mSbrPasswordManagerUtility:Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

.field private mTabDragAndDropData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

.field private mUniqueID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const-class v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chrome.pak"

    aput-object v2, v0, v1

    const-string v1, "en-US.pak"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "chrome_100_percent.pak"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "resources.pak"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "scb_content_resources.pak"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->CHROME_MANDATORY_PAKS:[Ljava/lang/String;

    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->resultFrameRate:I

    sput-boolean v3, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->sIsSmoothAnimationEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mCurrentActiveSBrowserMainActivityContextIdString:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mPauseCounterForWebkitTimers:I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mImeAdapterObserver:Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mSbrPasswordManagerUtility:Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mClientID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mUniqueID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mBrowserSetting:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mIsReadLaterActivtyRunning:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mTabDragAndDropData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getFrameRate()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->resultFrameRate:I

    return v0
.end method

.method public static getSmoothAnimationEnable()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->sIsSmoothAnimationEnabled:Z

    return v0
.end method

.method public static setFrameRateValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->resultFrameRate:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->resultFrameRate:I

    goto :goto_0

    :cond_2
    const-string v0, "200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->resultFrameRate:I

    goto :goto_0

    :cond_3
    const-string v0, "300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    sput v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->resultFrameRate:I

    goto :goto_0
.end method

.method public static setSmoothAnimationEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->sIsSmoothAnimationEnabled:Z

    return-void
.end method


# virtual methods
.method public clearContentViewListAdapterHashMap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public createContentViewListAdapterHashMapIfNull()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public createSbrPasswordManagerUtility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mSbrPasswordManagerUtility:Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    if-nez v0, :cond_0

    new-instance v0, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    invoke-direct {v0, p0}, Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mSbrPasswordManagerUtility:Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    :cond_0
    return-void
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mClientID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method public getContentViewListAdapterHashMapKeysetIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentActiveSBrowserMainActivityContextIdString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mCurrentActiveSBrowserMainActivityContextIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalIncognitoTabCounter()I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterHashMapKeysetIterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getGlobalTabCounter()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterHashMapKeysetIterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mImeAdapterObserver:Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    return-object v0
.end method

.method public getLoginDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mLoginUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mTabDragAndDropData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mTabDragAndDropData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPauseCounterForWebkitTimers()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mPauseCounterForWebkitTimers:I

    return v0
.end method

.method public getSbrPasswordManagerInstance()Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mSbrPasswordManagerUtility:Lorg/samsung/chrome/browser/SbrPasswordManagerUtility;

    return-object v0
.end method

.method public getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mBrowserSetting:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mBrowserSetting:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mBrowserSetting:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-object v0
.end method

.method public getTotalCountOfContentViewListAdapters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mUniqueID:Ljava/lang/String;

    return-object v0
.end method

.method public isContentViewListAdpaterKeyValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterHashMapKeysetIterator()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v4, "MWidget"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public isReadLaterActivityRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mIsReadLaterActivtyRunning:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->CHROME_MANDATORY_PAKS:[Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/content/browser/ResourceExtractor;->setMandatoryPaksToExtract([Ljava/lang/String;)V

    const-string v0, "sbrowser"

    invoke-static {v0}, Lorg/chromium/content/app/LibraryLoader;->setLibraryToLoad(Ljava/lang/String;)V

    const-string v0, "sbrowser"

    invoke-static {v0}, Lorg/chromium/base/PathUtils;->setPrivateDataDirectorySuffix(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mImeAdapterObserver:Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    return-void
.end method

.method public removeContentViewListAdapterHashMapByContextID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setContentViewListAdapterHashMapByContextID(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mContentViewListAdapterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCurrentActiveSBrowserMainActivityContextIdString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mCurrentActiveSBrowserMainActivityContextIdString:Ljava/lang/String;

    return-void
.end method

.method public setDeviceClientID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mClientID:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mUniqueID:Ljava/lang/String;

    return-void
.end method

.method public setLoginDetails(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mLoginUserName:Ljava/lang/String;

    return-void
.end method

.method public setMultiInstanceTabDragAndDropData(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mTabDragAndDropData:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    return-void
.end method

.method public setPauseCounterForWebkitTimers(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mPauseCounterForWebkitTimers:I

    return-void
.end method

.method public setReadLaterActivityRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->mIsReadLaterActivtyRunning:Z

    return-void
.end method
