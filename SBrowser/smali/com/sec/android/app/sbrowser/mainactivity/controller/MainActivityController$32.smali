.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBrowserAllowedByDPM()Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5700(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #calls: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->isBrowserAllowedBySharedPreference()Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c01a6

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_1
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v6, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mConecttedDock:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5902(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStartByDock()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #setter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mConecttedDock:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$5902(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$32;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getSmartScrollHandler()Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollHandler;->onStartByDock()V

    goto :goto_0
.end method
