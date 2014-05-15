.class Lorg/chromium/ui/gfx/SurfaceTextureListener;
.super Ljava/lang/Object;
.source "SurfaceTextureListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "gfx"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeSurfaceTextureListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/ui/gfx/SurfaceTextureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/gfx/SurfaceTextureListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/gfx/SurfaceTextureListener;->mNativeSurfaceTextureListener:I

    sget-boolean v0, Lorg/chromium/ui/gfx/SurfaceTextureListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lorg/chromium/ui/gfx/SurfaceTextureListener;->mNativeSurfaceTextureListener:I

    return-void
.end method

.method private static create(I)Lorg/chromium/ui/gfx/SurfaceTextureListener;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/ui/gfx/SurfaceTextureListener;

    invoke-direct {v0, p0}, Lorg/chromium/ui/gfx/SurfaceTextureListener;-><init>(I)V

    return-object v0
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeFrameAvailable(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/chromium/ui/gfx/SurfaceTextureListener;->mNativeSurfaceTextureListener:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/SurfaceTextureListener;->nativeDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/gfx/SurfaceTextureListener;->mNativeSurfaceTextureListener:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/SurfaceTextureListener;->nativeFrameAvailable(I)V

    return-void
.end method
