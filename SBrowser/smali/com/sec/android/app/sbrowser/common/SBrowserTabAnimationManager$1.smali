.class Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;
.super Ljava/lang/Object;
.source "SBrowserTabAnimationManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->getAnimListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "SBrowserTabAnimationManager"

    const-string v2, "tab(Create/Delete)Animation onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsCreateAnimation:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$002(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mSBrowserMainActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->setIsAirBrowseRunning(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->startSmartScrollHandler()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->mIsCreateAnimation:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->animLayout:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabAnimationManager;->currentView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SBrowserTabAnimationManager"

    const-string v1, "tab(Create/Delete)Animation onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
