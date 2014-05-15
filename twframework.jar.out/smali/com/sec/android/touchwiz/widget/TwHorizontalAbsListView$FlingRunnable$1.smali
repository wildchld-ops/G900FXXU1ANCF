.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mActivePointerId:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->access$1600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMaximumVelocity:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMinimumVelocity:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const-wide/16 v5, 0x28

    invoke-virtual {v4, p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v5, 0x3

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
