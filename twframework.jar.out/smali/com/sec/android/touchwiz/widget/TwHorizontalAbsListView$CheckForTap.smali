.class final Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsChildViewEnabled:Z
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$602(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)Z

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v4, :cond_6

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLongClickable()Z

    move-result v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_4

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$702(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->unregisterIRListener()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAirScrollUnregisterByLongClick:Z
    invoke-static {v4, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1002(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    goto :goto_1
.end method
