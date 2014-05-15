.class public Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeDeleteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeDeleteMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_0
    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {p1, p5}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z
    invoke-static {p1, p5}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    return-void

    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_1
    cmp-long v0, p2, p6

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isAnimationEnable()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    const-string v11, "ril.sms.gcf-mode"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "On"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "Mms/DeleteMessage"

    const-string v12, "GCF Mode On -  DB Count Reset"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    sput v11, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveDeleteAnimation:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveDeleteAnimation:Z

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsDeleteMode()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->dissmissDelProgressDlg()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$000(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    new-array v2, v11, [I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getSelectedIndex()I

    move-result v12

    aput v12, v2, v11

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v11

    new-array v2, v11, [I

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_7
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_6

    if-lez v3, :cond_8

    new-array v9, v3, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->hidecheckbox()V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    :cond_8
    if-nez v3, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    goto/16 :goto_0

    :cond_9
    const/16 v11, 0x15

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_b

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$100(Lcom/android/mms/ui/ComposeDeleteMessage;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v3, -0x1

    aput v6, v2, v11

    goto :goto_1

    :cond_b
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    return-void
.end method
