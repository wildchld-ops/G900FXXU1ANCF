.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;
.super Ljava/lang/Object;
.source "MultiTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->addTabView(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

.field final synthetic val$rl:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mFirstCreated:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v1, v2, :cond_7

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_UPDATE_VIEW_ONDELETION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSelectedViewTabId:I

    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ZOOM_OUT_DELETE_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v1

    if-gt v1, v4, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :goto_3
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$19;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->deleteTab(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    const-string v1, "RETURN"

    const-string v2, "Close Button Animation is already in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
