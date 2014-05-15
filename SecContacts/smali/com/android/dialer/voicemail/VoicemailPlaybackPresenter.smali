.class public Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    }
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final PAUSED_STATE_KEY:Ljava/lang/String;

.field private static final PRESET_NAMES:[I

.field private static final PRESET_RATES:[F


# instance fields
.field private isPrevPlaying:Z

.field private isSeekBarMoveEnable:Z

.field private mAfterDrag:Z

.field private final mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mClipPosition:I

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private mIsPaused:Z

.field private mIsRotate:Z

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private final mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mRateIndex:I

.field private final mStartPlayingImmediately:Z

.field private final mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private movePostionByUser:I

.field private prevStartPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PAUSED_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-void

    :array_0
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xa0t 0x3ft
        0x0t 0x0t 0xc8t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xdft 0x1t 0xet 0x7ft
        0xe0t 0x1t 0xet 0x7ft
        0xe1t 0x1t 0xet 0x7ft
        0xe2t 0x1t 0xet 0x7ft
        0xe3t 0x1t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/media/MediaPlayer;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/dialer/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;Landroid/media/AudioManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    iput v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    iput v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    iput v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    iput-object p6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v1, 0x21

    invoke-direct {v0, p0, p4, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iput-object p7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p8, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return p1
.end method

.method static synthetic access$1500()[F
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePostionByUser:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->movePlayBack(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isSeekBarMoveEnable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->isPrevPlaying:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/util/AsyncTaskExecutor;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method private changeRate(FI)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setPlaySpeed(F)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    return-void
.end method

.method private checkThatWeHaveContent()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "handleError  "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "visualvoicemail=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private makeRequestForContent()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mFetchResultHandler should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private movePlayBack(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-boolean v9, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAfterDrag:Z

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v4}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v4

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v8, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-interface {v4, v3, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v2, v0, 0x3e8

    div-int/lit8 v1, v2, 0x3c

    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v2, v4

    const/16 v4, 0x63

    if-le v1, v4, :cond_0

    const/16 v1, 0x63

    :cond_0
    iget-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    return-void
.end method

.method private postSuccessfulPrepareActions()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RewFFButtonListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setCtrlListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    iput-boolean v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsRotate:Z

    iput v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mClipPosition:I

    goto :goto_0
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private resetPrepareStartPlaying(I)V
    .locals 10

    :try_start_0
    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "visualvoicemail=on"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v5, "VoicemailPlaybackPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetPrepareStartPlaying clipPositionInMillis=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "VoicemailPlaybackPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetPrepareStartPlaying mDurationValue =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {p1, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    iput v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->prevStartPos:I

    const-string v5, "VoicemailPlaybackPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetPrepareStartPlaying startPosition=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-interface {v5, v4, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    sget-object v5, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    iget v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    aget v5, v5, v6

    sget-object v6, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    iget v7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStarted()V

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v3, v1, 0x3e8

    div-int/lit8 v2, v3, 0x3c

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v3, v5

    const/16 v5, 0x63

    if-le v2, v5, :cond_1

    const/16 v2, 0x63

    :cond_1
    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setDurationText(Ljava/lang/String;)V

    const-string v5, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableProximitySensor()V

    :cond_2
    iget-object v5, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v6, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->startUpdating(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "visualvoicemail=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPaused:Z

    const-string v0, "vvm"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getViewByTypeOfLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    :cond_2
    return-void
.end method


# virtual methods
.method public createRateDecreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public createRateIncreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "VoicemailPlaybackPresenter"

    const-string v1, "handleCompletion "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setVolumeControlStream(I)V

    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveContent()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() mPlayer.getCurrentPosition() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/16 v2, 0x400

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
