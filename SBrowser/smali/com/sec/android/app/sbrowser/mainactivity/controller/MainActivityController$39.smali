.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;
.super Landroid/content/BroadcastReceiver;
.source "MainActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAB_SWITCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getTabBar()Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getTabBar()Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getTabBar()Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$39;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mUi:Lcom/sec/android/app/sbrowser/common/UI;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getTabBar()Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->createTab(Landroid/view/View;)V

    :cond_0
    return-void
.end method
