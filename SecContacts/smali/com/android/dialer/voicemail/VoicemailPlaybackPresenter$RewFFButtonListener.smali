.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewFFButtonListener"
.end annotation


# instance fields
.field public mSeekHander:Landroid/os/Handler;

.field private mTimer:Ljava/util/TimerTask;

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mSeekHander:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method

.method private TimerMethod()V
    .locals 6

    const-wide/16 v2, 0x1f4

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->mTimer:Ljava/util/TimerTask;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v7, 0x63

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "RewFFButtonListener OnTouch "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "MotionEvent.ACTION_DOWN "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    const/16 v5, -0x3e8

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2202(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v4, v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->TimerMethod()V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    #calls: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v4, v5, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4, v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2602(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v4, v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v4

    add-int/lit16 v4, v4, -0x1f4

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v9, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v1, v2, 0x3c

    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v2, v4

    if-le v1, v7, :cond_2

    const/16 v1, 0x63

    :cond_2
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    const/16 v5, 0x3e8

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2202(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v4, v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->TimerMethod()V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    #calls: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V
    invoke-static {v4, v5, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4, v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2602(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z
    invoke-static {v4, v8}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v4

    add-int/lit16 v4, v4, 0x1f4

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v9, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v1, v2, 0x3c

    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v2, v4

    if-le v1, v7, :cond_4

    const/16 v1, 0x63

    :cond_4
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v4

    const-string v5, "%02d:%02d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_6

    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "MotionEvent.ACTION_MOVE "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v4, "VoicemailPlaybackPresenter"

    const-string v5, "MotionEvent.ACTION_UP "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z
    invoke-static {v4, v9}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I
    invoke-static {v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I

    move-result v6

    add-int/2addr v5, v6

    #calls: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V
    invoke-static {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    #setter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z
    invoke-static {v4, v9}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$2602(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080273
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
