.class Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x418c184c24c42dbdL


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/service/comm/CommandQueue$PriorityTaskComparator;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 3

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {p1}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getPriority()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p2, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    if-eqz v2, :cond_1

    check-cast p2, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {p2}, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->getPriority()I

    move-result v1

    :cond_1
    sub-int v2, v1, v0

    return v2
.end method
