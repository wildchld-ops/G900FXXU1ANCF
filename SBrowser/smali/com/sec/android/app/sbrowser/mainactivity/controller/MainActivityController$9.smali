.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutFavicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2000()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutFavicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$9;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createShortcutWithFavicon()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method
