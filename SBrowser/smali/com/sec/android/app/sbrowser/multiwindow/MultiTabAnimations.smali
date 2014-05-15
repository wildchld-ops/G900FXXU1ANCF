.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;
.super Ljava/lang/Object;
.source "MultiTabAnimations.java"


# static fields
.field private static final LANDSCAPE_REMOVE_TAB_THRESHOLD_VELOCITY:I = 0x7d0

.field private static final PORTRAIT_REMOVE_TAB_THRESHOLD_VELOCITY:I = 0xbb8


# instance fields
.field DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

.field DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

.field LAYOUT_TRANSITION_ANIMATION_DURATION:I

.field LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_DURATION:I

.field LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

.field listener:Landroid/animation/Animator$AnimatorListener;

.field public mCloseButtonDeletion:Z

.field public mDragNDropTabDeletion:Z

.field mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

.field mTransition:Landroid/animation/LayoutTransition;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mDragNDropTabDeletion:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const v0, 0x3f0ccccd

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->DRAG_DELETE_THRESHOLD_ALPHA_ANIM_PERCENTAGE:F

    sget v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_LAYOUT_ANIMATION_DURATION:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_ANIMATION_DURATION:I

    sget v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ZOOM_OUT_DELETE_ANIMATION_DURATION:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_DURATION:I

    const-wide/high16 v0, 0x3fe0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_DURATION:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    return-void
.end method


# virtual methods
.method public checkDeletion()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteCloseButtonPressedTab(Z)V

    :cond_0
    return-void
.end method

.method public deleteCloseButtonPressedTab(Z)V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedViewTabId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmTabInfos()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmChildList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmChildList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmChildList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmChildList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeIncognitoTab(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->disableBackButton()V

    if-eqz p1, :cond_3

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$4;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$4;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;I)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$4;->start()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->closeNormalTab(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->deleteThumbnail(I)V

    goto :goto_0
.end method

.method public deleteDragNDropTab(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedViewTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->disableBackButton()V

    if-eqz p1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$3;->start()V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setTabDragNDropInProgress(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->deleteThumbnail(I)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteCloseButtonPressedTab(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method

.method public enterStackAnimation(Ljava/lang/Boolean;IILandroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_ALPHA_ANIMATION:Z

    if-eqz v1, :cond_1

    if-eq p2, p3, :cond_0

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ALPHA_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p4, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CHROMEVIEW_ENTERSTACK_ANIMATION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-ge p2, p3, :cond_2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ENTER_STACK_ANIMATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    if-le p2, p3, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x4000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ENTER_STACK_ANIMATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x4000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_ENTER_STACK_ANIMATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_ENTERSTACK_TRANSLATE_ANIMATION:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const v2, 0x3f99999a

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$7;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public exitTabMannagerAnimation()V
    .locals 13

    const-wide/16 v11, 0x12c

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$8;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v10

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flingDelete(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V
    .locals 14

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    mul-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v11, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->FLING_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v10, v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    sget v6, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_HORIZONTAL_FLING_DELETE_TAB_ANIMATION_DURATION:I

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x0

    sget-boolean v10, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmScrollView()Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    :goto_1
    const/4 v0, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const/16 v0, 0x7d0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int v10, v8, v10

    mul-int/2addr v6, v10

    :cond_2
    :goto_2
    const/4 v10, 0x0

    cmpl-float v10, p3, v10

    if-lez v10, :cond_6

    const/4 v5, 0x1

    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v3

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    const/4 v10, -0x1

    if-ne v5, v10, :cond_7

    int-to-float v10, v8

    const v11, -0x41b33333

    mul-float v7, v10, v11

    sub-float v4, v7, v3

    int-to-float v10, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v8

    const v13, 0x3f666666

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v6, v10

    :cond_3
    :goto_4
    int-to-float v10, v6

    int-to-float v11, v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v6, v10

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabThumbnailViewID()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    div-int/lit8 v10, v6, 0x2

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    div-int/lit8 v10, v6, 0x3

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    const-string v11, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v4, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v10, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$5;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$5;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v8

    goto/16 :goto_1

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    sget v10, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_HORIZONTAL_FLING_DELETE_TAB_ANIMATION_DURATION:I

    div-int/lit8 v6, v10, 0x2

    const/16 v0, 0xbb8

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3f4ccccd

    mul-float v7, v10, v11

    goto/16 :goto_2

    :cond_6
    const/4 v5, -0x1

    goto/16 :goto_3

    :cond_7
    int-to-float v10, v8

    const v11, 0x3f666666

    mul-float v7, v10, v11

    sub-float v4, v7, v3

    int-to-float v10, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v8

    const v13, 0x3f666666

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v6, v10

    goto/16 :goto_4

    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    int-to-float v10, v5

    mul-float/2addr v10, v7

    sub-float v4, v10, v3

    int-to-float v10, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v7

    mul-float/2addr v10, v11

    float-to-int v6, v10

    goto/16 :goto_4

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method resetDragAnimation()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmOperationState()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DRAG_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->DRAG_DELETE_THRESHOLD_DISTANCE_PERCENTAGE:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->deleteTab(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmSelectedView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_HORIZONTAL_SCROLL_UNDISCARD_ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public setupCloseButtonViewRemovingAnimation()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    sget-boolean v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SCALEDOWN_DEL_ANIMATION:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v7

    const-string v8, "ScaleX"

    new-array v9, v11, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v7

    const-string v8, "ScaleY"

    new-array v9, v11, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v7, v11, [Landroid/animation/Animator;

    aput-object v3, v7, v12

    aput-object v4, v7, v13

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v14, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v14, v8}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, v14}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabViewWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v7

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v13, [F

    int-to-float v10, v6

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v7

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v11, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v7, v11, [Landroid/animation/Animator;

    aput-object v1, v7, v12

    aput-object v0, v7, v13

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method public setupLayoutTransition()V
    .locals 3

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_CLOSE_BUTTON_DELETION_ANIMATION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupCloseButtonViewRemovingAnimation()V

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_UPDATE_VIEW_ONDELETION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupUpdateViewsAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setupUpdateViewsAnimation()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->LAYOUT_TRANSITION_CHANGE_DISAPPEARING_ANIMATION_START_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->listener:Landroid/animation/Animator$AnimatorListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v3}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
