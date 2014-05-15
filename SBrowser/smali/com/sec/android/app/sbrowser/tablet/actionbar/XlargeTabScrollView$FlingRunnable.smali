.class Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;
.super Ljava/lang/Object;
.source "XlargeTabScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mE0:Landroid/view/MotionEvent;

.field private mE1:Landroid/view/MotionEvent;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingX:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingY:I

    return-void
.end method

.method private endFling()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v6, v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingX:I

    sub-int v0, v6, v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1600(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mE0:Landroid/view/MotionEvent;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mE1:Landroid/view/MotionEvent;

    neg-int v9, v0

    int-to-float v9, v9

    neg-int v10, v1

    int-to-float v10, v10

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$200()I

    move-result v7

    if-ne v6, v7, :cond_1

    iput v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingX:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingY:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->endFling()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$200()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1700()I

    move-result v7

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$002(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)I

    goto :goto_0
.end method

.method public startUsingVelocity(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V
    .locals 9

    const v6, 0x7fffffff

    const/4 v5, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mE0:Landroid/view/MotionEvent;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mE1:Landroid/view/MotionEvent;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->startCommon()V

    if-gez p3, :cond_1

    move v1, v6

    :goto_1
    if-gez p4, :cond_2

    move v2, v6

    :goto_2
    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingX:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p3

    move v4, p4

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->endFling()V

    return-void
.end method
