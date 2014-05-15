.class public Lorg/chromium/base/ContextTypes;
.super Ljava/lang/Object;
.source "ContextTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ContextTypes$1;,
        Lorg/chromium/base/ContextTypes$ContextTypesHolder;
    }
.end annotation


# static fields
.field public static final CONTEXT_TYPE_NORMAL:I = 0x1

.field public static final CONTEXT_TYPE_WEBAPP:I = 0x2


# instance fields
.field private final mContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ContextTypes;->mContextMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ContextTypes$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/ContextTypes;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/base/ContextTypes;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextTypes$ContextTypesHolder;->access$100()Lorg/chromium/base/ContextTypes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/ContextTypes;->mContextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getType(Landroid/content/Context;)I
    .locals 2

    iget-object v1, p0, Lorg/chromium/base/ContextTypes;->mContextMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public put(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong context type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/ContextTypes;->mContextMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/ContextTypes;->mContextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
