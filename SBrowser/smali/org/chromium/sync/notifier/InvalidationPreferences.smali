.class public Lorg/chromium/sync/notifier/InvalidationPreferences;
.super Ljava/lang/Object;
.source "InvalidationPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/sync/notifier/InvalidationPreferences$PrefKeys;,
        Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/sync/notifier/InvalidationPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/sync/notifier/InvalidationPreferences;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public commit(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Z
    .locals 2

    #getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/sync/notifier/InvalidationPreferences;->TAG:Ljava/lang/String;

    const-string v1, "Failed to commit invalidation preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public edit()Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;
    .locals 1

    new-instance v0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;

    invoke-direct {v0, p0}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;-><init>(Lorg/chromium/sync/notifier/InvalidationPreferences;)V

    return-object v0
.end method

.method public getInternalNotificationClientState()[B
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "sync_tango_internal_state"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    goto :goto_0
.end method

.method public getSavedSyncedAccount()Landroid/accounts/Account;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "sync_acct_name"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sync_acct_type"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedSyncedTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sync_tango_types"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public setAccount(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Landroid/accounts/Account;)V
    .locals 3

    #getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_acct_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_acct_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setInternalNotificationClientState(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;[B)V
    .locals 3

    #getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_tango_internal_state"

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setSyncTypes(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #getter for: Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sync_tango_types"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
