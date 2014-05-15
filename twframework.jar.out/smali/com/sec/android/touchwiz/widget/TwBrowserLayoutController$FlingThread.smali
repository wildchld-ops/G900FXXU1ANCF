.class Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;
.super Ljava/lang/Object;
.source "TwBrowserLayoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingThread"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$800(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #calls: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$900(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->refreshCaching()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1002(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z
    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1102(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    sub-int v0, v5, v4

    if-lez v0, :cond_4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionScroll(I)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$800(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    div-int/lit8 v6, v0, 0x5

    #calls: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionOverScroll(I)V
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)V

    :cond_2
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z

    move-result v5

    if-nez v5, :cond_5

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I
    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1302(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)I

    goto :goto_2
.end method

.method public startUsingDistance(II)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startCommon()V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    move v2, v1

    move v4, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 15

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$000(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startCommon()V

    const v6, 0x7fffffff

    if-gez p1, :cond_4

    move v1, v6

    :goto_1
    const/4 v12, 0x0

    const/4 v9, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #calls: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->judgeFocusIndex()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #calls: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfView(Landroid/view/View;)I
    invoke-static {v0, v9}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Landroid/view/View;)I

    move-result v13

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #calls: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfGallery()I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$400(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v14

    sub-int v12, v13, v14

    if-lez p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v2, v12

    int-to-float v2, v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$502(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;F)F

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$700(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v2

    add-int v11, v0, v2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)F

    move-result v0

    int-to-float v2, v11

    div-float/2addr v0, v2

    float-to-int v10, v0

    if-nez v10, :cond_2

    add-int/lit8 v10, v10, 0x1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    mul-int v2, v10, v11

    add-int/2addr v2, v12

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    if-gez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v2, v12

    sub-int/2addr v2, v6

    int-to-float v2, v2

    #setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$502(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;F)F

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$700(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v2

    add-int v11, v0, v2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)F

    move-result v0

    int-to-float v2, v11

    div-float/2addr v0, v2

    float-to-int v10, v0

    if-nez v10, :cond_6

    add-int/lit8 v10, v10, -0x1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    mul-int v2, v10, v11

    add-int/2addr v2, v12

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    return-void
.end method
