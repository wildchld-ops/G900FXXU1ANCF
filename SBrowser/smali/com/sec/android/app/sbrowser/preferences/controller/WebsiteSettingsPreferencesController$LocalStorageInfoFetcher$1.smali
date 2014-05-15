.class Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsPreferencesController.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfoReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalStorageInfoReady(Ljava/util/HashMap;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #calls: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->findOrCreateSitesByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;
    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$600(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/preferences/Website;->setLocalStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfo;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;->next()V

    return-void
.end method
