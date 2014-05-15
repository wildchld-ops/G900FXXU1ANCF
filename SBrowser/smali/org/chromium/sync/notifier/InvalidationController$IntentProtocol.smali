.class public Lorg/chromium/sync/notifier/InvalidationController$IntentProtocol;
.super Ljava/lang/Object;
.source "InvalidationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/sync/notifier/InvalidationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentProtocol"
.end annotation


# static fields
.field public static final ACTION_REGISTER:Ljava/lang/String; = "org.chromium.sync.notifier.ACTION_REGISTER_TYPES"

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_REGISTERED_TYPES:Ljava/lang/String; = "registered_types"

.field public static final EXTRA_STOP:Ljava/lang/String; = "stop"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRegisterIntent(Landroid/accounts/Account;ZLjava/util/Set;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v3, Landroid/content/Intent;

    const-string v6, "org.chromium.sync.notifier.ACTION_REGISTER_TYPES"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ALL_TYPES"

    aput-object v7, v4, v6

    :cond_0
    const-string v6, "registered_types"

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v6, "account"

    invoke-virtual {v3, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v3

    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5}, Lorg/chromium/sync/internal_api/pub/base/ModelType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    move v1, v2

    goto :goto_0
.end method

.method public static isRegisteredTypesChange(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "registered_types"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStop(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
