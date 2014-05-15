.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;
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

.field final synthetic val$isIncognito:Z

.field final synthetic val$listIndex:I

.field final synthetic val$rl:Landroid/widget/LinearLayout;

.field final synthetic val$tabid:I

.field final synthetic val$thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;ZIILandroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$isIncognito:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$tabid:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$listIndex:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$thumbnail:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$rl:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    #getter for: Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mOperationState:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;)Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;->NONE:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabPerspIntroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->IsIntroExitInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabBrowserUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$isIncognito:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$tabid:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentBrowserTabById(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$listIndex:I

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mCurrentViewingTabIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->saveReturnTabPos()V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_UX_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$tabid:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$isIncognito:Z

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->sBrowserToolbarView(ZIZ)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_OUTRO_ENABLED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabOutroUtils:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$rl:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->val$tabid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;->animateTempImage(Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mSuperView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->mMultiTabResources:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmWwindowManagertoolBar()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment$12;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabFragment;->switchToSBM(II)V

    goto :goto_0
.end method
