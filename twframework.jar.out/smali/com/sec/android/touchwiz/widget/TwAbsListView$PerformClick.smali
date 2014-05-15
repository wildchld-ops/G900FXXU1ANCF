.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v4, :cond_0

    if-eq v2, v7, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-eq v4, v8, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-ne v4, v8, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwPressItemListIndex:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v2, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v4

    if-ne v4, v8, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v2, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v2, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V

    goto/16 :goto_0
.end method
