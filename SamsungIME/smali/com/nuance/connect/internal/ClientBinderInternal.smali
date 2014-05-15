.class Lcom/nuance/connect/internal/ClientBinderInternal;
.super Ljava/lang/Object;
.source "ClientBinderInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ClientBinder;


# static fields
.field private static final MINIMUM_DELAY:I = 0x2710


# instance fields
.field private connectBound:Z

.field private context:Landroid/content/Context;

.field private lastMessageSent:J

.field private lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private mConnectConnection:Landroid/content/ServiceConnection;

.field private final mInboundHandler:Landroid/os/Handler;

.field private final mInboundMessenger:Landroid/os/Messenger;

.field private mOutboundMessenger:Landroid/os/Messenger;

.field private final messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private restart:Z

.field private final rwLock:[I

.field private service:Landroid/content/Intent;

.field private serviceReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/ClientBinderInternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-boolean v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->rwLock:[I

    new-instance v0, Lcom/nuance/connect/internal/ClientBinderInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ClientBinderInternal$1;-><init>(Lcom/nuance/connect/internal/ClientBinderInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.nuance.connect.service.ConnectClient"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    iput-object p2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundMessenger:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ClientBinderInternal;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/nuance/connect/internal/ClientBinderInternal;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ClientBinderInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ClientBinderInternal;)Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lifecycleCallback:Lcom/nuance/connect/internal/ClientBinderLifecycleCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/ClientBinderInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    return p1
.end method

.method private bind()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    goto :goto_0
.end method

.method private setConnectBoundState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    return-void
.end method

.method private unbind()V
    .locals 4

    iget-boolean v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mConnectConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->service:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbind() stopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastMessageSent()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    return-wide v0
.end method

.method public getLock()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->rwLock:[I

    return-object v0
.end method

.method public pause()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UNREGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->unbind()V

    return-void
.end method

.method protected processQueuedMessages()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {p0, v2}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    :cond_0
    return-void
.end method

.method public sendConnectMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .locals 6

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z
    .locals 6

    const/high16 v3, -0x8000

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z
    .locals 6

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z
    .locals 6

    const/high16 v3, -0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method public sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z

    move-result v0

    return v0
.end method

.method protected sendMessage(Landroid/os/Message;Z)Z
    .locals 7

    invoke-virtual {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->getLock()[I

    move-result-object v4

    monitor-enter v4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->lastMessageSent:J

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/common/InternalMessages;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " priority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "rebind!"

    invoke-interface {v3, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    :cond_1
    iget-boolean v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mInboundMessenger:Landroid/os/Messenger;

    iput-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->mOutboundMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    :try_start_2
    iget-object v3, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v4

    return v2

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, v3}, Lcom/nuance/connect/internal/ClientBinderInternal;->setConnectBoundState(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method protected sendMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;IIZ)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    instance-of v2, p2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput p3, v1, Landroid/os/Message;->arg1:I

    iput p4, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, p5}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendMessage(Landroid/os/Message;Z)Z

    move-result v2

    return v2

    :cond_1
    :try_start_1
    instance-of v2, p2, Ljava/util/Map;

    if-eqz v2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setClientComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->connectBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->serviceReady:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->bind()V

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_START_IMMEDIDATELY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_UNREGISTER_CLIENT:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ClientBinderInternal;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/ClientBinderInternal;->restart:Z

    invoke-direct {p0}, Lcom/nuance/connect/internal/ClientBinderInternal;->unbind()V

    return-void
.end method
