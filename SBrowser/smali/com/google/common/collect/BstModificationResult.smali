.class final Lcom/google/common/collect/BstModificationResult;
.super Ljava/lang/Object;
.source "BstModificationResult.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BstModificationResult$ModificationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode",
        "<*TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final changedTarget:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final originalTarget:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lcom/google/common/collect/BstModificationResult$ModificationType;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/google/common/collect/BstModificationResult$ModificationType;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/BstModificationResult;->originalTarget:Lcom/google/common/collect/BstNode;

    iput-object p2, p0, Lcom/google/common/collect/BstModificationResult;->changedTarget:Lcom/google/common/collect/BstNode;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModificationResult$ModificationType;

    iput-object v0, p0, Lcom/google/common/collect/BstModificationResult;->type:Lcom/google/common/collect/BstModificationResult$ModificationType;

    return-void
.end method

.method static identity(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->IDENTITY:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method

.method static rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 2
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
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBALANCING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method

.method static rebuildingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 2
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
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method


# virtual methods
.method getChangedTarget()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->changedTarget:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method getOriginalTarget()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->originalTarget:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method getType()Lcom/google/common/collect/BstModificationResult$ModificationType;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->type:Lcom/google/common/collect/BstModificationResult$ModificationType;

    return-object v0
.end method
