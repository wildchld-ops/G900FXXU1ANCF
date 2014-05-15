.class public Lorg/chromium/sync/signin/ChromeSigninController;
.super Ljava/lang/Object;
.source "ChromeSigninController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/sync/signin/ChromeSigninController$Listener;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object; = null

.field public static final SIGNED_IN_ACCOUNT_KEY:Ljava/lang/String; = "google.services.username"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field private static sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/sync/signin/ChromeSigninController$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/sync/signin/ChromeSigninController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;
    .locals 2

    sget-object v1, Lorg/chromium/sync/signin/ChromeSigninController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/sync/signin/ChromeSigninController;

    invoke-direct {v0, p0}, Lorg/chromium/sync/signin/ChromeSigninController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/chromium/sync/signin/ChromeSigninController;->sChromeSigninController:Lorg/chromium/sync/signin/ChromeSigninController;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(Lorg/chromium/sync/signin/ChromeSigninController$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public clearSignedInUser()V
    .locals 4

    sget-object v2, Lorg/chromium/sync/signin/ChromeSigninController;->TAG:Ljava/lang/String;

    const-string v3, "Clearing user signed in to Chrome"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/sync/signin/ChromeSigninController;->setSignedInAccountName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/sync/signin/ChromeSigninController$Listener;

    invoke-interface {v1}, Lorg/chromium/sync/signin/ChromeSigninController$Listener;->onClearSignedInUser()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSignedInAccountName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "google.services.username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignedInUser()Landroid/accounts/Account;
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lorg/chromium/sync/signin/ChromeSigninController$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setSignedInAccountName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/sync/signin/ChromeSigninController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "google.services.username"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
