.class Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;
.super Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;
.source "WebsiteSettingsPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupExceptionInfoFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;

    invoke-virtual {v2}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;->create(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/WebsiteAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

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

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/preferences/Website;->setPopupExceptionInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$PopupExceptionInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$PopupExceptionInfoFetcher;->next()V

    return-void
.end method
