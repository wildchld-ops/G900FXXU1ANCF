.class public Lorg/chromium/sync/notifier/InvalidationController;
.super Ljava/lang/Object;
.source "InvalidationController.java"

# interfaces
.implements Lorg/chromium/base/ActivityStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/sync/notifier/InvalidationController$IntentProtocol;
    }
.end annotation


# static fields
.field private static final IMPLEMENTING_CLASS_MANIFEST_PROPERTY:Ljava/lang/String; = "org.chromium.sync.notifier.IMPLEMENTING_CLASS_NAME"

.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/chromium/sync/notifier/InvalidationController;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/sync/notifier/InvalidationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationController;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/chromium/base/ActivityStatus;->registerStateListener(Lorg/chromium/base/ActivityStatus$StateListener;)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;
    .locals 2

    sget-object v1, Lorg/chromium/sync/notifier/InvalidationController;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/sync/notifier/InvalidationController;->sInstance:Lorg/chromium/sync/notifier/InvalidationController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/sync/notifier/InvalidationController;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationController;->sInstance:Lorg/chromium/sync/notifier/InvalidationController;

    :cond_0
    sget-object v0, Lorg/chromium/sync/notifier/InvalidationController;->sInstance:Lorg/chromium/sync/notifier/InvalidationController;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getDestinationClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "org.chromium.sync.notifier.IMPLEMENTING_CLASS_NAME"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    sget-object v3, Lorg/chromium/sync/notifier/InvalidationController;->TAG:Ljava/lang/String;

    const-string v4, "No value for org.chromium.sync.notifier.IMPLEMENTING_CLASS_NAME in manifest; sync notifications will not work"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    sget-object v3, Lorg/chromium/sync/notifier/InvalidationController;->TAG:Ljava/lang/String;

    const-string v4, "Cannot read own application info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/chromium/sync/notifier/InvalidationController;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/InvalidationController;

    move-result-object v0

    return-object v0
.end method

.method private setDestinationClassName(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/sync/notifier/InvalidationController;->getDestinationClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getContractAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityStateChange(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/notifier/SyncStatusHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/notifier/SyncStatusHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/notifier/SyncStatusHelper;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/sync/notifier/InvalidationController;->stop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/sync/notifier/InvalidationController;->start()V

    goto :goto_0
.end method

.method public refreshRegisteredTypes()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Lorg/chromium/sync/notifier/InvalidationPreferences;

    iget-object v5, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedTypes()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v4, :cond_0

    const-string v5, "ALL_TYPES"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v4, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-virtual {p0, v0, v1, v3}, Lorg/chromium/sync/notifier/InvalidationController;->setRegisteredTypes(Landroid/accounts/Account;ZLjava/util/Set;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lorg/chromium/sync/internal_api/pub/base/ModelType;->syncTypesToModelTypes(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    goto :goto_1
.end method

.method public refreshRegisteredTypes(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Lorg/chromium/sync/notifier/InvalidationPreferences;

    iget-object v4, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/chromium/sync/notifier/InvalidationPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedTypes()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lorg/chromium/sync/notifier/InvalidationPreferences;->getSavedSyncedAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v3, :cond_0

    const-string v4, "ALL_TYPES"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/sync/notifier/InvalidationController;->setRegisteredTypes(Landroid/accounts/Account;ZLjava/util/Set;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRegisteredTypes(Landroid/accounts/Account;ZLjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;)V"
        }
    .end annotation

    move-object v1, p3

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PROXY_TABS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p1, p2, v1}, Lorg/chromium/sync/notifier/InvalidationController$IntentProtocol;->createRegisterIntent(Landroid/accounts/Account;ZLjava/util/Set;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/sync/notifier/InvalidationController;->setDestinationClassName(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public start()V
    .locals 2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v1}, Lorg/chromium/sync/notifier/InvalidationController;->setDestinationClassName(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stop()V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v1}, Lorg/chromium/sync/notifier/InvalidationController;->setDestinationClassName(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
