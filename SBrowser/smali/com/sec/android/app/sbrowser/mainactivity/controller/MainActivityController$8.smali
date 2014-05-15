.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutTouchicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1700()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutTouchicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCurrentView()Lorg/chromium/content/browser/ContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/samsung/chrome/browser/SbrTouchiconController;->IsTouchiconAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createShortcutWithTouchicon()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;Lorg/chromium/content/browser/ContentView;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->hideKeyBoardAndRunThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method
