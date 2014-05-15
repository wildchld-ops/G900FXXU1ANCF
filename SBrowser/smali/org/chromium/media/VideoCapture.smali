.class public Lorg/chromium/media/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCapture$ChromiumCameraInfo;,
        Lorg/chromium/media/VideoCapture$CaptureCapability;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final NUM_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoCapture"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFacing:I

.field private mCameraOrientation:I

.field private mContext:Landroid/content/Context;

.field mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

.field private mDeviceOrientation:I

.field private mExpectedFrameSize:I

.field private mGlTextures:[I

.field private mId:I

.field private mIsRunning:Z

.field private mNativeVideoCaptureDeviceAndroid:I

.field private mPixelFormat:I

.field public mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    const v0, 0x32315659

    iput v0, p0, Lorg/chromium/media/VideoCapture;->mPixelFormat:I

    iput-object v2, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lorg/chromium/media/VideoCapture;->mIsRunning:Z

    iput v1, p0, Lorg/chromium/media/VideoCapture;->mExpectedFrameSize:I

    iput v1, p0, Lorg/chromium/media/VideoCapture;->mId:I

    iput v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:I

    iput-object v2, p0, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    iput-object v2, p0, Lorg/chromium/media/VideoCapture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput v1, p0, Lorg/chromium/media/VideoCapture;->mCameraOrientation:I

    iput v1, p0, Lorg/chromium/media/VideoCapture;->mCameraFacing:I

    iput v1, p0, Lorg/chromium/media/VideoCapture;->mDeviceOrientation:I

    iput-object v2, p0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    iput-object p1, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    iput p2, p0, Lorg/chromium/media/VideoCapture;->mId:I

    iput p3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:I

    return-void
.end method

.method public static createVideoCapture(Landroid/content/Context;II)Lorg/chromium/media/VideoCapture;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/VideoCapture;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native nativeOnFrameAvailable(I[BIIZZ)V
.end method


# virtual methods
.method public allocate(III)Z
    .locals 26
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "allocate: requested width="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", height="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", frameRate="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/media/VideoCapture;->mCameraOrientation:I

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/media/VideoCapture;->mCameraFacing:I

    invoke-direct/range {p0 .. p0}, Lorg/chromium/media/VideoCapture;->getDeviceOrientation()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/media/VideoCapture;->mDeviceOrientation:I

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "allocate: device orientation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mDeviceOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", camera orientation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mCameraOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", facing="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mCameraFacing:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_1

    :cond_0
    const-string v23, "VideoCapture"

    const-string v24, "allocate: no fps range found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v23, 0x0

    :goto_0
    return v23

    :catch_0
    move-exception v7

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RuntimeException: allocate:Camera.open: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception allocate:Camera.open: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    move/from16 v0, p3

    mul-int/lit16 v12, v0, 0x3e8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [I

    move-object/from16 v0, v23

    check-cast v0, [I

    move-object v11, v0

    const/16 v23, 0x0

    aget v23, v11, v23

    move/from16 v0, v23

    if-gt v0, v12, :cond_2

    const/16 v23, 0x1

    aget v23, v11, v23

    move/from16 v0, v23

    if-gt v12, v0, :cond_2

    const/4 v8, 0x1

    const/16 v23, 0x0

    aget v10, v11, v23

    const/16 v23, 0x1

    aget v9, v11, v23

    :cond_3
    if-nez v8, :cond_4

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "allocate: fps "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not supported"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v23, Lorg/chromium/media/VideoCapture$CaptureCapability;

    invoke-direct/range {v23 .. v23}, Lorg/chromium/media/VideoCapture$CaptureCapability;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    move-object/from16 v23, v0

    move/from16 v0, p3

    move-object/from16 v1, v23

    iput v0, v1, Lorg/chromium/media/VideoCapture$CaptureCapability;->mDesiredFps:I

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v16

    const v20, 0x7fffffff

    move/from16 v19, p1

    move/from16 v18, p2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    sub-int v23, v23, p1

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    sub-int v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    add-int v6, v23, v24

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "allocate: support resolution ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "), diff="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v20

    if-ge v6, v0, :cond_5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    rem-int/lit8 v23, v23, 0x20

    if-nez v23, :cond_5

    move/from16 v20, v6

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    goto :goto_1

    :cond_6
    const v23, 0x7fffffff

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const-string v23, "VideoCapture"

    const-string v24, "allocate: can not find a resolution whose width is multiple of 32"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    move-object/from16 v23, v0

    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Lorg/chromium/media/VideoCapture$CaptureCapability;->mWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    move-object/from16 v23, v0

    move/from16 v0, v18

    move-object/from16 v1, v23

    iput v0, v1, Lorg/chromium/media/VideoCapture$CaptureCapability;->mHeight:I

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "allocate: matched width="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", height="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mPixelFormat:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v9}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v23, 0x8d65

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v23, 0x8d65

    const/16 v24, 0x2801

    const v25, 0x46180400

    invoke-static/range {v23 .. v25}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v23, 0x8d65

    const/16 v24, 0x2800

    const v25, 0x46180400

    invoke-static/range {v23 .. v25}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v23, 0x8d65

    const/16 v24, 0x2802

    const v25, 0x812f

    invoke-static/range {v23 .. v25}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v23, 0x8d65

    const/16 v24, 0x2803

    const v25, 0x812f

    invoke-static/range {v23 .. v25}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    new-instance v23, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-direct/range {v23 .. v24}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCapture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    mul-int v23, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCapture;->mPixelFormat:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v24

    mul-int v23, v23, v24

    div-int/lit8 v3, v23, 0x8

    const/4 v13, 0x0

    :goto_2
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v13, v0, :cond_8

    new-array v4, v3, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iput v3, v0, Lorg/chromium/media/VideoCapture;->mExpectedFrameSize:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v23, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v7

    const-string v23, "VideoCapture"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "allocate: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method public deallocate()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->stopCapture()I

    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/media/VideoCapture;->mGlTextures:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deallocate: failed to deallocate camera, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/media/VideoCapture;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    array-length v2, p1

    iget v3, p0, Lorg/chromium/media/VideoCapture;->mExpectedFrameSize:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lorg/chromium/media/VideoCapture;->getDeviceOrientation()I

    move-result v4

    iget v2, p0, Lorg/chromium/media/VideoCapture;->mDeviceOrientation:I

    if-eq v4, v2, :cond_2

    iput v4, p0, Lorg/chromium/media/VideoCapture;->mDeviceOrientation:I

    const-string v2, "VideoCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewFrame: device orientation="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lorg/chromium/media/VideoCapture;->mDeviceOrientation:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", camera orientation="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lorg/chromium/media/VideoCapture;->mCameraOrientation:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lorg/chromium/media/VideoCapture;->mCameraFacing:I

    if-ne v2, v0, :cond_7

    iget v2, p0, Lorg/chromium/media/VideoCapture;->mCameraOrientation:I

    add-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x168

    rsub-int v2, v4, 0x168

    rem-int/lit16 v4, v2, 0x168

    const/16 v2, 0xb4

    if-eq v4, v2, :cond_3

    if-nez v4, :cond_5

    :cond_3
    move v6, v0

    :goto_1
    if-nez v6, :cond_6

    move v5, v0

    :goto_2
    iget v1, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:I

    iget v3, p0, Lorg/chromium/media/VideoCapture;->mExpectedFrameSize:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/media/VideoCapture;->nativeOnFrameAvailable(I[BIIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_5
    move v6, v1

    goto :goto_1

    :cond_6
    move v5, v1

    goto :goto_2

    :cond_7
    :try_start_2
    iget v0, p0, Lorg/chromium/media/VideoCapture;->mCameraOrientation:I

    sub-int/2addr v0, v4

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v4, v0, 0x168
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_8
    throw v0
.end method

.method public queryFrameRate()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    iget v0, v0, Lorg/chromium/media/VideoCapture$CaptureCapability;->mDesiredFps:I

    return v0
.end method

.method public queryHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    iget v0, v0, Lorg/chromium/media/VideoCapture$CaptureCapability;->mHeight:I

    return v0
.end method

.method public queryWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCurrentCapability:Lorg/chromium/media/VideoCapture$CaptureCapability;

    iget v0, v0, Lorg/chromium/media/VideoCapture$CaptureCapability;->mWidth:I

    return v0
.end method

.method public startCapture()I
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const-string v0, "VideoCapture"

    const-string v1, "startCapture: camera is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/media/VideoCapture;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/chromium/media/VideoCapture;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopCapture()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const-string v0, "VideoCapture"

    const-string v1, "stopCapture: camera is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCapture;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/media/VideoCapture;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCapture;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
