.class Lsstream/lib/covers/MessengerProvider$IncomingHandler;
.super Landroid/os/Handler;
.source "MessengerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsstream/lib/covers/MessengerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private onFeedItemUpdate(Landroid/os/Bundle;)V
    .locals 9

    sget-object v6, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    const-string v5, "result"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sget-object v5, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    const-string v7, "stream_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsstream/lib/covers/MessengerProvider$Request;

    if-nez v3, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    if-eqz v4, :cond_1

    iget-object v5, v3, Lsstream/lib/covers/MessengerProvider$Request;->mListener:Lsstream/lib/covers/StreamUpdateListener;

    invoke-interface {v5, v4}, Lsstream/lib/covers/StreamUpdateListener;->onSuccess(Z)V

    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    const-string v5, "errorMessage"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->UNKNOWN:Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;->valueOf(Ljava/lang/String;)Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :goto_2
    :try_start_3
    iget-object v5, v3, Lsstream/lib/covers/MessengerProvider$Request;->mListener:Lsstream/lib/covers/StreamUpdateListener;

    invoke-interface {v5, v2}, Lsstream/lib/covers/StreamUpdateListener;->onFailure(Lsstream/lib/covers/StreamUpdateListener$ErrorMessage;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "CoverLockLibrary"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid error code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", using UNKNOWN instead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-object v1, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lsstream/lib/covers/MessengerProvider$IncomingHandler;->onFeedItemUpdate(Landroid/os/Bundle;)V

    sget-object v0, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stream_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsstream/lib/covers/MessengerProvider;->userRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsstream/lib/covers/MessengerProvider;->disconnectServer()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
