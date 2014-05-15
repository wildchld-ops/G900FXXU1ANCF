.class Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$2;
.super Ljava/lang/Object;
.source "SearchEngineModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/search_engines/TemplateUrlService$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->setBingSearchEngineToNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTemplateUrlServiceLoaded()V
    .locals 2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->getInstance()Lorg/samsung/chrome/browser/SbrChromeNativePreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel$2;->this$0:Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->engineMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;->access$000(Lcom/sec/android/app/sbrowser/searchengine/model/SearchEngineModel;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrChromeNativePreferences;->setSearchEngineEx(Ljava/util/HashMap;)V

    return-void
.end method
