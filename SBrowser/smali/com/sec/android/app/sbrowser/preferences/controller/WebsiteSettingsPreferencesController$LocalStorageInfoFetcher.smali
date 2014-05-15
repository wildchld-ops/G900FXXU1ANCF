.class Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;
.super Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;
.source "WebsiteSettingsPreferencesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalStorageInfoFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$CallChain;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController;)V

    return-void
.end method


# virtual methods
.method run()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/WebsiteSettingsPreferencesController$LocalStorageInfoFetcher;)V

    invoke-static {v0}, Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils;->fetchLocalStorageInfo(Lorg/samsung/chrome/browser/SbrWebsiteSettingsUtils$LocalStorageInfoReadyCallback;)V

    return-void
.end method
