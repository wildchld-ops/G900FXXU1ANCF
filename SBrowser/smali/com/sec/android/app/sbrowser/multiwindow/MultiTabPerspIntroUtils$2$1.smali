.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

.field final synthetic val$isIncognito:Z

.field final synthetic val$tabid:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$isIncognito:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$tabid:I

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$isIncognito:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$tabid:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentBrowserTabById(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

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
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    invoke-interface {v1, v3, v4, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->sBrowserToolbarView(ZIZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_SBROWSER_TOOLBAR_ENABLE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$tabid:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadTitleBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$tabid:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadTitleBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$tabid:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadTitleBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getSbrowserToolBarId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$tabid:I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->val$isIncognito:Z

    invoke-interface {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->sBrowserToolbarView(ZIZ)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v2

    invoke-interface {v1, v3, v4, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->sBrowserToolbarView(ZIZ)V

    goto :goto_1
.end method
