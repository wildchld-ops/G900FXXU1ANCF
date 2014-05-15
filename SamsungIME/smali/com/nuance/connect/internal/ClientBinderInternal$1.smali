.class Lcom/nuance/connect/internal/ClientBinderInternal$1;
.super Ljava/lang/Object;
.source "ClientBinderInternal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ClientBinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ClientBinderInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    #calls: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v1, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v2, 0x1

    #calls: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v1, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    #getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z
    invoke-static {v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    #getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    invoke-static {v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onBound()V

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    #setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z
    invoke-static {v1, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$402(Lcom/nuance/connect/internal/ClientBinderInternal;Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    #calls: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v1, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    const/4 v1, 0x0

    #calls: Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal$1;->this$0:Lcom/nuance/connect/internal/ClientBinderInternal;

    #getter for: Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    invoke-static {v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;->onUnbound()V

    return-void
.end method
