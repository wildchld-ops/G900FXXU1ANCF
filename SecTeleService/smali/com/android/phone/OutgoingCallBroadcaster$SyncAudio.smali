.class Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;
.super Landroid/os/Handler;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncAudio"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SYNC_AUDIO_DONE ar.exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudioResult:Z
    invoke-static {v1, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$102(Lcom/android/phone/OutgoingCallBroadcaster;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$SyncAudio;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/OutgoingCallBroadcaster;->mSyncAudioResult:Z
    invoke-static {v1, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$102(Lcom/android/phone/OutgoingCallBroadcaster;Z)Z

    const-string v1, "OutgoingCallBroadcaster"

    const-string v3, "Can not sync audio before making call!"

    invoke-static {v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
