.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;
.super Ljava/lang/Object;
.source "MultiTabAnimations.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupCloseButtonViewRemovingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmOperationState()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DND:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isTabDragNDropInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteDragNDropTab(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteCloseButtonPressedTab(Z)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->updatePerspTabId()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->CLOSE_BUTTON_DELETE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_DRAG_N_DROP_DELETION_ANIMATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isTabDragNDropInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mDragNDropTabDeletion:Z

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getTabCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->disableOnlyBackButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    goto :goto_0
.end method
