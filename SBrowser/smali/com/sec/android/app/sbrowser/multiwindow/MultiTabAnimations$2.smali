.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;
.super Ljava/lang/Object;
.source "MultiTabAnimations.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->setupUpdateViewsAnimation()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabCloseButtonViewID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iput-boolean v4, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mCloseButtonDeletion:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteCloseButtonPressedTab(Z)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMultiInstanceTabDragAndDropEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mDragNDropTabDeletion:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iput-boolean v4, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mDragNDropTabDeletion:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->deleteDragNDropTab(Z)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmNeedToResetOperationState(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->DND:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V

    :cond_0
    return-void
.end method
