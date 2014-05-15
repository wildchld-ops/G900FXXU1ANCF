.class Lcom/nuance/connect/service/ConnectClient$5;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    const-wide v6, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v4, v10

    if-gez v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$500(Lcom/nuance/connect/service/ConnectClient;)J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/16 v0, 0x2710

    int-to-long v10, v0

    add-long v2, v4, v10

    cmp-long v8, v6, v2

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$600(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/comm/CommandQueue;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/service/comm/CommandQueue;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$600(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/comm/CommandQueue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/connect/service/comm/CommandQueue;->isIdle()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Alarm too soon... delaying shutdown time["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] min["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/nuance/connect/service/ConnectClient;->access$300(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v10

    int-to-long v11, v0

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    monitor-exit v9

    return-void

    :cond_2
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$400(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending shutdown message... time["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] now["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v10, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_SERVICE_SHUTDOWN:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/nuance/connect/service/ConnectClient$5;->this$0:Lcom/nuance/connect/service/ConnectClient;

    #getter for: Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/nuance/connect/service/ConnectClient;->access$300(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v10

    int-to-long v11, v0

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
