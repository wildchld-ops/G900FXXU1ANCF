.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->addTabView(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

.field final synthetic val$rl:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->val$rl:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_0
    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->val$rl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabGlowView()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_4

    :cond_2
    :goto_1
    return v5

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->val$rl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getCurrentTabGlowView()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-boolean v5, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mActionDownOnView:Z

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-boolean v4, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mActionDownOnView:Z

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinched()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->val$rl:Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->initialSelectedViewX:I

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->isPinchZoomAnimationInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->val$rl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$20;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPinchUtil:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->setFirstTouchedViewIndex(I)V

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
