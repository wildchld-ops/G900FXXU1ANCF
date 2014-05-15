.class Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirMotionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;-><init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {v1, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$500(Lcom/samsung/dialer/calllog/DirectCallingManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {v1, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->resume(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$600(Lcom/samsung/dialer/calllog/DirectCallingManager;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #calls: Lcom/samsung/dialer/calllog/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$700(Lcom/samsung/dialer/calllog/DirectCallingManager;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$800(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    #getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
    invoke-static {v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$800(Lcom/samsung/dialer/calllog/DirectCallingManager;)Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mAirMotionReceiver:Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;
    invoke-static {v1, v2}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$802(Lcom/samsung/dialer/calllog/DirectCallingManager;Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;)Lcom/samsung/dialer/calllog/DirectCallingManager$AirMotionReceiver;

    goto :goto_0
.end method
