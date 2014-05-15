.class abstract Lcom/google/common/collect/BstPath;
.super Ljava/lang/Object;
.source "BstPath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode",
        "<*TN;>;P:",
        "Lcom/google/common/collect/BstPath",
        "<TN;TP;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final prefix:Lcom/google/common/collect/BstPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final tip:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstPath;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TP;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstNode;

    iput-object v0, p0, Lcom/google/common/collect/BstPath;->tip:Lcom/google/common/collect/BstNode;

    iput-object p2, p0, Lcom/google/common/collect/BstPath;->prefix:Lcom/google/common/collect/BstPath;

    return-void
.end method


# virtual methods
.method public final getPrefix()Lcom/google/common/collect/BstPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/BstPath;->hasPrefix()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/common/collect/BstPath;->prefix:Lcom/google/common/collect/BstPath;

    return-object v0
.end method

.method public final getTip()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstPath;->tip:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method public final hasPrefix()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/BstPath;->prefix:Lcom/google/common/collect/BstPath;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prefixOrNull()Lcom/google/common/collect/BstPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/BstPath;->prefix:Lcom/google/common/collect/BstPath;

    return-object v0
.end method
