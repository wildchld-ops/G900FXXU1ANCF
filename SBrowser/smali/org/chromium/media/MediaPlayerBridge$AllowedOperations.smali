.class Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;
.super Ljava/lang/Object;
.source "MediaPlayerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaPlayerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllowedOperations"
.end annotation


# instance fields
.field private final mCanPause:Z

.field private final mCanSeekBackward:Z

.field private final mCanSeekForward:Z


# direct methods
.method private constructor <init>(ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanPause:Z

    iput-boolean p2, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    iput-boolean p3, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZLorg/chromium/media/MediaPlayerBridge$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;-><init>(ZZZ)V

    return-void
.end method

.method private canPause()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AllowedOperations"
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanPause:Z

    return v0
.end method

.method private canSeekBackward()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AllowedOperations"
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    return v0
.end method

.method private canSeekForward()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "AllowedOperations"
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    return v0
.end method
