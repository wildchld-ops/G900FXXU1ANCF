.class Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "TabListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/TabListWrapper;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field tabId:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tabId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->tabId:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "incognito"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->tabId:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$000(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->tabId:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;-><init>(IZLcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$100(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tabId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->tabId:I

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$100(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$100(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->tabId:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;->this$0:Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    #getter for: Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->access$100(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x1c -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x68 -> :sswitch_2
    .end sparse-switch
.end method
