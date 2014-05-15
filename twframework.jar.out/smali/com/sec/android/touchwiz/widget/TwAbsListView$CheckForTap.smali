.class final Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v4, :cond_5

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$702(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwAbsListView;->unregisterIRListener()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAirScrollUnregisterByLongClick:Z
    invoke-static {v4, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1002(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_1
.end method
