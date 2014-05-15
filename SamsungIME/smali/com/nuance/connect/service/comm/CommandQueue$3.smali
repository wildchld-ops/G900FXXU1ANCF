.class Lcom/nuance/connect/service/comm/CommandQueue$3;
.super Ljava/lang/Object;
.source "CommandQueue.java"

# interfaces
.implements Lcom/nuance/connect/system/NetworkListener;


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

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$200(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #calls: Lcom/nuance/connect/service/comm/CommandQueue;->resetTimers()V
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$800(Lcom/nuance/connect/service/comm/CommandQueue;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #calls: Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$900(Lcom/nuance/connect/service/comm/CommandQueue;)V

    return-void
.end method

.method public onNetworkDisconnect()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$200(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pause()V

    return-void
.end method

.method public onNetworkStable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #calls: Lcom/nuance/connect/service/comm/CommandQueue;->processQueue()V
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$900(Lcom/nuance/connect/service/comm/CommandQueue;)V

    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/connect/service/comm/CommandQueue;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue;->access$702(Lcom/nuance/connect/service/comm/CommandQueue;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->analyticsScribe:Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$200(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/AnalyticsDataUsageScribeImpl;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    #getter for: Lcom/nuance/connect/service/comm/CommandQueue;->executor:Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$500(Lcom/nuance/connect/service/comm/CommandQueue;)Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/comm/CommandQueue$ConnectionPool;->pause()V

    return-void
.end method
