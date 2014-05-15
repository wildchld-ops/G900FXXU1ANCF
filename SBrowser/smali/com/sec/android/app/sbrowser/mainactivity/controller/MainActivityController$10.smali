.class Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;
.super Ljava/lang/Object;
.source "MainActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->addShortcut(Lorg/chromium/content/browser/ContentView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

.field final synthetic val$localChromeView:Lorg/chromium/content/browser/ContentView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->val$localChromeView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->IsTouchiconAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1700()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mNotificationForShortcutTouchicon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1600(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    #getter for: Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->access$1800(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/samsung/chrome/browser/SbrTouchiconController;->RequestTouchicon(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$10;->this$0:Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->createShortcutWithTouchicon()V

    goto :goto_0
.end method
