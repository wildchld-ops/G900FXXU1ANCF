.class Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;
.super Ljava/lang/Object;
.source "QuickAccessGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getNumColumns()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;->setColumnCount(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$000(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->isKeyboardShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;->onClearToolBarFocus()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deletePosition:I
    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$202(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$302(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$402(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$500(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->pointToPosition(II)I

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v7, v8, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$702(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;J)J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1, v9}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$900(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$802(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->showPlaceHolderView(Landroid/view/View;)V
    invoke-static {v0, v9}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1000(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1102(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1200(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)J

    move-result-wide v1

    #calls: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1300(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;J)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1400(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    #getter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1400(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->access$1502(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
