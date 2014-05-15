.class public Lorg/chromium/sync/notifier/SyncStatusHelper;
.super Ljava/lang/Object;
.source "SyncStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/sync/notifier/SyncStatusHelper$SyncSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final AUTH_TOKEN_TYPE_SYNC:Ljava/lang/String; = "chromiumsync"

.field private static final LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String;

.field private static sSyncStatusHelper:Lorg/chromium/sync/notifier/SyncStatusHelper;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/sync/notifier/SyncStatusHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/sync/notifier/SyncContentResolverDelegate;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/sync/notifier/SyncStatusHelper;
    .locals 3

    sget-object v1, Lorg/chromium/sync/notifier/SyncStatusHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->sSyncStatusHelper:Lorg/chromium/sync/notifier/SyncStatusHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/sync/notifier/SyncStatusHelper;

    new-instance v2, Lorg/chromium/sync/notifier/SystemSyncContentResolverDelegate;

    invoke-direct {v2}, Lorg/chromium/sync/notifier/SystemSyncContentResolverDelegate;-><init>()V

    invoke-direct {v0, p0, v2}, Lorg/chromium/sync/notifier/SyncStatusHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/notifier/SyncContentResolverDelegate;)V

    sput-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->sSyncStatusHelper:Lorg/chromium/sync/notifier/SyncStatusHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->sSyncStatusHelper:Lorg/chromium/sync/notifier/SyncStatusHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private makeSyncable(Landroid/accounts/Account;)V
    .locals 8

    iget-object v6, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/sync/notifier/InvalidationController;->getContractAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/chromium/sync/notifier/SyncStatusHelper;->hasFinishedFirstSync(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    const/4 v7, 0x1

    invoke-interface {v6, p1, v2, v7}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_0
    iget-object v6, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/sync/signin/AccountManagerHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v3

    move-object v1, v3

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v6, v0, v2}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v2, v7}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static overrideSyncStatusHelperForTests(Landroid/content/Context;Lorg/chromium/sync/notifier/SyncContentResolverDelegate;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sget-object v1, Lorg/chromium/sync/notifier/SyncStatusHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->sSyncStatusHelper:Lorg/chromium/sync/notifier/SyncStatusHelper;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "SyncStatusHelper already exists"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/chromium/sync/notifier/SyncStatusHelper;

    invoke-direct {v0, p0, p1}, Lorg/chromium/sync/notifier/SyncStatusHelper;-><init>(Landroid/content/Context;Lorg/chromium/sync/notifier/SyncContentResolverDelegate;)V

    sput-object v0, Lorg/chromium/sync/notifier/SyncStatusHelper;->sSyncStatusHelper:Lorg/chromium/sync/notifier/SyncStatusHelper;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static temporarilyAllowDiskWritesAndDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method


# virtual methods
.method public disableAndroidSync(Landroid/accounts/Account;)V
    .locals 4

    invoke-static {}, Lorg/chromium/sync/notifier/SyncStatusHelper;->temporarilyAllowDiskWritesAndDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationController;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v2, p1, v0}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v3}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public enableAndroidSync(Landroid/accounts/Account;)V
    .locals 4

    invoke-static {}, Lorg/chromium/sync/notifier/SyncStatusHelper;->temporarilyAllowDiskWritesAndDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/chromium/sync/notifier/SyncStatusHelper;->makeSyncable(Landroid/accounts/Account;)V

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationController;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v2, p1, v0}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v0, v3}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method hasFinishedFirstSync(Landroid/accounts/Account;)Z
    .locals 2

    iget-object v1, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/notifier/InvalidationController;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v1, p1, v0}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMasterSyncAutomaticallyEnabled()Z
    .locals 3

    invoke-static {}, Lorg/chromium/sync/notifier/SyncStatusHelper;->temporarilyAllowDiskWritesAndDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v2}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/sync/notifier/SyncStatusHelper;->isSyncEnabled(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public isSyncEnabled(Landroid/accounts/Account;)Z
    .locals 4

    invoke-static {}, Lorg/chromium/sync/notifier/SyncStatusHelper;->temporarilyAllowDiskWritesAndDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/sync/notifier/InvalidationController;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v3}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getMasterSyncAutomatically()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v3, p1, v0}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSyncEnabledForChrome(Landroid/accounts/Account;)Z
    .locals 4

    invoke-static {}, Lorg/chromium/sync/notifier/SyncStatusHelper;->temporarilyAllowDiskWritesAndDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/sync/notifier/InvalidationController;->getContractAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v3, p1, v0}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerContentResolverObserver(Landroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unregisterContentResolverObserver(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/notifier/SyncStatusHelper;->mSyncContentResolverWrapper:Lorg/chromium/sync/notifier/SyncContentResolverDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/sync/notifier/SyncContentResolverDelegate;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method
