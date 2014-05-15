.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

.field final synthetic val$localChromeView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1900(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2000()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutFavicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$2100(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1900(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8$1;->this$1:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$8;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createShortcutWithFavicon()V

    goto :goto_0
.end method
