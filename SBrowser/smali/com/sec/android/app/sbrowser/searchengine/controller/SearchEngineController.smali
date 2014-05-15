.class public Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;
.super Ljava/lang/Object;
.source "SearchEngineController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
.implements Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;
    }
.end annotation


# static fields
.field private static final CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String; = "current_search_engine_name"

.field private static POST_SHOW_DELAY:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

.field private mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

.field private mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->POST_SHOW_DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getInstance(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    return-object v0
.end method

.method private fixDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2e

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getCurrentTabFavIcon()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrTabBridge;->getFavIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentTabURL()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lorg/samsung/chrome/browser/SbrURLUtilities;->getDomainAndRegistry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->fixDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyUpdateToolbarFavicon(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "current_search_engine_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x24

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    return-void
.end method

.method private simplifyUrlforCompare(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x7

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "http"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, p1

    goto :goto_0

    :cond_3
    const-string v2, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public checkIfAllFavIconsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->checkIfAllFavIconUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentTabFavIconUpdate()V
    .locals 8

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    invoke-virtual {v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getNameForCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->getCurrentTabURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->simplifyUrlforCompare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getFaviconURLForCurrentSearchEngine()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    const-string v6, "google"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "www"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->checkIconIfAvaiable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->getCurrentTabFavIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->getCurrentTabFavIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->saveFavIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->getAdapter()Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->notifyUpdateToolbarFavicon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissUi()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->dismissUi()V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getListOfAvailableSearchEngine()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getListOfAvailableSearchEngine()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mToolbarController:Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    return-object v0
.end method

.method public getcurrentSearchEngineFavIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getfavIconByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public initialiseController(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setResources(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$SearchEnginePopulateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public initialiseUi(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-class v2, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->setContext(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->createUi(Landroid/view/View;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-class v2, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineXLargeUI;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->isShowing()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v3, 0x7f0a022e

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->getAdapter()Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBingSearchEngineEnabledState(Z)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setSearchEngineToNative(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->notifyUpdateToolbarFavicon(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->dismissUi()V

    return-void

    :cond_1
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBingSearchEngineEnabledState(Z)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    instance-of v5, p1, Landroid/widget/ListView;

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-eq v5, v6, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_5

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_5

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->getAdapter()Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEListViewAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBingSearchEngineEnabledState(Z)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setSearchEngineToNative(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->notifyUpdateToolbarFavicon(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->dismissUi()V

    const/4 v0, 0x1

    :cond_3
    :goto_2
    move v4, v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setBingSearchEngineEnabledState(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2
.end method

.method public onOrientationChanged()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController$1;-><init>(Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->dismissUi()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v2, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->POST_SHOW_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setBingSearchEngine(Ljava/lang/String;)V
    .locals 3

    const-string v1, "bing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setSearchEngineToNative(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->findEngineContainsName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->notifyUpdateToolbarFavicon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showUi(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mModel:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getListForAdapter()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineController;->mSearchEngineUi:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;

    invoke-interface {v1, v0, p1}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEngineUI;->showUi(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
