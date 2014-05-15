.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;
.super Ljava/lang/Object;
.source "ToolBarUITranslations.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/ui/IContentViewScrollOrFlingDirectionOperationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->attachCurrentTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkForViewPortPage(IIF)V
    .locals 0

    return-void
.end method

.method public clearInfoBarView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsInfoBarShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$202(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    return-void
.end method

.method public displayToolBar()V
    .locals 0

    return-void
.end method

.method public hideOrShowBasedOnScroll(FZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1502(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->dismissPopupMenu()V

    :cond_0
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_1

    const/high16 v0, 0x4310

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isBrowserInternalURLScheme()Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ToolBarUITranslations"

    const-string v1, "HIDEURL  hideOrShowBasedOnScroll isBrowserInternalURLScheme true, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->getIsKeyBoardOrDropDownVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "ToolBarUITranslations"

    const-string v1, " HIDEURL hideOrShowBasedOnScroll IME / Drop down is visible  return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    sub-float/2addr v1, p1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    cmpl-float v0, p1, v2

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isKeyboardShowed()Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_8
    cmpl-float v0, p1, v2

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1100(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isTabSwitchUsingAirBrowseGesture()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mActOnUpdateFrameInfoAfterAttchTab:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1502(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setTabSwipeWithAirBrowseGestureInProgress(Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isAssociatedToolBarStateDisplayed()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedToolBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1600(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    goto/16 :goto_4
.end method

.method public isUpdateFrameInfoReceived()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsUpdateFrameInfoReceived:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    return v0
.end method

.method public onFindOnPageUIRemoved()V
    .locals 0

    return-void
.end method

.method public onFindOnPageUIShown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    return-void
.end method

.method public onLoadProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageLoadFinish()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isKeyboardShowed()Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$800(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ToolBarUITranslations"

    const-string v2, " HIDEURL onPageLoadFinish keyboard is showing, returning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->isVoiceSearchInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ToolBarUITranslations"

    const-string v2, " HIDEURL onPageLoadFinish isVoiceSearchInProgress true, returning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->isSuggestionListShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ToolBarUITranslations"

    const-string v2, " HIDEURL onPageLoadFinish isSuggestionListShown true, returning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$900(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getImeAdapterObserver()Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ImeAdapterObserver;->getIsKeyBoardOrDropDownVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ToolBarUITranslations"

    const-string v2, " HIDEURL  onPageLoadFinish IME / Drop down is visible  return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isBrowserInternalURLScheme()Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ToolBarUITranslations"

    const-string v2, "HIDEURL - onPageLoadFinish isBrowserInternalURLScheme return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getMainActivityController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->isPopupMenuDismissed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->hideToolBarUsingTopControl()V

    :cond_5
    const-string v1, "ToolBarUITranslations"

    const-string v2, "HIDEURL - onPageLoadFinish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPageLoadStart(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurPageURL:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$102(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsInfoBarShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$202(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->resetVoiceSearchInProgressFlag()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #calls: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isBrowserInternalURLScheme()Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$400(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mControlContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$500(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsToolbarVisible:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$602(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mCurrentTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$700(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewGestureHandler()Lorg/chromium/content/browser/ContentViewGestureHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewGestureHandler;->setJavaScriptsConsumingGesture(Z)V

    goto :goto_0
.end method

.method public onScrollDown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->hideToolBarUsingTopControl()V

    :cond_0
    return-void
.end method

.method public onScrollUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->showToolBarUsingTopControl()V

    :cond_0
    return-void
.end method

.method public setInforBarView(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsInfoBarShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$202(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1100(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1200()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFixedBootomBarHeight:F
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mFrameRate:I
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1100(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1200()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mInfoBarContainer:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1000(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;)Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->setTranslationY(F)V

    goto :goto_0
.end method

.method public setIsHorizontalScrollValue(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsHorizontalScroll:Z
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    return-void
.end method

.method public setLastUpdateFrameInfoReceived(F)V
    .locals 0

    return-void
.end method

.method public setUpdateFrameInfoReceived(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    #setter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->mIsUpdateFrameInfoReceived:Z
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->access$1402(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;Z)Z

    return-void
.end method
