.class Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MissedCallCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/cover/MissedCallCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedCallCoverReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;


# direct methods
.method private constructor <init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;Lcom/samsung/dialer/cover/MissedCallCoverManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;-><init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MissedCallCoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MissedCallCoverReceiver, onReceive action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MissedCallCoverManager"

    const-string v2, "onReceive SCREEN_OFF_INTENT finish app"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$MissedCallCoverReceiver;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
