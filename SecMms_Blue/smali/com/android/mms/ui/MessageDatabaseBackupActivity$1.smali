.class Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;
.super Landroid/os/Handler;
.source "MessageDatabaseBackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageDatabaseBackupActivity;->createEventHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v1, "file_create_faile"

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const-string v6, "message backup started... waiting.."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Backup"

    const-string v7, "Message DB Backup Started"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Backup"

    const-string v7, "Message DB Backup Completed"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #setter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    :cond_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_2

    const-string v2, "MESSAGE DB BACKUP COMPLETE!! (%s)"

    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v5, "filename"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v5, "MessageDatabaseBackupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    goto :goto_0

    :cond_2
    const-string v2, "MESSAGE DB BACKUP FAIL!! (%s)"

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const-string v6, "message restore started... waiting.."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Restore"

    const-string v7, "Message DB Restore Started"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    const-string v6, "Message DB Restore"

    const-string v7, "Message DB Restore Completed"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #getter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    #setter for: Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    invoke-static {v5, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_5

    const-string v2, "MESSAGE DB RESTORE COMPLETE!! (%s)"

    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v5, "filename"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const-string v5, "MessageDatabaseBackupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result filename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;->this$0:Lcom/android/mms/ui/MessageDatabaseBackupActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "MESSAGE DB RESTORE FAIL!! (%s)"

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
