.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$2700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$2800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z
    invoke-static {v1, v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2902(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v1, "VoicemailPlaybackPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PositionUpdater mDuration.get() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v3, v3, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "VoicemailPlaybackPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PositionUpdater currentPosition=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    #calls: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v1, v4, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->prevPos:I
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$3000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;)I

    move-result v1

    if-le v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$3100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    #calls: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v1, v4, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I
    invoke-static {v1, v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$3102(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->prevPos:I
    invoke-static {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$3002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;I)I

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->prevPos:I
    invoke-static {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->access$3002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;I)I

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v2, v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater$1;->this$1:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v1, v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto/16 :goto_0
.end method
