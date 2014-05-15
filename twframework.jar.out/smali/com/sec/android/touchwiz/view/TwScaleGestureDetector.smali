.class public Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;
.super Ljava/lang/Object;
.source "TwScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;,
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "TwScaleGestureDetector"


# instance fields
.field private AREA_THRESHOLD:F

.field private FACTOR_THRESHOLD_MIN:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

.field private final mNULL:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mScaleFactor:F

.field private mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

.field private mUpdatePrevious:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mUpdatePrevious:Z

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    const v1, 0x45bb8000

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    const v1, 0x3dcccccd

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    new-instance v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;-><init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mNULL:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mNULL:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mNULL:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mNULL:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mNULL:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object p2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v0, 0x0

    new-instance v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;-><init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v5, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    :cond_3
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    add-float/2addr v5, v4

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v3, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput v4, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    iget v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v6, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v6, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    iget-object v5, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v6, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v6, v6, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v7, v7, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v8, v8, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    return-void
.end method

.method private getCurrentSignX()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    iget v2, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private getCurrentSignY()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    iget v2, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private getPreviousSignX()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    iget v2, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private getPreviousSignY()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    iget v2, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, -0x4080

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_1
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method public getAreaThreshold()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getCurrentSpanX()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSignX()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getCurrentSpanY()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSignY()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget-wide v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getFocusX()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getPreviousSpanX()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getPreviousSignX()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getPreviousSpanY()F
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget v1, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getPreviousSignY()F

    move-result v2

    mul-float/2addr v1, v2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 6

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    :goto_1
    iget-wide v2, v0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    iget-wide v4, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    sub-long/2addr v2, v4

    return-wide v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_1
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_3

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mGestureInProgress:Z

    const-string v1, "TwScaleGestureDetector"

    const-string v2, "TouchWiz::TwScaleGestureDetector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v2, v2, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    iget v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->FACTOR_THRESHOLD_MIN:F

    iget v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mScaleFactor:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v1, v1, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    iget-object v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget v2, v2, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    div-float/2addr v1, v2

    const v2, 0x3f2b851f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mUpdatePrevious:Z

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mListener:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrev:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStatePrevEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iget-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrent:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    iput-object v1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->mStateCurrentEnded:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->reset()V

    goto :goto_0
.end method

.method public setAreaRateThreshold(F)V
    .locals 0

    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->AREA_THRESHOLD:F

    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0

    return-void
.end method
