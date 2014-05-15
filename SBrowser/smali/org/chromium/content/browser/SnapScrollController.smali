.class Lorg/chromium/content/browser/SnapScrollController;
.super Ljava/lang/Object;
.source "SnapScrollController.java"


# static fields
.field private static final SNAP_BOUND:I = 0x10

.field private static final SNAP_HORIZ:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_VERT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChannelDistance:F

.field private mDistanceX:F

.field private mDistanceY:F

.field private mFirstTouchX:I

.field private mFirstTouchY:I

.field private mSnapBound:I

.field private mSnapScrollMode:I

.field private mZoomManager:Lorg/chromium/content/browser/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/content/browser/SnapScrollController;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/SnapScrollController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ZoomManager;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4180

    iput v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchX:I

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchY:I

    iput v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iput v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    const/16 v0, 0x10

    iput v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapBound:I

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/SnapScrollController;->calculateChannelDistance(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/content/browser/SnapScrollController;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    return-void
.end method

.method private calculateChannelDistance(Landroid/content/Context;)V
    .locals 11

    const/high16 v10, 0x4000

    const/high16 v9, 0x4180

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapBound:I

    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v5

    iget v7, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4008

    cmpg-double v3, v1, v3

    if-gez v3, :cond_2

    iput v9, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v3, v3, v10

    if-lez v3, :cond_5

    iget v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    mul-float/2addr v3, v10

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-wide/high16 v3, 0x4014

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    const/high16 v3, 0x41b0

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    goto :goto_0

    :cond_3
    const-wide/high16 v3, 0x401c

    cmpg-double v3, v1, v3

    if-gez v3, :cond_4

    const/high16 v3, 0x41e0

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    goto :goto_0

    :cond_4
    const/high16 v3, 0x4208

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    goto :goto_0

    :cond_5
    iget v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    iget v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_1

    iput v9, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    goto :goto_1
.end method


# virtual methods
.method isSnapHorizontal()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSnapVertical()Z
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSnappingScrolls()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetSnapScrollMode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    return-void
.end method

.method setSnapScrollingMode(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lorg/chromium/content/browser/SnapScrollController;->TAG:Ljava/lang/String;

    const-string v3, "setSnapScrollingMode case-default no-op"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchY:I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ZoomManager;->isScaleGestureDetectionInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapBound:I

    if-le v0, v2, :cond_1

    iget v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapBound:I

    if-ge v1, v2, :cond_1

    iput v6, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapBound:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapBound:I

    if-le v1, v2, :cond_0

    iput v7, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_3

    if-ge v1, v4, :cond_3

    iput v6, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    goto :goto_0

    :cond_3
    if-ge v0, v4, :cond_0

    if-le v1, v4, :cond_0

    iput v7, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    goto :goto_0

    :pswitch_2
    iput v5, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchX:I

    iput v5, p0, Lorg/chromium/content/browser/SnapScrollController;->mFirstTouchY:I

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateSnapScrollMode(FF)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    iget v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iget v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iget v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iput v3, p0, Lorg/chromium/content/browser/SnapScrollController;->mSnapScrollMode:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    iget v1, p0, Lorg/chromium/content/browser/SnapScrollController;->mChannelDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceX:F

    iput v2, p0, Lorg/chromium/content/browser/SnapScrollController;->mDistanceY:F

    goto :goto_0
.end method
