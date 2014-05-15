.class Lorg/chromium/media/VideoCapture$CaptureCapability;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureCapability"
.end annotation


# instance fields
.field public mDesiredFps:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/chromium/media/VideoCapture$CaptureCapability;->mWidth:I

    iput v0, p0, Lorg/chromium/media/VideoCapture$CaptureCapability;->mHeight:I

    iput v0, p0, Lorg/chromium/media/VideoCapture$CaptureCapability;->mDesiredFps:I

    return-void
.end method
