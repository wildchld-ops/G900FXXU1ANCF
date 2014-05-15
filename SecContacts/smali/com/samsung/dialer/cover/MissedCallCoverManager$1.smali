.class Lcom/samsung/dialer/cover/MissedCallCoverManager$1;
.super Ljava/lang/Object;
.source "MissedCallCoverManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/cover/MissedCallCoverManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "MissedCallCoverManager"

    const-string v1, "mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #setter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mCoverOpen:Z
    invoke-static {v0, v2}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$102(Lcom/samsung/dialer/cover/MissedCallCoverManager;Z)Z

    const-string v0, "MissedCallCoverManager"

    const-string v1, "onCoverStateChanged:SWITCH_STATE_COVER_OPEN  Dismiss Dialong"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->dismissMissedCallCover()V

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/dialer/CallDetailActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->updateCallDetailData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #setter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v0, v2}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$202(Lcom/samsung/dialer/cover/MissedCallCoverManager;Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$200(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MissedCallCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverStateListener SWITCH_STATE_COVER_CLOSE mInitCoverOpenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$200(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/dialer/CallDetailActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$000(Lcom/samsung/dialer/cover/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "MissedCallCoverManager"

    const-string v1, "mCoverStateListener SWITCH_STATE_COVER_CLOSE Show Dialong"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    #setter for: Lcom/samsung/dialer/cover/MissedCallCoverManager;->mInitCoverOpenState:Z
    invoke-static {v0, v2}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->access$202(Lcom/samsung/dialer/cover/MissedCallCoverManager;Z)Z

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCoverManager$1;->this$0:Lcom/samsung/dialer/cover/MissedCallCoverManager;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->showMissedCallDialog()V

    goto :goto_0
.end method
