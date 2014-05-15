.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;
.super Ljava/lang/Object;
.source "QuickAccessUtilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrTouchiconController;->IsTouchiconAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "QuickAccessUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickAccessUtilityController createPinTouchIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterTouchIconFlag:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$600(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$000()[[I

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterTouchIconFlag:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$602(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlIconProcessPending:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1102(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrTouchiconController;->RequestTouchicon(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$5;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->url_passed:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addTouchIconToPinnedDB(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$400(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V

    goto :goto_0
.end method
