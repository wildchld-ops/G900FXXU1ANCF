.class Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field private mPermanentlyIgnoreDetectorEvents:Z

.field private mPinchEventSent:Z

.field private mTemporarilyIgnoreDetectorEvents:Z

.field final synthetic this$0:Lorg/chromium/content/browser/ZoomManager;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/ZoomManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPermanentlyIgnoreDetectorEvents:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mTemporarilyIgnoreDetectorEvents:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ZoomManager;Lorg/chromium/content/browser/ZoomManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;-><init>(Lorg/chromium/content/browser/ZoomManager;)V

    return-void
.end method

.method private ignoreDetectorEvents()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPermanentlyIgnoreDetectorEvents:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mTemporarilyIgnoreDetectorEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getPermanentlyIgnoreDetectorEvents()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPermanentlyIgnoreDetectorEvents:Z

    return v0
.end method

.method public isPanningOnly(Landroid/view/ScaleGestureDetector;)Z
    .locals 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusX:F
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$000(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v5

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusY:F
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$100(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v6

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mFocusX:F
    invoke-static {v10, v11}, Lorg/chromium/content/browser/ZoomManager;->access$002(Lorg/chromium/content/browser/ZoomManager;F)F

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mFocusY:F
    invoke-static {v10, v11}, Lorg/chromium/content/browser/ZoomManager;->access$102(Lorg/chromium/content/browser/ZoomManager;F)F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$200(Lorg/chromium/content/browser/ZoomManager;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v10, v11, v12}, Lorg/chromium/content/browser/ZoomManager;->access$202(Lorg/chromium/content/browser/ZoomManager;J)J

    :cond_0
    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$200(Lorg/chromium/content/browser/ZoomManager;)J

    move-result-wide v10

    const-wide/16 v12, 0x32

    add-long/2addr v10, v12

    cmp-long v10, v0, v10

    if-gez v10, :cond_1

    move v7, v9

    :goto_0
    return v7

    :cond_1
    cmpl-float v10, v5, v8

    if-nez v10, :cond_2

    cmpl-float v10, v6, v8

    if-nez v10, :cond_2

    move v4, v8

    :goto_1
    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$300(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    move-result-object v10

    #calls: Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v10, v4}, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->access$400(Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;F)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v11

    sub-float v2, v10, v11

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F
    invoke-static {v11}, Lorg/chromium/content/browser/ZoomManager;->access$500(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v11

    add-float v3, v10, v11

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$300(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    move-result-object v10

    #calls: Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->access$600(Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;)F

    move-result v10

    cmpl-float v10, v10, v3

    if-lez v10, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_5

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$708(Lorg/chromium/content/browser/ZoomManager;)I

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$700(Lorg/chromium/content/browser/ZoomManager;)I

    move-result v10

    rem-int/lit8 v10, v10, 0x3

    if-nez v10, :cond_4

    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F
    invoke-static {v10, v8}, Lorg/chromium/content/browser/ZoomManager;->access$502(Lorg/chromium/content/browser/ZoomManager;F)F

    iget-object v8, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I
    invoke-static {v8, v9}, Lorg/chromium/content/browser/ZoomManager;->access$702(Lorg/chromium/content/browser/ZoomManager;I)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusX:F
    invoke-static {v10}, Lorg/chromium/content/browser/ZoomManager;->access$000(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v10

    sub-float/2addr v10, v5

    iget-object v11, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusX:F
    invoke-static {v11}, Lorg/chromium/content/browser/ZoomManager;->access$000(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v11

    sub-float/2addr v11, v5

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusY:F
    invoke-static {v11}, Lorg/chromium/content/browser/ZoomManager;->access$100(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v11

    sub-float/2addr v11, v6

    iget-object v12, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusY:F
    invoke-static {v12}, Lorg/chromium/content/browser/ZoomManager;->access$100(Lorg/chromium/content/browser/ZoomManager;)F

    move-result v12

    sub-float/2addr v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v10}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    goto :goto_1

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    invoke-static {v8, v3}, Lorg/chromium/content/browser/ZoomManager;->access$516(Lorg/chromium/content/browser/ZoomManager;F)F

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mAccumulatedSpan:F
    invoke-static {v10, v8}, Lorg/chromium/content/browser/ZoomManager;->access$502(Lorg/chromium/content/browser/ZoomManager;F)F

    iget-object v8, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I
    invoke-static {v8, v9}, Lorg/chromium/content/browser/ZoomManager;->access$702(Lorg/chromium/content/browser/ZoomManager;I)I

    goto/16 :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v12, 0x1

    const-string v1, "ZM.onScale()"

    invoke-static {v1}, Lorg/chromium/content/common/TraceEvent;->instant(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->ignoreDetectorEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->isPanningOnly(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    invoke-static {v1}, Lorg/chromium/content/browser/ZoomManager;->access$300(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    move-result-object v1

    #calls: Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v1}, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->access$900(Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v1}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->blockScrollEvents(Z)V

    move v0, v12

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$300(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->access$900(Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/chromium/content/browser/ContentViewGestureHandler;->blockScrollEvents(Z)V

    iget-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPinchEventSent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBegin(JII)V

    iput-boolean v12, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPinchEventSent:Z

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v12, v0, :cond_3

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mSbrTiltListener:Lorg/samsung/content/sbrowser/SbrTiltListener;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$1000(Lorg/chromium/content/browser/ZoomManager;)Lorg/samsung/content/sbrowser/SbrTiltListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrTiltListener;->handleTiltZoomScale(F)F

    move-result v5

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBy(JIIF)V

    :goto_1
    move v0, v12

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    float-to-int v9, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    float-to-int v10, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchBy(JIIF)V

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->ignoreDetectorEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPinchEventSent:Z

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v2}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setIgnoreSingleTap(Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    const-wide/16 v3, 0x0

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v2, v3, v4}, Lorg/chromium/content/browser/ZoomManager;->access$202(Lorg/chromium/content/browser/ZoomManager;J)J

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mFocusMovementQueue:Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;
    invoke-static {v2}, Lorg/chromium/content/browser/ZoomManager;->access$300(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;

    move-result-object v2

    #calls: Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v2}, Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;->access$900(Lorg/chromium/content/browser/ZoomManager$FocusMovementQueue;)V

    iget-object v2, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mSpanCount:I
    invoke-static {v2, v0}, Lorg/chromium/content/browser/ZoomManager;->access$702(Lorg/chromium/content/browser/ZoomManager;I)I

    move v0, v1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPinchEventSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    #getter for: Lorg/chromium/content/browser/ZoomManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;
    invoke-static {v0}, Lorg/chromium/content/browser/ZoomManager;->access$800(Lorg/chromium/content/browser/ZoomManager;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->pinchEnd(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPinchEventSent:Z

    iget-object v0, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->this$0:Lorg/chromium/content/browser/ZoomManager;

    const-wide/16 v1, 0x0

    #setter for: Lorg/chromium/content/browser/ZoomManager;->mStartTimePannigCheck:J
    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/ZoomManager;->access$202(Lorg/chromium/content/browser/ZoomManager;J)J

    goto :goto_0
.end method

.method setPermanentlyIgnoreDetectorEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mPermanentlyIgnoreDetectorEvents:Z

    return-void
.end method

.method setTemporarilyIgnoreDetectorEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ZoomManager$ScaleGestureListener;->mTemporarilyIgnoreDetectorEvents:Z

    return-void
.end method
