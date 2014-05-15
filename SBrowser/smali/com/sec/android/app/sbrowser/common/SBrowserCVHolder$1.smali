.class Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "SBrowserCVHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$002(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->handleFindInPage(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->enableTabSwiping(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$002(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->mFindToolbarShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->handleFindInPage(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->enableTabSwiping(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
