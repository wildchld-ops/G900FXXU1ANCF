.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;
.super Ljava/lang/Object;
.source "MultiTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mFirstCreated:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_INTRO:Z

    if-nez v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->access$400(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getIntroLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCloseButtonViewID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_UPDATE_VIEW_ONDELETION:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

    int-to-long v5, v5

    invoke-virtual {v4, v7, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getId()I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    :goto_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v0, v4, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    sget v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ZOOM_OUT_DELETE_ANIMATION_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-gt v4, v7, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v4, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    :cond_5
    :goto_3
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v8}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :goto_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v7, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_6
    :goto_5
    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackgroundViewID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x3c

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v4

    if-gt v4, v7, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->deleteTab(Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->setmSelectedView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const v5, 0x3ecccccd

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->delAnimation(F)V

    goto/16 :goto_3

    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mMultiTabAnimations:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v4, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->deleteTab(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mChildList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget v6, v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mSelectedViewTabId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_5

    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity$25;->val$rl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "RETURN"

    const-string v5, "Close Button Animation is already in progress"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
