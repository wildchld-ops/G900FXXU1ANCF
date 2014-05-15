.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;
.super Ljava/lang/Object;
.source "MultiTabAnimations.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

.field final synthetic val$thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->val$thumbnail:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->closeMenu()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setisClickDisabled(Z)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmTabInfos()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3, v5, v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->sBrowserToolbarView(ZIZ)V

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_OUTRO_ENABLED:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabOutroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->animateTempImage(Landroid/view/View;Landroid/view/View;I)V

    sget-boolean v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v3, Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentBrowserTabById(ZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentBrowserTabById(ZI)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6$2;->this$1:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations$6;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->mMultiTabActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->finishActivty()V

    goto :goto_0
.end method
