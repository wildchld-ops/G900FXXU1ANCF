.class Lorg/chromium/content/browser/ContentViewGestureHandler$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ContentViewGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewGestureHandler;->initGestureDetectors(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

.field final synthetic val$scaledTouchSlop:I


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewGestureHandler;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    iput p2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->val$scaledTouchSlop:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isDistanceBetweenDownAndUpTooLong(FF)Z
    .locals 8

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1200(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v4

    sub-float/2addr v4, p1

    float-to-double v0, v4

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1300(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v4

    sub-float/2addr v4, p2

    float-to-double v2, v4

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mScaledTouchSlopSquare:I
    invoke-static {v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$3100(Lorg/chromium/content/browser/ContentViewGestureHandler;)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "ContentViewGestureHandler"

    const-string v1, "onDoubleTap called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendShowPressCancelIfNecessary(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v1, 0x0

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v0, v2, p1, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$702(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$802(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$902(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSeenFirstScrollEvent:Z
    invoke-static {v0, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1002(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/SnapScrollController;->resetSnapScrollMode()V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1202(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1302(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1402(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1502(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F
    invoke-static {v0, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1602(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F
    invoke-static {v0, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1702(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1800(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1902(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setPinchZoomGestureHandlingState(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setIsHorizontalScroll(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2600(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIsPointerDownCalled:Z
    invoke-static {v0, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2602(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    iget-boolean v0, v0, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCanBeScrolledDiagonally:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/SnapScrollController;->isSnappingScrolls()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/SnapScrollController;->isSnapHorizontal()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p4, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mContentViewScrollFlingListener:Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1800(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1900(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1900(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setIsScrollUp(Z)V

    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPrevRawY:F
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1902(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    float-to-int v5, p3

    float-to-int v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewGestureHandler;->fling(JIIII)V

    return v7

    :cond_3
    const/4 p3, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSbrContentViewUtils:Lorg/samsung/content/sbrowser/SbrContentViewUtils;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/samsung/content/sbrowser/SbrContentViewUtils;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/samsung/content/sbrowser/SbrContentViewUtils;->setIsScrollUp(Z)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mZoomManager:Lorg/chromium/content/browser/ZoomManager;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$3000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ZoomManager;->isScaleGestureDetectionInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendShowPressCancelIfNecessary(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v0, v1, p1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 19

    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->begin()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mPinchEndTime:D
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2100(Lorg/chromium/content/browser/ContentViewGestureHandler;)D

    move-result-wide v2

    sub-double v2, v9, v2

    const-wide/high16 v4, 0x4059

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mBlockScrollEvent:Z
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2200(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OnScroll() mBlockScrollEvent=TRUE RETURN from Scroll"

    invoke-static {v2}, Lorg/chromium/content/common/TraceEvent;->end(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSeenFirstScrollEvent:Z
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1000(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v3, 0x1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSeenFirstScrollEvent:Z
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1002(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    mul-float v2, p3, p3

    mul-float v3, p4, p4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide v15, 0x3f50624dd2f1a9fcL

    cmpl-double v2, v11, v15

    if-lez v2, :cond_2

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->val$scaledTouchSlop:I

    int-to-double v4, v4

    sub-double v4, v11, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double v17, v2, v11

    move/from16 v0, p3

    float-to-double v2, v0

    mul-double v2, v2, v17

    double-to-float v0, v2

    move/from16 p3, v0

    move/from16 v0, p4

    float-to-double v2, v0

    mul-double v2, v2, v17

    double-to-float v0, v2

    move/from16 p4, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    iget-boolean v2, v2, Lorg/chromium/content/browser/ContentViewGestureHandler;->mCanBeScrolledDiagonally:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;

    move-result-object v2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lorg/chromium/content/browser/SnapScrollController;->updateSnapScrollMode(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/SnapScrollController;->isSnappingScrolls()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mSnapScrollController:Lorg/chromium/content/browser/SnapScrollController;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1100(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/SnapScrollController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/SnapScrollController;->isSnapHorizontal()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 p4, 0x0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawX:F
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1202(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLastRawY:F
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1302(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1402(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1502(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$900(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastNotification(ILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/ContentViewGestureHandler;->sendShowPressCancelIfNecessary(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->endFling(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p1

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v2, v3, v0, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v3, 0x1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mNativeScrolling:Z
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$902(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventX:F
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1400(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v2

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventY:F
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1500(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v2

    float-to-int v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1600(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v2

    add-float v2, v2, p3

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1700(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v2

    add-float v2, v2, p4

    float-to-int v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1600(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v3

    add-float v3, v3, p3

    int-to-float v4, v13

    sub-float/2addr v3, v4

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorX:F
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1602(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1700(Lorg/chromium/content/browser/ContentViewGestureHandler;)F

    move-result v3

    add-float v3, v3, p4

    int-to-float v4, v14

    sub-float/2addr v3, v4

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mAccumulatedScrollErrorY:F
    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$1702(Lorg/chromium/content/browser/ContentViewGestureHandler;F)F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Distance X"

    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Distance Y"

    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    or-int v2, v13, v14

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v3, 0x6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v8}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v8

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendLastGestureForVSync(IJIILandroid/os/Bundle;)Z
    invoke-static/range {v2 .. v8}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2500(Lorg/chromium/content/browser/ContentViewGestureHandler;IJIILandroid/os/Bundle;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    iget-boolean v2, v2, Lorg/chromium/content/browser/ContentViewGestureHandler;->mSupportZoomControls:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$500(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->invokeZoomPicker()V

    :cond_6
    invoke-static {}, Lorg/chromium/content/common/TraceEvent;->end()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 p3, 0x0

    goto/16 :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v1, 0x1

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$702(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v0, v1, p1, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2700(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/LongPressDetector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/LongPressDetector;->isInLongPress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$800(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventDownTime:J

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ShowPress"

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$700(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v4

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v2, v3, p1, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->setClickXAndY(II)V
    invoke-static {v2, v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2900(Lorg/chromium/content/browser/ContentViewGestureHandler;II)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->isDistanceBetweenDownAndUpTooLong(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z
    invoke-static {v3, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$802(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$800(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mLongPressDetector:Lorg/chromium/content/browser/LongPressDetector;
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2700(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/LongPressDetector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/LongPressDetector;->isInLongPress()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2800()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/chromium/content/browser/ContentViewGestureHandler;->mEventDownTime:J

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v3, v4, p1, v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z
    invoke-static {v3, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$802(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    float-to-int v4, v0

    float-to-int v5, v1

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->setClickXAndY(II)V
    invoke-static {v3, v4, v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2900(Lorg/chromium/content/browser/ContentViewGestureHandler;II)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mMotionEventDelegate:Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$500(Lorg/chromium/content/browser/ContentViewGestureHandler;)Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler$MotionEventDelegate;->hasFixedPageScale()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ShowPress"

    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mShowPressIsCalled:Z
    invoke-static {v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$700(Lorg/chromium/content/browser/ContentViewGestureHandler;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    const/4 v4, 0x3

    iget-object v5, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #getter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mExtraParamBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2400(Lorg/chromium/content/browser/ContentViewGestureHandler;)Landroid/os/Bundle;

    move-result-object v5

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->sendMotionEventAsGesture(ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z
    invoke-static {v3, v4, p1, v5}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2300(Lorg/chromium/content/browser/ContentViewGestureHandler;ILandroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    #setter for: Lorg/chromium/content/browser/ContentViewGestureHandler;->mIgnoreSingleTap:Z
    invoke-static {v3, v2}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$802(Lorg/chromium/content/browser/ContentViewGestureHandler;Z)Z

    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    float-to-int v3, v0

    float-to-int v4, v1

    #calls: Lorg/chromium/content/browser/ContentViewGestureHandler;->setClickXAndY(II)V
    invoke-static {v2, v3, v4}, Lorg/chromium/content/browser/ContentViewGestureHandler;->access$2900(Lorg/chromium/content/browser/ContentViewGestureHandler;II)V

    :cond_4
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewGestureHandler$1;->this$0:Lorg/chromium/content/browser/ContentViewGestureHandler;

    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->triggerLongTapIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method
