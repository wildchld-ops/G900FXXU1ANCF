.class final Lcom/google/common/collect/BstMutationRule;
.super Ljava/lang/Object;
.source "BstMutationRule.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "N:",
        "Lcom/google/common/collect/BstNode",
        "<TK;TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final balancePolicy:Lcom/google/common/collect/BstBalancePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;"
        }
    .end annotation
.end field

.field private final modifier:Lcom/google/common/collect/BstModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;"
        }
    .end annotation
.end field

.field private final nodeFactory:Lcom/google/common/collect/BstNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstBalancePolicy;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationRule;->balancePolicy:Lcom/google/common/collect/BstBalancePolicy;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstNodeFactory;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationRule;->nodeFactory:Lcom/google/common/collect/BstNodeFactory;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModifier;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationRule;->modifier:Lcom/google/common/collect/BstModifier;

    return-void
.end method

.method public static createRule(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)Lcom/google/common/collect/BstMutationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(",
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationRule",
            "<TK;TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/BstMutationRule;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/BstMutationRule;-><init>(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)V

    return-object v0
.end method


# virtual methods
.method public getBalancePolicy()Lcom/google/common/collect/BstBalancePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstMutationRule;->balancePolicy:Lcom/google/common/collect/BstBalancePolicy;

    return-object v0
.end method

.method public getModifier()Lcom/google/common/collect/BstModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstModifier",
            "<TK;TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstMutationRule;->modifier:Lcom/google/common/collect/BstModifier;

    return-object v0
.end method

.method public getNodeFactory()Lcom/google/common/collect/BstNodeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstMutationRule;->nodeFactory:Lcom/google/common/collect/BstNodeFactory;

    return-object v0
.end method
