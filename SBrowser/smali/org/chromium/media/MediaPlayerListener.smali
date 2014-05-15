.class Lorg/chromium/media/MediaPlayerListener;
.super Ljava/lang/Object;
.source "MediaPlayerListener.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final MEDIA_ERROR_DECODE:I = 0x1

.field private static final MEDIA_ERROR_FORMAT:I = 0x0

.field private static final MEDIA_ERROR_INVALID_CODE:I = 0x3

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field private static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0x2

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field private static final TAG:Ljava/lang/String; = "MediaPlayerListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNativeMediaPlayerListener:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    iput p1, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    iput-object p2, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static create(ILandroid/content/Context;Landroid/media/MediaPlayer;)Lorg/chromium/media/MediaPlayerListener;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/MediaPlayerListener;

    invoke-direct {v0, p0, p1}, Lorg/chromium/media/MediaPlayerListener;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-object v0
.end method

.method private native nativeOnBufferingUpdate(II)V
.end method

.method private native nativeOnMediaError(II)V
.end method

.method private native nativeOnMediaInterrupted(I)V
.end method

.method private native nativeOnMediaPrepared(I)V
.end method

.method private native nativeOnPlaybackComplete(I)V
.end method

.method private native nativeOnSeekComplete(I)V
.end method

.method private native nativeOnVideoSizeChanged(III)V
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "MediaPlayerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTML5Media]onAudioFocusChange. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaInterrupted(I)V

    :cond_1
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v0, p2}, Lorg/chromium/media/MediaPlayerListener;->nativeOnBufferingUpdate(II)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnPlaybackComplete(I)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x3

    :goto_0
    iget v1, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v1, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaError(II)V

    const/4 v1, 0x1

    return v1

    :sswitch_0
    sparse-switch p3, :sswitch_data_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3ef -> :sswitch_1
        -0x6e -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnMediaPrepared(I)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v0}, Lorg/chromium/media/MediaPlayerListener;->nativeOnSeekComplete(I)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget v0, p0, Lorg/chromium/media/MediaPlayerListener;->mNativeMediaPlayerListener:I

    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/media/MediaPlayerListener;->nativeOnVideoSizeChanged(III)V

    return-void
.end method

.method public releaseResources()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v1, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public requestAudioFocus()Z
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setWakeLock(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x2000000a

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public showAudiofocusFailMessage()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaPlayerListener;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0211

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
