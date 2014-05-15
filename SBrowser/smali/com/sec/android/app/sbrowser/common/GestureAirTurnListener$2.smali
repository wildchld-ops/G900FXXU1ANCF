.class Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;
.super Ljava/lang/Object;
.source "GestureAirTurnListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->makeGoingAnimation(ZLandroid/widget/ImageView;I)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

.field final synthetic val$currentView:Landroid/widget/ImageView;

.field final synthetic val$tabNumber:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->val$currentView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->val$tabNumber:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->shouldHideUrlBArAfterAnimation:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$000(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$100(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$100(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$100(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityBaseUi;->getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->hideToolBarAfterAirBrowseAnimation()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #setter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mIsSwitchingTab:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$202(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->animLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->val$currentView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mSBrowserActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$100(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsAirBrowseRunning(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    #getter for: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$300(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->startSmartScrollHandler()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->this$0:Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener$2;->val$tabNumber:I

    #calls: Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->displayCurrentTabNumber(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;->access$400(Lcom/sec/android/app/sbrowser/common/GestureAirTurnListener;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
