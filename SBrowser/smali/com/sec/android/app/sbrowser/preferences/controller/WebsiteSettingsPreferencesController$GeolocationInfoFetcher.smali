.class Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;
.super Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;
.source "WebsiteSettingsPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeolocationInfoFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 4

    invoke-static {}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->getGeolocationInfo()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->getGeolocationInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;

    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    #calls: Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->createSiteByOrigin(Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Lcom/sec/android/app/sbrowser/preferences/Website;
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;->access$700(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;)Lcom/sec/android/app/sbrowser/preferences/Website;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/preferences/Website;->setGeolocationInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$GeolocationInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$GeolocationInfoFetcher;->next()V

    :cond_2
    return-void
.end method
