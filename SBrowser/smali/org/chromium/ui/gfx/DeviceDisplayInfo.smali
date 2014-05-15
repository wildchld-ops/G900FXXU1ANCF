.class public Lorg/chromium/ui/gfx/DeviceDisplayInfo;
.super Ljava/lang/Object;
.source "DeviceDisplayInfo.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "gfx"
.end annotation


# instance fields
.field private mWinManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mWinManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    invoke-direct {v0, p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mWinManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method private getPixelFormat()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBitsPerComponent()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x5

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPixelFormat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    move v1, v2

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getBitsPerPixel()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPixelFormat()I

    move-result v0

    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    iget v2, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    return v2
.end method

.method public getDIPScale()D
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getDisplayHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getRefreshRate()D
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    float-to-double v0, v2

    const-wide v2, 0x404e800000000000L

    cmpl-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x403e

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    return-wide v0
.end method
