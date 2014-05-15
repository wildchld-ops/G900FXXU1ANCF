.class Lcom/android/mms/cover/MissedMsgActivity$1;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iput-object p1, v4, Lcom/android/mms/cover/MissedMsgActivity;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v4, v4, Lcom/android/mms/cover/MissedMsgActivity;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-ne v4, v6, :cond_2

    const-string v4, "Mms/MissedMsgActivity"

    const-string v5, "Cover open!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$000()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mIsEnterConvList:Z
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$100(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$000()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mThreadId:J
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$300(Lcom/android/mms/cover/MissedMsgActivity;)J

    move-result-wide v0

    :goto_0
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->isCmas:Z
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$500(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c01cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mCmasType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$700(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/CMASViewer;->createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    :goto_2
    invoke-static {v6}, Lcom/android/mms/cover/MissedMsgActivity;->access$802(Z)Z

    const-string v4, "fromScover"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v4, v2}, Lcom/android/mms/cover/MissedMsgActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v4}, Lcom/android/mms/cover/MissedMsgActivity;->finish()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mLaunchThreadId:J
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$400(Lcom/android/mms/cover/MissedMsgActivity;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c01f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/cover/MissedMsgActivity$1;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    #getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
