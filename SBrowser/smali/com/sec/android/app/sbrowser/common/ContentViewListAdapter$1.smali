.class Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "ContentViewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "accountName"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "authToken"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "success"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "result"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->handleAutoLoginResult(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v5, v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4100(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    #calls: Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->handleAutoLoginDisabled()V
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->access$4200(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
