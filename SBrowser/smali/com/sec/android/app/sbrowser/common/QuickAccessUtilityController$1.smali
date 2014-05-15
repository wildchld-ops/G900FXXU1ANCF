.class Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "QuickAccessUtilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$000()[[I

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mTouchiconController:Lorg/samsung/chrome/browser/SbrTouchiconController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$300(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrTouchiconController;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/samsung/chrome/browser/SbrTouchiconController;->IsTouchiconAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addTouchIconToPinnedDB(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$400(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createFavIcon(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$500(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterTouchIconFlag:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$602(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedTouchIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$000()[[I

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mNotificationForPinnedFavIcon:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$800(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->addFavIconToPinnedDB(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->urlIndex:I
    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$902(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;I)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->tempbyte:[B
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1002(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;[B)[B

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlIconProcessPending:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1100(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->urlIndex:I
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$900(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1200(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v6, v2, v4}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->createPinTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->isUrlIconProcessPending:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1102(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #setter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mRegisterFavIconFlag:Z
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$1402(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController$1;->this$0:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    #getter for: Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->mSNotificationForPinnedFavIconURL:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;->access$700(Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
