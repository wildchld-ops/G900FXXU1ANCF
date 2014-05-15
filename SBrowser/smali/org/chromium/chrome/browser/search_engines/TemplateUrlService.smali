.class public Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;
.super Ljava/lang/Object;
.source "TemplateUrlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;,
        Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;


# instance fields
.field private final mLoadListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeTemplateUrlServiceAndroid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeInit()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    return-void
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->sService:Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    return-object v0
.end method

.method private native nativeGetDefaultSearchProvider(I)I
.end method

.method private native nativeGetPrepopulatedTemplateUrlAt(II)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;
.end method

.method private native nativeGetTemplateUrlCount(I)I
.end method

.method private native nativeInit()I
.end method

.method private native nativeIsLoaded(I)Z
.end method

.method private native nativeLoad(I)V
.end method

.method private native nativeSetDefaultSearchProvider(II)V
.end method

.method private templateUrlServiceLoaded()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;->onTemplateUrlServiceLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLocalizedSearchEngines()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v4, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetTemplateUrlCount(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget v4, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    invoke-direct {p0, v4, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetPrepopulatedTemplateUrlAt(II)Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$TemplateUrl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getSearchEngine()I
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeGetDefaultSearchProvider(I)I

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeIsLoaded(I)Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeLoad(I)V

    return-void
.end method

.method public registerLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->hasObserver(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setSearchEngine(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->nativeSetDefaultSearchProvider(II)V

    return-void
.end method

.method public unregisterLoadListener(Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->hasObserver(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method
