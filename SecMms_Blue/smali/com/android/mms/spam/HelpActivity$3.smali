.class Lcom/android/mms/spam/HelpActivity$3;
.super Landroid/os/Handler;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-virtual {v1}, Lcom/android/mms/spam/HelpActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    #getter for: Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/spam/HelpActivity;->access$000(Lcom/android/mms/spam/HelpActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-virtual {v1, v2}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    :cond_0
    const-string v1, "Mms/HelpActivity"

    const-string v2, "Help Activity was already destroyed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "UpdateClient"

    const-string v2, "MSG_HIDE_CHECK_PROGRESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/spam/HelpActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-virtual {v1, v5}, Lcom/android/mms/spam/HelpActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/spam/HelpActivity;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/update/BinderUpdateInfo;

    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    #getter for: Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/spam/HelpActivity;->access$000(Lcom/android/mms/spam/HelpActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    const v4, 0x7f0c03db

    invoke-virtual {v3, v4}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    const v3, 0x7f0c03da

    invoke-virtual {v2, v3}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity$3;->this$0:Lcom/android/mms/spam/HelpActivity;

    const v3, 0x7f0c03de

    invoke-virtual {v2, v3}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
