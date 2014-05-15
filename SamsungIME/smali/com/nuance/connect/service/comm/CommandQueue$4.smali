.class Lcom/nuance/connect/service/comm/CommandQueue$4;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 5

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string v3, "rejectedExecution"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->activeTransactions:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1000(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$000(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string v4, "rejectedExecution found old command.  Resubmitting..."

    invoke-interface {v2, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->pendingQueue:Ljava/util/List;
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1100(Lcom/nuance/connect/service/comm/CommandQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/connect/service/comm/CommandQueue$4;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #calls: Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V
    invoke-static {v2}, Lcom/nuance/connect/service/comm/CommandQueue;->access$900(Lcom/nuance/connect/service/comm/CommandQueue;)V

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
