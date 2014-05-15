.class public final enum Lorg/chromium/sync/internal_api/pub/base/ModelType;
.super Ljava/lang/Enum;
.source "ModelType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/sync/internal_api/pub/base/ModelType; = null

.field public static final ALL_TYPES_TYPE:Ljava/lang/String; = "ALL_TYPES"

.field public static final enum AUTOFILL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum AUTOFILL_PROFILE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum BOOKMARK:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum DEVICE_INFO:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum EXPERIMENTS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum FAVICON_IMAGE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum FAVICON_TRACKING:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum HISTORY_DELETE_DIRECTIVE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum NIGORI:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum PASSWORD:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum PROXY_TABS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field public static final enum SESSION:Lorg/chromium/sync/internal_api/pub/base/ModelType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TYPED_URL:Lorg/chromium/sync/internal_api/pub/base/ModelType;


# instance fields
.field private final mModelType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "AUTOFILL"

    const-string v2, "AUTOFILL"

    invoke-direct {v0, v1, v4, v2}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "AUTOFILL_PROFILE"

    const-string v2, "AUTOFILL_PROFILE"

    invoke-direct {v0, v1, v5, v2}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL_PROFILE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "BOOKMARK"

    const-string v2, "BOOKMARK"

    invoke-direct {v0, v1, v6, v2}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->BOOKMARK:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "EXPERIMENTS"

    const-string v2, "EXPERIMENTS"

    invoke-direct {v0, v1, v7, v2}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->EXPERIMENTS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "NIGORI"

    const-string v2, "NIGORI"

    invoke-direct {v0, v1, v8, v2}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->NIGORI:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "PASSWORD"

    const/4 v2, 0x5

    const-string v3, "PASSWORD"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PASSWORD:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "SESSION"

    const/4 v2, 0x6

    const-string v3, "SESSION"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->SESSION:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "TYPED_URL"

    const/4 v2, 0x7

    const-string v3, "TYPED_URL"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->TYPED_URL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "HISTORY_DELETE_DIRECTIVE"

    const/16 v2, 0x8

    const-string v3, "HISTORY_DELETE_DIRECTIVE"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->HISTORY_DELETE_DIRECTIVE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "DEVICE_INFO"

    const/16 v2, 0x9

    const-string v3, "DEVICE_INFO"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->DEVICE_INFO:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "PROXY_TABS"

    const/16 v2, 0xa

    const-string v3, "NULL"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PROXY_TABS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "FAVICON_IMAGE"

    const/16 v2, 0xb

    const-string v3, "FAVICON_IMAGE"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->FAVICON_IMAGE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    new-instance v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-string v1, "FAVICON_TRACKING"

    const/16 v2, 0xc

    const-string v3, "FAVICON_TRACKING"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->FAVICON_TRACKING:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/chromium/sync/internal_api/pub/base/ModelType;

    sget-object v1, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/sync/internal_api/pub/base/ModelType;->AUTOFILL_PROFILE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/sync/internal_api/pub/base/ModelType;->BOOKMARK:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/sync/internal_api/pub/base/ModelType;->EXPERIMENTS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chromium/sync/internal_api/pub/base/ModelType;->NIGORI:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PASSWORD:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->SESSION:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->TYPED_URL:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->HISTORY_DELETE_DIRECTIVE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->DEVICE_INFO:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->PROXY_TABS:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->FAVICON_IMAGE:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/chromium/sync/internal_api/pub/base/ModelType;->FAVICON_TRACKING:Lorg/chromium/sync/internal_api/pub/base/ModelType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->$VALUES:[Lorg/chromium/sync/internal_api/pub/base/ModelType;

    const-class v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->mModelType:Ljava/lang/String;

    return-void
.end method

.method public static modelTypesToSyncTypes(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-virtual {v1}, Lorg/chromium/sync/internal_api/pub/base/ModelType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static syncTypesToModelTypes(Ljava/util/Collection;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lorg/chromium/sync/internal_api/pub/base/ModelType;",
            ">;"
        }
    .end annotation

    const-string v4, "ALL_TYPES"

    invoke-interface {p0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/chromium/sync/internal_api/pub/base/ModelType;->values()[Lorg/chromium/sync/internal_api/pub/base/ModelType;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-static {v3}, Lorg/chromium/sync/internal_api/pub/base/ModelType;->valueOf(Ljava/lang/String;)Lorg/chromium/sync/internal_api/pub/base/ModelType;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lorg/chromium/sync/internal_api/pub/base/ModelType;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not translate sync type to model type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/sync/internal_api/pub/base/ModelType;
    .locals 1

    const-class v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/sync/internal_api/pub/base/ModelType;
    .locals 1

    sget-object v0, Lorg/chromium/sync/internal_api/pub/base/ModelType;->$VALUES:[Lorg/chromium/sync/internal_api/pub/base/ModelType;

    invoke-virtual {v0}, [Lorg/chromium/sync/internal_api/pub/base/ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/sync/internal_api/pub/base/ModelType;

    return-object v0
.end method
