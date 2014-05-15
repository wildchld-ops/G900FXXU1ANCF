.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$202(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Z)Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->misClickDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$202(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Z)Z

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v2, v3, :cond_6

    :cond_3
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v2

    if-ne v2, v6, :cond_7

    const/16 v0, 0x7d0

    :cond_4
    :goto_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->minScrollDistance:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->minScrollDistance:I

    add-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_FLING_DELETE_ANIM:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->pointToPosition(FF)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->pointToPosition(FF)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->flingDelete(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v2

    if-ne v2, v5, :cond_4

    const/16 v0, 0xbb8

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2
.end method

.method public onHandTouched(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onHandTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitSweep(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onInitSweep(I)Z

    move-result v0

    return v0
.end method

.method public onLiftTapEBook(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLiftTapEBook(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLiftTapPointer(Landroid/view/MotionEvent;F)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLiftTapPointer(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->misClickDisabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    const/4 v4, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->m_shouldNotDragTab:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$202(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Z)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->minScrollDistance:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->minScrollDistance:I

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->scrollY:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mActionDownOnView:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->pointToPosition(FF)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mScrollView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    sget-object v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    #setter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$102(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v3, p3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

    mul-float v2, v3, v4

    const/high16 v3, 0x3f80

    div-float v4, v0, v2

    sub-float v1, v3, v4

    const v3, 0x3dcccccd

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    const v1, 0x3dcccccd

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$MyGestureDetector;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedView:Landroid/view/View;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSweepDown(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSweepDown(I)Z

    move-result v0

    return v0
.end method

.method public onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method
