.class Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SBrowserCVHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewScrollerGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$402(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInDoubleTap:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$400(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$602(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$702(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Landroid/view/MotionEvent;

    move-result-object v1

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$602(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mInLongPress:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$802(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$700(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v0, v9

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v2, v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$900()D

    move-result-wide v4

    mul-double v6, v2, v4

    cmpl-double v9, v0, v6

    if-gez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->checkForFastScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    invoke-static {v9, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$1000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Landroid/view/MotionEvent;

    move-result-object v10

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v9, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$602(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$1102(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;)Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v10, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDispatchEventsToChromeView:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$1202(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    const/4 v8, 0x1

    :cond_1
    if-nez v8, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$700(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v10, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollStarted:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$702(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mScrollDirection:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$1100(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;->DOWN:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ScrollDirection;

    if-eq v9, v10, :cond_2

    const/4 v9, 0x3

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserNotification(I)V

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    :cond_3
    const/4 v9, 0x1

    return v9
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Landroid/view/MotionEvent;

    move-result-object v1

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mDownEvent:Landroid/view/MotionEvent;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$602(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$ViewScrollerGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->propagateEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
