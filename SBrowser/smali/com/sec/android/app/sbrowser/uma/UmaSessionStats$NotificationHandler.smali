.class Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "UmaSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;->this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;-><init>(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;->this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;

    #getter for: Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->access$100(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring notification: ChromeViewListAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats$NotificationHandler;->this$0:Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "tabId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->recordPageLoadStats(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;->access$300(Lcom/sec/android/app/sbrowser/uma/UmaSessionStats;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
