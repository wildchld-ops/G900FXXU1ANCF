.class Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsPreferencesController.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfoReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageInfoReady(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #calls: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->findOrCreateSitesByHost(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;
    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$500(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/preferences/Website;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/Website;->addStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$StorageInfo;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$WebStorageInfoFetcher;->next()V

    return-void
.end method
