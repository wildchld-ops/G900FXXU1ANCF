.class Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;
.super Ljava/lang/Object;
.source "QuickAccessGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentScrollState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2300(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleMobileCellScroll()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2400(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2500(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsEnded()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)J

    move-result-wide v1

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1300(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleCellSwitch()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)J

    move-result-wide v3

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1300(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;J)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleCellSwitch()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const/4 v1, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentFirstVisibleItem:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentVisibleItemCount:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousVisibleItemCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1200(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->checkAndHandleFirstVisibleCellChange()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->checkAndHandleLastVisibleCellChange()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousVisibleItemCount:I

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousFirstVisibleItem:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->mCurrentScrollState:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I
    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$2202(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;->isScrollCompleted()V

    return-void
.end method
