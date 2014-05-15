.class Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler$1;
.super Landroid/os/Handler;
.source "SBrowserEventBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x8

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getInstance()Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;

    move-result-object v5

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->mIsDestroyed:Z
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler$1;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message sent after notification center destroyed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->getNotificationTypeMap()Ljava/util/Map;
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->access$300()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
