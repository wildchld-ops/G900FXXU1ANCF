.class public Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;
.super Ljava/lang/Object;
.source "SearchEngineModel.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModel;


# static fields
.field private static CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String; = null

.field private static FAV_ICON_PREF_NAME:Ljava/lang/String; = null

.field private static final SEARCH_ENGINE_ENCODING:Ljava/lang/String; = "SearchEngineEncoding"

.field private static final SEARCH_ENGINE_FAVICONURL:Ljava/lang/String; = "SearchEngineFaviconUrl"

.field private static final SEARCH_ENGINE_INSTANTURL:Ljava/lang/String; = "SearchEngineInstantUrl"

.field private static final SEARCH_ENGINE_KEYWORD:Ljava/lang/String; = "searchEngineKeyword"

.field private static final SEARCH_ENGINE_NAME:Ljava/lang/String; = "SearchEngineName"

.field private static final SEARCH_ENGINE_SEARCHURL:Ljava/lang/String; = "SearchEngineSearchUrl"

.field private static final SEARCH_ENGINE_SUGGESTURL:Ljava/lang/String; = "SearchEngineSuggestUrl"

.field private static final TAG:Ljava/lang/String; = "SearchEngineModel"

.field private static mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

.field private static mPrefCurrentSearchEngine:Landroid/content/SharedPreferences;


# instance fields
.field private defualtSearchEngine:Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

.field private engineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private favIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mListAvailableEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefFavicon:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "current_search_engine_name"

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String;

    const-string v0, "Search_engine_favicon_preference"

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->FAV_ICON_PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private createEngineHashMap(Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "SearchEngineName"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "searchEngineKeyword"

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "SearchEngineSearchUrl"

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "SearchEngineSuggestUrl"

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "SearchEngineInstantUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "SearchEngineFaviconUrl"

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    const-string v1, "SearchEngineEncoding"

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getIndexByName(Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    return-object v0
.end method

.method public static getInstance(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;-><init>(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mInstance:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    return-object v0
.end method

.method private loadFavIconPref()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefFavicon:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    return-void
.end method

.method private saveSelectedPreference(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefCurrentSearchEngine:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSelectedPreferenceFromReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefCurrentSearchEngine:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefCurrentSearchEngine:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setBingSearchEngineToNative()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->createEngineHashMap(Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->saveSelectedPreference(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$2;-><init>(Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;)V

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->load()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngineEx(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method private storeFavIconPreference()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefFavicon:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateToolbarFavIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public checkIconIfAvaiable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIfAllFavIconUpdated()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public clearAll()V
    .locals 0

    return-void
.end method

.method public findEngineContainsName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findEngineFromName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getListForAdapter()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    new-instance v3, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getFavIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->keyword()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SEInfoHolder;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getListForAdapter()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getfavIconByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->findEngineFromName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getFavIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public populate()V
    .locals 10

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->loadFavIconPref()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Web_SetSearchEngineAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v7, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07008f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_4

    aget-object v5, v6, v2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Web_DisableAllSearchEngineExceptGoogle"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "google"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->checkIconIfAvaiable(Ljava/lang/String;)Z

    move-result v4

    new-instance v3, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v8, v5, v4}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->checkIconIfAvaiable(Ljava/lang/String;)Z

    move-result v4

    :try_start_0
    new-instance v3, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v8, v5, v4}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v8, "SearchEngineModel"

    const-string v9, "Illegal Argument Exception"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    return-void
.end method

.method public removeProertyChangeListner()V
    .locals 0

    return-void
.end method

.method public save()V
    .locals 0

    return-void
.end method

.method public saveFavIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->findEngineFromName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->favIconMap:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->UpdateFavIcon()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->storeFavIconPreference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v6, "SearchEngineModel"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "SearchEngineModel"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-static {v6, v7}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v6, "SearchEngineModel"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_2
    throw v6

    :catch_4
    move-exception v1

    const-string v7, "SearchEngineModel"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    move-exception v1

    const-string v6, "SearchEngineModel"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public setDefaultSearchEngineToNative()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v5, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefCurrentSearchEngine:Landroid/content/SharedPreferences;

    sget-object v6, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->CURRENT_SEARCH_ENGINE_NAME:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->getIndexByName(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->defualtSearchEngine:Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->defualtSearchEngine:Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->createEngineHashMap(Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;)V

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$1;-><init>(Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;)V

    invoke-virtual {v3, v4}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->load()V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->defualtSearchEngine:Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;->getFavIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->updateToolbarFavIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->defualtSearchEngine:Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngineEx(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method public setPropertyChangeListner(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V
    .locals 0

    return-void
.end method

.method public setResources(Landroid/app/Activity;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefCurrentSearchEngine:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->FAV_ICON_PREF_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mPrefFavicon:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setSearchEngineToNative(Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const-string v3, "bing"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->findEngineContainsName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->createEngineHashMap(Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->saveSelectedPreference(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$3;-><init>(Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;)V

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->load()V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.sbrowser"

    const-string v5, "0003"

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/applogging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->findEngineFromName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/utilities/SearchEngineInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngineEx(Ljava/util/HashMap;)V

    goto :goto_1
.end method
