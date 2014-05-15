.class public Lorg/chromium/sync/signin/AccountManagerHelper;
.super Ljava/lang/Object;
.source "AccountManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;,
        Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;
    }
.end annotation


# static fields
.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final MAX_TRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountManagerHelper"

.field private static final lock:Ljava/lang/Object;

.field private static sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;


# instance fields
.field private final mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mApplicationContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenAsynchronously(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenInner(Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;
    .locals 3

    sget-object v1, Lorg/chromium/sync/signin/AccountManagerHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    new-instance v2, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    invoke-direct {v2, p0}, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getAuthTokenAsynchronously(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V
    .locals 11
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v1 .. v7}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    :goto_0
    move-object v3, v10

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lorg/chromium/sync/signin/AccountManagerHelper$1;

    move-object v2, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, p4

    move-object/from16 v7, p7

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lorg/chromium/sync/signin/AccountManagerHelper$1;-><init>(Lorg/chromium/sync/signin/AccountManagerHelper;Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;Landroid/accounts/Account;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v1 .. v6}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    goto :goto_0
.end method

.method private getAuthTokenInner(Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const-string v5, "intent"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "AccountManagerHelper"

    const-string v6, "Starting intent to get auth credentials"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "intent"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v5, 0x1000

    or-int/2addr v1, v5

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "authtoken"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v5, "AccountManagerHelper"

    const-string v6, "Auth token - getAuthToken returned null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "AccountManagerHelper"

    const-string v6, "Auth token - operation cancelled"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "AccountManagerHelper"

    const-string v6, "Auth token - authenticator exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v5, "AccountManagerHelper"

    const-string v6, "Auth token - IO exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public static overrideAccountManagerHelperForTests(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sget-object v1, Lorg/chromium/sync/signin/AccountManagerHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/chromium/sync/signin/AccountManagerHelper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/sync/signin/AccountManagerHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/signin/AccountManagerDelegate;)V

    sput-object v0, Lorg/chromium/sync/signin/AccountManagerHelper;->sAccountManagerHelper:Lorg/chromium/sync/signin/AccountManagerHelper;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7

    iget-object v5, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string v6, "com.google"

    invoke-interface {v5, v6}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAuthTokenFromBackground(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-direct {p0, v7, v6}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenInner(Landroid/accounts/AccountManagerFuture;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthTokenFromForeground(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenAsynchronously(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V

    return-void
.end method

.method public getGoogleAccountNames()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string v7, "com.google"

    invoke-interface {v6, v7}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    move-object v3, v2

    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getGoogleAccounts()[Landroid/accounts/Account;
    .locals 2

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string v1, "com.google"

    invoke-interface {v0, v1}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getNewAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string v2, "com.google"

    invoke-interface {v1, v2, p2}, Lorg/chromium/sync/signin/AccountManagerDelegate;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p3, v2}, Lorg/chromium/sync/signin/AccountManagerDelegate;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "AccountManagerHelper"

    const-string v2, "Auth token - operation cancelled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AccountManagerHelper"

    const-string v2, "Auth token - authenticator exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AccountManagerHelper"

    const-string v2, "Auth token - IO exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getNewAuthTokenFromForeground(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    const-string v2, "com.google"

    invoke-interface {v0, v2, p2}, Lorg/chromium/sync/signin/AccountManagerDelegate;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/chromium/sync/signin/AccountManagerHelper;->getAuthTokenAsynchronously(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/chromium/sync/signin/AccountManagerHelper$ConnectionRetry;)V

    return-void
.end method

.method public hasGoogleAccountAuthenticator()Z
    .locals 7

    iget-object v5, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    invoke-interface {v5}, Lorg/chromium/sync/signin/AccountManagerDelegate;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    const-string v5, "com.google"

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public hasGoogleAccounts()Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/signin/AccountManagerHelper;->mAccountManager:Lorg/chromium/sync/signin/AccountManagerDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/sync/signin/AccountManagerDelegate;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
