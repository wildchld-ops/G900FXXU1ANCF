.class Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;
.super Ljava/lang/Object;
.source "ToolbarPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->initializeUiElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getKeyMetaState()Z

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$200(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v4, 0x7f0a0003

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x3d

    if-ne p2, v2, :cond_3

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isQuickLaunchPageSet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->mMainActivityUIController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;->access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;)Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->requestFocusToMostVisitedLayout()V

    move v2, v3

    :goto_0
    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolbarBaseUi;->mToolbarControl:Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
