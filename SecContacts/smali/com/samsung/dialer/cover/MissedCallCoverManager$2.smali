.class Lcom/samsung/dialer/cover/MissedCallCoverManager$2;
.super Ljava/lang/Object;
.source "MissedCallCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/cover/MissedCallCoverManager;->startMissedCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/cover/MissedCallCoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$2;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "MissedCallCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$2;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
