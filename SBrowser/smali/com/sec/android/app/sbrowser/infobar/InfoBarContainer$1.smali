.class Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;
.super Ljava/lang/Object;
.source "InfoBarContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeAndFadeNextInfoBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

.field final synthetic val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

.field final synthetic val$infoBarView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/view/View;Lcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->val$infoBarView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mViewClippedToBounds:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$102(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->val$infoBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->val$infoBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->val$infoBar:Lcom/sec/android/app/sbrowser/infobar/WebAlert;

    #calls: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->broadcast(ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$200(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;ILcom/sec/android/app/sbrowser/infobar/WebAlert;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$300(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$300(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #getter for: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$300(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentView;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    #calls: Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->processPendingInfoBars()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->access$400(Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;)V

    return-void
.end method
