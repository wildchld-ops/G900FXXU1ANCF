.class final Lcom/google/common/collect/BstInOrderPath;
.super Lcom/google/common/collect/BstPath;
.source "BstInOrderPath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BstInOrderPath$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode",
        "<*TN;>;>",
        "Lcom/google/common/collect/BstPath",
        "<TN;",
        "Lcom/google/common/collect/BstInOrderPath",
        "<TN;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private transient nextInOrder:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private transient prevInOrder:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private final sideExtension:Lcom/google/common/collect/BstSide;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/common/collect/BstInOrderPath;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/BstPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstPath;)V

    iput-object p2, p0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    sget-boolean v2, Lcom/google/common/collect/BstInOrderPath;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstInOrderPath$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method private computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    move-object v0, p0

    :goto_2
    iget-object v3, v0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getPrefix()Lcom/google/common/collect/BstPath;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->prefixOrNull()Lcom/google/common/collect/BstPath;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    goto :goto_1
.end method

.method private static extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    return-object v1
.end method

.method public static inOrderFactory()Lcom/google/common/collect/BstPathFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>()",
            "Lcom/google/common/collect/BstPathFactory",
            "<TN;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/BstInOrderPath$1;

    invoke-direct {v0}, Lcom/google/common/collect/BstInOrderPath$1;-><init>()V

    return-object v0
.end method

.method private nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    sget-object v1, Lcom/google/common/collect/BstInOrderPath$2;->$SwitchMap$com$google$common$collect$BstSide:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->prevInOrder:Lcom/google/common/base/Optional;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/BstInOrderPath;->prevInOrder:Lcom/google/common/base/Optional;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->nextInOrder:Lcom/google/common/base/Optional;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/BstInOrderPath;->nextInOrder:Lcom/google/common/base/Optional;

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getSideOfExtension()Lcom/google/common/collect/BstSide;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    return-object v0
.end method

.method public hasNext(Lcom/google/common/collect/BstSide;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public next(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->hasNext(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    return-object v0
.end method
