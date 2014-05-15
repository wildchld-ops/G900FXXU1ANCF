.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitTabManagerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

.field final synthetic val$isIncognito:Z

.field final synthetic val$tabid:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->val$isIncognito:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->val$tabid:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->val$isIncognito:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->val$tabid:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentBrowserTabById(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->finishActivty()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    invoke-interface {v0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->sBrowserToolbarView(ZIZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    invoke-interface {v0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->sBrowserToolbarView(ZIZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
