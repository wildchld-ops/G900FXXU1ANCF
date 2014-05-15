.class Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier$1;
.super Landroid/os/Handler;
.source "SBrowserTabSyncNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->tabSyncCompleted()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;->access$000(Lcom/sec/android/app/sbrowser/provider/SBrowserTabSyncNotifier;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method
