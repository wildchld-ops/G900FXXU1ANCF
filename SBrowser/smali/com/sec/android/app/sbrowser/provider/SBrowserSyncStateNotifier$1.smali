.class Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;
.super Landroid/os/Handler;
.source "SBrowserSyncStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->syncStarted()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$000(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->tabSyncStarted()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$100(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->bookmarkSyncStarted()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$200(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->savedPagesSyncStarted()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$300(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->syncCompleted(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$400(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->tabSyncCompleted(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$500(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->bookmarkSyncCompleted(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->access$600(Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->savedPagesSyncCompleted(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
