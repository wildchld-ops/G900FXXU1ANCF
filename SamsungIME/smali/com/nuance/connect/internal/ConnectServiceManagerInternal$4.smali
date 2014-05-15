.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;
.super Ljava/lang/Object;
.source "ConnectServiceManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->devLog:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$100(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restart runnable at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$4;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->serviceBinder:Lcom/nuance/connect/internal/ClientBinderInternal;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$200(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/internal/ClientBinderInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->restart()V

    :cond_0
    return-void
.end method
