.class Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChromiumCameraInfo"
.end annotation


# instance fields
.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private final mId:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mId:I

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget-object v0, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void
.end method

.method private static getAt(I)Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromiumCameraInfo"
    .end annotation

    new-instance v0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;

    invoke-direct {v0, p0}, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;-><init>(I)V

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromiumCameraInfo"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "front"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "back"

    goto :goto_0
.end method

.method private getId()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromiumCameraInfo"
    .end annotation

    iget v0, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mId:I

    return v0
.end method

.method private static getNumberOfCameras()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromiumCameraInfo"
    .end annotation

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method private getOrientation()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
        value = "ChromiumCameraInfo"
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method
