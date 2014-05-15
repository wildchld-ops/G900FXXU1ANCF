.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;
.super Ljava/lang/Object;
.source "QuickAccessUtilityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createFavIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "QuickAccessUtilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickAccessUtilityController createFavIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterFavIconFlag:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1400(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$000()[[I

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterFavIconFlag:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1402(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addFavIconToPinnedDB(Ljava/lang/String;)V

    goto :goto_0
.end method
