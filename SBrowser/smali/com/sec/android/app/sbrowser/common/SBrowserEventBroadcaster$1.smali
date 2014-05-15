.class Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$1;
.super Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;
.source "SBrowserEventBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/broadcaster/Broadcaster;->broadcast(Landroid/os/Message;Z)V

    goto :goto_0
.end method
