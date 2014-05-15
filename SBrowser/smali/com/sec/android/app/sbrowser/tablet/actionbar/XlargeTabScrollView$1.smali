.class Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;
.super Ljava/lang/Object;
.source "XlargeTabScrollView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$100()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$300(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$300(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$100()I

    move-result v1

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$002(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$400()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$200()I

    move-result v2

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$002(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$200()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mFlingRunnable:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$300(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;

    move-result-object v0

    neg-float v2, p3

    float-to-int v2, v2

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$FlingRunnable;->startUsingVelocity(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mSelected:I
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1100(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$100()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1200()I

    move-result v5

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$002(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMoveTouchedXFrom:F
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1302(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;F)F

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mTabMovePressedTabX:F
    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1402(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;F)F

    move v1, v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1200()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v6, v1, 0x1

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->spreadTabButtonsOnBothSide(II)V
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1500(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;II)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$100()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$400()I

    move-result v4

    #setter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$002(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)I

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$400()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #getter for: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->mScrollViewState:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;)I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$200()I

    move-result v4

    if-ne v3, v4, :cond_3

    :cond_1
    cmpl-float v3, p3, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpg-float v3, p3, v6

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;
    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$500(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMaxX()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    neg-float v4, p3

    const/4 v5, 0x1

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->changeTranslation(IFZ)F
    invoke-static {v3, v1, v4, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$600(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IFZ)F

    move-result v2

    cmpg-float v3, p3, v6

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    add-int/lit8 v4, v1, 0x1

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pushTabButtonsOnRight(IF)V
    invoke-static {v3, v4, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$700(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    add-int/lit8 v4, v1, -0x1

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnLeft(IF)V
    invoke-static {v3, v4, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$800(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V

    :cond_3
    :goto_1
    const/4 v3, 0x0

    return v3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getTabButton(I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;
    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$500(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;I)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTranslationX()F

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getMinX()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    add-int/lit8 v4, v1, -0x1

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pushTabButtonsOnLeft(IF)V
    invoke-static {v3, v4, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$900(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView$1;->this$0:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    add-int/lit8 v4, v1, 0x1

    #calls: Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->pullTabButtonsOnRight(IF)V
    invoke-static {v3, v4, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->access$1000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;IF)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
