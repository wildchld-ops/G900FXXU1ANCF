.class public Lcom/kikin/KikinBarService;
.super Ljava/lang/Object;
.source "KikinBarService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/KikinBarService$DelayedMessage;,
        Lcom/kikin/KikinBarService$ServiceStateListener;
    }
.end annotation


# static fields
.field public static final MSG_ACTIVITY_RESTARTED:I = 0xb

.field public static final MSG_CAB_WINDOW_TOKEN:I = 0x16

.field public static final MSG_DO_SEARCH:I = 0x7

.field public static final MSG_GET_VISIBILITY:I = 0xd

.field public static final MSG_HIDE_ACTION_BAR:I = 0x1

.field public static final MSG_HIDE_KIKIN_BAR:I = 0x6

.field public static final MSG_KIKIN_BAR_IS_HIDING:I = 0xa

.field public static final MSG_KIKIN_BAR_RECT_CHANGED:I = 0xc

.field public static final MSG_ON_ACTION_BAR_HEIGHT_CHANGE:I = 0xf

.field public static final MSG_ON_KIKIN_BAR_ANIMATION_FINSHED:I = 0x11

.field public static final MSG_ON_KIKIN_DISABLED:I = 0x12

.field public static final MSG_ON_QUERY_CHANGED:I = 0x3

.field public static final MSG_ON_QUERY_REWRITTEN:I = 0x2

.field public static final MSG_ON_USER_AGREEMENT_NOT_ACCEPTED:I = 0x17

.field public static final MSG_ON_VISIBILITY_RECEIVED:I = 0xe

.field public static final MSG_PLAY_KIKIN_SOUND:I = 0x15

.field public static final MSG_REGISTER_CLIENT:I = 0x4

.field public static final MSG_SAVE_KIKIN_BAR_STATE:I = 0x8

.field public static final MSG_SHOW_EDIT_QUERY_WINDOW:I = 0x10

.field public static final MSG_SHOW_KIKIN_BAR:I = 0x5

.field public static final MSG_SHOW_KIKIN_DISABLED_TOAST:I = 0x14

.field public static final MSG_UNREGISTER_CLIENT:I = 0x13

.field private static final TAG:Ljava/lang/String; = "KikinBarService"


# instance fields
.field private connected:Z

.field private connecting:Z

.field private context:Landroid/content/Context;

.field private incomingHandler:Lcom/kikin/BarIncomingHandler;

.field private incomingMessenger:Landroid/os/Messenger;

.field private key:Ljava/lang/String;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kikin/KikinBarService$DelayedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private outgoingMessenger:Landroid/os/Messenger;

.field private serviceStateListener:Lcom/kikin/KikinBarService$ServiceStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kikin/BarIncomingHandler;

    invoke-direct {v0}, Lcom/kikin/BarIncomingHandler;-><init>()V

    iput-object v0, p0, Lcom/kikin/KikinBarService;->incomingHandler:Lcom/kikin/BarIncomingHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/kikin/KikinBarService;->incomingHandler:Lcom/kikin/BarIncomingHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kikin/KikinBarService;->incomingMessenger:Landroid/os/Messenger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/kikin/KikinBarService;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    rem-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/KikinBarService;->key:Ljava/lang/String;

    return-void
.end method

.method private sendMessage(ILandroid/os/Bundle;Z)Z
    .locals 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/kikin/KikinBarService;->connecting:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/kikin/KikinBarService;->connected:Z

    if-nez v4, :cond_2

    :cond_0
    iget-boolean v4, p0, Lcom/kikin/KikinBarService;->connecting:Z

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/kikin/KikinBarService;->addDelayedMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v3

    :cond_2
    if-nez p2, :cond_3

    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    :cond_3
    const-string v4, "key"

    iget-object v5, p0, Lcom/kikin/KikinBarService;->key:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/kikin/KikinBarService;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_4
    const-string v4, "KikinBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to send message ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static showKikinDisabledToast(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kikin.KikinSearchService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "requestSettings"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "message"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "KikinBarService"

    const-string v3, "failed to show toast [kikin bar service]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addDelayedMessage(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    new-instance v2, Lcom/kikin/KikinBarService$DelayedMessage;

    invoke-direct {v2, p0, p1, p2}, Lcom/kikin/KikinBarService$DelayedMessage;-><init>(Lcom/kikin/KikinBarService;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/kikin/KikinBarService;->connected:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/kikin/KikinBarService;->connecting:Z

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.kikin.KikinSearchService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kikin/KikinBarService;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "KikinBarService"

    const-string v3, "failed to bind service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/kikin/KikinBarService;->connecting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public disconnect()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kikin/KikinBarService;->connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kikin/KikinBarService;->connecting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinBarService;->connected:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinBarService;->connecting:Z

    iget-object v0, p0, Lcom/kikin/KikinBarService;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSearch(Lcom/kikin/selection/Selection;)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selection"

    invoke-virtual {p1}, Lcom/kikin/selection/Selection;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public hide(Z)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "shouldRestore"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kikin/KikinBarService;->connected:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kikin/KikinBarService;->connecting:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/kikin/KikinBarService;->outgoingMessenger:Landroid/os/Messenger;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kikin/KikinBarService;->connected:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kikin/KikinBarService;->connecting:Z

    invoke-virtual {p0}, Lcom/kikin/KikinBarService;->registerClient()Z

    iget-object v2, p0, Lcom/kikin/KikinBarService;->serviceStateListener:Lcom/kikin/KikinBarService$ServiceStateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/KikinBarService;->serviceStateListener:Lcom/kikin/KikinBarService$ServiceStateListener;

    invoke-interface {v2}, Lcom/kikin/KikinBarService$ServiceStateListener;->onServiceConnected()V

    :cond_0
    iget-object v3, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kikin/KikinBarService$DelayedMessage;

    invoke-virtual {v1}, Lcom/kikin/KikinBarService$DelayedMessage;->send()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kikin/KikinBarService;->outgoingMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinBarService;->connected:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kikin/KikinBarService;->connecting:Z

    iget-object v0, p0, Lcom/kikin/KikinBarService;->serviceStateListener:Lcom/kikin/KikinBarService$ServiceStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kikin/KikinBarService;->serviceStateListener:Lcom/kikin/KikinBarService$ServiceStateListener;

    invoke-interface {v0}, Lcom/kikin/KikinBarService$ServiceStateListener;->onServiceDisconnected()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playKikinSound()Z
    .locals 3

    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public registerClient()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/kikin/KikinBarService;->context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kikin/KikinBarService;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/kikin/KikinBarService;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unknown"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x4

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "key"

    iget-object v6, p0, Lcom/kikin/KikinBarService;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "componentName"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/kikin/KikinBarService;->incomingMessenger:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v4, p0, Lcom/kikin/KikinBarService;->outgoingMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x1

    :goto_2
    return v4

    :catch_0
    move-exception v2

    :goto_3
    const-string v4, "KikinBarService"

    const-string v5, "failed to register client"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_3

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public removeAllDelayedMessages()V
    .locals 2

    iget-object v1, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kikin/KikinBarService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendActivityRestarted()Z
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/kikin/KikinBarService;->sendMessage(I)Z

    move-result v0

    return v0
.end method

.method public sendCabWindowToken(Landroid/os/IBinder;Z)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "windowToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0, p2}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;Z)Z

    move-result v1

    return v1
.end method

.method public sendContainerRect(Landroid/graphics/Rect;)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public sendMessage(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public sendMessage(ILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public setBarIncomingListener(Lcom/kikin/BarIncomingHandler$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/kikin/KikinBarService;->incomingHandler:Lcom/kikin/BarIncomingHandler;

    invoke-virtual {v0, p1}, Lcom/kikin/BarIncomingHandler;->setCallback(Lcom/kikin/BarIncomingHandler$Callback;)V

    return-void
.end method

.method public setServiceStateListener(Lcom/kikin/KikinBarService$ServiceStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kikin/KikinBarService;->serviceStateListener:Lcom/kikin/KikinBarService$ServiceStateListener;

    return-void
.end method

.method public show(Landroid/os/IBinder;Lcom/kikin/selection/Selection;Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/kikin/theme/ThemeDetector$KikinTheme;Lcom/kikin/KikinBarState;Landroid/os/Bundle;Z)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selection"

    invoke-virtual {p2}, Lcom/kikin/selection/Selection;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "requestSettings"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "windowToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v1, "barRect"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "windowRect"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "theme"

    invoke-virtual {p6}, Lcom/kikin/theme/ThemeDetector$KikinTheme;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "openState"

    invoke-virtual {p7}, Lcom/kikin/KikinBarState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p8, :cond_0

    const-string v1, "state"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;Z)Z

    move-result v1

    return v1
.end method

.method public showEditQueryWindow(Landroid/os/IBinder;I)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cabHeight"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "windowToken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/kikin/KikinBarService;->sendMessage(ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public unregisterClient()Z
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kikin/KikinBarService;->sendMessage(I)Z

    move-result v0

    return v0
.end method
