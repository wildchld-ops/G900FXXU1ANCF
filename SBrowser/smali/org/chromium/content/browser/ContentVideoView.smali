.class public Lorg/chromium/content/browser/ContentVideoView;
.super Landroid/widget/FrameLayout;
.source "ContentVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentVideoView$FullScreenMediaController;,
        Lorg/chromium/content/browser/ContentVideoView$ProgressView;,
        Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0x2

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x3

.field private static final STATE_PLAYING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContentVideoView"

.field private static focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

.field private static isMultiVideoPlaying:Z

.field static mErrorButton:Ljava/lang/String;

.field static mErrorTitle:Ljava/lang/String;

.field static mPlaybackErrorText:Ljava/lang/String;

.field static mUnknownErrorText:Ljava/lang/String;

.field static mVideoLoadingText:Ljava/lang/String;

.field private static sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

.field private static sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;


# instance fields
.field private mBackKeyRepeatCnt:I

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mExitFullscreenRunnable:Ljava/lang/Runnable;

.field private mIsWebkitTimerPaused:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mNativeContentVideoView:I

.field private mProgressView:Landroid/view/View;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    sput-object v1, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    sput-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    sput-object v1, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/ContentVideoView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurface:Landroid/view/Surface;

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mIsWebkitTimerPaused:Z

    new-instance v0, Lorg/chromium/content/browser/ContentVideoView$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentVideoView$1;-><init>(Lorg/chromium/content/browser/ContentVideoView;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/chromium/content/browser/ContentVideoView;->initResources(Landroid/content/Context;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentBufferPercentage:I

    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mBackKeyRepeatCnt:I

    new-instance v0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;-><init>(Lorg/chromium/content/browser/ContentVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentVideoView;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentVideoView;)I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    return p0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentVideoView;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->onCompletion()V

    return-void
.end method

.method public static assignDelegate()Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    sput-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    sput-boolean v0, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private attachMediaController()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static createContentVideoView(I)Lorg/chromium/content/browser/ContentVideoView;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/chromium/content/browser/ContentVideoView;

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/content/browser/ContentVideoView;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->onShowCustomView(Landroid/view/View;)V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->setBackgroundColor(I)V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentVideoView;->showContentVideoView()V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->setVisibility(I)V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    new-instance v1, Lorg/chromium/content/browser/ContentVideoView$3;

    invoke-direct {v1}, Lorg/chromium/content/browser/ContentVideoView$3;-><init>()V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static destroyContentVideoView()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->onDestroyContentVideoView()V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentVideoView;->removeMediaController()V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentVideoView;->removeSurfaceView()V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    return-void
.end method

.method public static getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sContentVideoView:Lorg/chromium/content/browser/ContentVideoView;

    return-object v0
.end method

.method private static initResources(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0c020c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    const v0, 0x7f0c020d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->mUnknownErrorText:Ljava/lang/String;

    const v0, 0x7f0c020e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->mErrorButton:Ljava/lang/String;

    const v0, 0x7f0c020b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->mErrorTitle:Ljava/lang/String;

    const v0, 0x7f0c020f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->mVideoLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private isInPlaybackState()Z
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMultiWindowRunning()Z
    .locals 2

    const-string v0, "1"

    const-string v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private native nativeExitFullscreen(IZ)V
.end method

.method private native nativeGetCurrentPosition(I)I
.end method

.method private native nativeGetDurationInMilliSeconds(I)I
.end method

.method private native nativeGetVideoHeight(I)I
.end method

.method private native nativeGetVideoWidth(I)I
.end method

.method private native nativeIsPlaying(I)Z
.end method

.method private native nativePause(I)V
.end method

.method private native nativePlay(I)V
.end method

.method private native nativeSeekTo(II)V
.end method

.method private native nativeSetSurface(ILandroid/view/Surface;)V
.end method

.method private native nativeUpdateMediaMetadata(I)V
.end method

.method public static notifyDestroyContentVideoView()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    return-void
.end method

.method private onCompletion()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    return-void
.end method

.method private onStart()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->isMultiWindowRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    return-void
.end method

.method private pauseWebkitTimer(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_DisablePauseWebkitTimer_HTML5"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ContentVideoView"

    const-string v1, "[HTML5Media]pauseWebkitTimer : ignore "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mIsWebkitTimerPaused:Z

    if-nez v0, :cond_0

    const-string v0, "ContentVideoView"

    const-string v1, "[HTML5Media]pauseWebkitTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mIsWebkitTimerPaused:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mIsWebkitTimerPaused:Z

    if-eqz v0, :cond_0

    const-string v0, "ContentVideoView"

    const-string v1, "[HTML5Media]resumeWebkitTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mIsWebkitTimerPaused:Z

    goto :goto_0
.end method

.method public static registerContentVideoViewContextDelegate(Lorg/chromium/content/browser/ContentVideoViewContextDelegate;)V
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    return-void
.end method

.method public static registerContentVideoViewFocusDelegate(Lorg/chromium/content/browser/ContentVideoViewContextDelegate;)V
    .locals 0

    sput-object p0, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method public static unRegisterContentVideoViewContextDelegate()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    :cond_0
    return-void
.end method

.method public static unRegisterContentVideoViewFocusDelegate()V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/ContentVideoView;->focusDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    :cond_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public destroyNativeView()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->destroyContentVideoView()V

    :cond_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentBufferPercentage:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->nativeGetCurrentPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->nativeGetDurationInMilliSeconds(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    :goto_1
    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    goto :goto_0
.end method

.method public hideMediaController()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->nativeIsPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(I)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iput p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x54

    const/16 v7, 0x52

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq p2, v6, :cond_3

    const/16 v3, 0x18

    if-eq p2, v3, :cond_3

    const/16 v3, 0x19

    if-eq p2, v3, :cond_3

    const/16 v3, 0xa4

    if-eq p2, v3, :cond_3

    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    if-eq p2, v7, :cond_3

    if-eq p2, v8, :cond_3

    const/4 v3, 0x6

    if-eq p2, v3, :cond_3

    const/16 v3, 0xef

    if-eq p2, v3, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "ContentVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKey. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    iput v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mBackKeyRepeatCnt:I

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_a

    const/16 v2, 0x4f

    if-eq p2, v2, :cond_1

    const/16 v2, 0x55

    if-ne p2, v2, :cond_5

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->pause()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->start()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    :cond_5
    const/16 v2, 0x7e

    if-ne p2, v2, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->start()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    :cond_6
    const/16 v2, 0x56

    if-eq p2, v2, :cond_7

    const/16 v2, 0x7f

    if-ne p2, v2, :cond_8

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->pause()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->toggleMediaControlsVisiblity()V

    :cond_9
    invoke-super {p0, p2, p3}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_a
    if-ne p2, v6, :cond_c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_c

    iget v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v3, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mBackKeyRepeatCnt:I

    if-nez v3, :cond_b

    const-string v3, "ContentVideoView"

    const-string v4, "BackKey Pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v3, v2}, Lorg/chromium/content/browser/ContentVideoView;->nativeExitFullscreen(IZ)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->destroyNativeView()V

    :cond_b
    iput v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mBackKeyRepeatCnt:I

    goto :goto_1

    :cond_c
    if-eq p2, v7, :cond_2

    if-ne p2, v8, :cond_9

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->destroyContentVideoView()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMediaPlayerError(I)V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v4, -0x1

    const-string v1, "ContentVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTML5Media]OnMediaPlayerError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lorg/chromium/content/browser/ContentVideoView;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lorg/chromium/content/browser/ContentVideoView;->mErrorButton:Ljava/lang/String;

    new-instance v3, Lorg/chromium/content/browser/ContentVideoView$2;

    invoke-direct {v3, p0}, Lorg/chromium/content/browser/ContentVideoView$2;-><init>(Lorg/chromium/content/browser/ContentVideoView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->mUnknownErrorText:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPlaybackComplete()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->onCompletion()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->isMultiWindowRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSizeChanged(II)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iput p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    iput p2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    iget v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public openVideo()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iput v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    new-instance v0, Lorg/chromium/content/browser/ContentVideoView$FullScreenMediaController;

    sget-object v1, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/content/browser/ContentVideoView$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->nativeUpdateMediaMetadata(I)V

    :cond_0
    iput v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentBufferPercentage:I

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    iget-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->nativeSetSurface(ILandroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->nativePause(I)V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    :cond_1
    return-void
.end method

.method public removeMediaController()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    :cond_0
    return-void
.end method

.method public removeSurfaceView()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    iput-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0, p1}, Lorg/chromium/content/browser/ContentVideoView;->nativeSeekTo(II)V

    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->attachMediaController()V

    return-void
.end method

.method showContentVideoView()V
    .locals 5

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->isMultiWindowRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {p0, v2, v0}, Lorg/chromium/content/browser/ContentVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lorg/chromium/content/browser/ContentVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2, v4}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setZOrderOnTop(Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2, p0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2, p0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2, v4}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setFocusable(Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2, v4}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->requestFocus()Z

    return-void

    :cond_1
    new-instance v2, Lorg/chromium/content/browser/ContentVideoView$ProgressView;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/ContentVideoView$ProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    goto :goto_0
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->nativePlay(I)V

    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->isMultiWindowRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setFocusable(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "ContentVideoView"

    const-string v1, "[HTML5Media]surfaceCreated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->openVideo()V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->setFullscreen(Z)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ContentVideoView"

    const-string v1, "[HTML5Media]surfaceDestroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentVideoView;->pauseWebkitTimer(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    invoke-direct {p0, v0, v2}, Lorg/chromium/content/browser/ContentVideoView;->nativeExitFullscreen(IZ)V

    :goto_0
    sput-boolean v2, Lorg/chromium/content/browser/ContentVideoView;->isMultiVideoPlaying:Z

    iput v2, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentVideoView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->removeMediaController()V

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/content/browser/ContentVideoView;->sDelegate:Lorg/chromium/content/browser/ContentVideoViewContextDelegate;

    invoke-interface {v0, v2}, Lorg/chromium/content/browser/ContentVideoViewContextDelegate;->setFullscreen(Z)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->nativeExitFullscreen(IZ)V

    goto :goto_0
.end method

.method public updateMediaMetadata(IIIZZZ)V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput p3, p0, Lorg/chromium/content/browser/ContentVideoView;->mDuration:I

    iput-boolean p4, p0, Lorg/chromium/content/browser/ContentVideoView;->mCanPause:Z

    iput-boolean p5, p0, Lorg/chromium/content/browser/ContentVideoView;->mCanSeekBack:Z

    iput-boolean p6, p0, Lorg/chromium/content/browser/ContentVideoView;->mCanSeekForward:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mCurrentState:I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/ContentVideoView;->onVideoSizeChanged(II)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentVideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1
.end method
