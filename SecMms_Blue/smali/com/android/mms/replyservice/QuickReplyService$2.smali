.class Lcom/android/mms/replyservice/QuickReplyService$2;
.super Ljava/lang/Object;
.source "QuickReplyService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/QuickReplyService;->initCustomLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/QuickReplyService;

.field final synthetic val$isSignatureEnabled:Z

.field final synthetic val$signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/QuickReplyService;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iput-boolean p2, p0, Lcom/android/mms/replyservice/QuickReplyService$2;->val$isSignatureEnabled:Z

    iput-object p3, p0, Lcom/android/mms/replyservice/QuickReplyService$2;->val$signature:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$900(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v13

    array-length v3, v13

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$1000(Lcom/android/mms/replyservice/QuickReplyService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v18

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$1000(Lcom/android/mms/replyservice/QuickReplyService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-static {v3, v0, v4}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    move-wide/from16 v0, v20

    #setter for: Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J
    invoke-static {v3, v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$1102(Lcom/android/mms/replyservice/QuickReplyService;J)J

    :cond_0
    const-string v6, ""

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->val$isSignatureEnabled:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->val$signature:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->val$signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableDelaySending(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #calls: Lcom/android/mms/replyservice/QuickReplyService;->getDelayedDeliveryTime()J
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$1200(Lcom/android/mms/replyservice/QuickReplyService;)J

    move-result-wide v7

    const-string v3, "Mms/QuickReplyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mMsgAddr:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/replyservice/QuickReplyService;->access$1000(Lcom/android/mms/replyservice/QuickReplyService;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    const/4 v12, 0x2

    invoke-virtual/range {v2 .. v12}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZII)J

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/android/mms/replyservice/QuickReplyService;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v3, v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$1300(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #calls: Lcom/android/mms/replyservice/QuickReplyService;->sendMarkAsReadIntent()V
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$1400(Lcom/android/mms/replyservice/QuickReplyService;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;
    invoke-static {v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    #calls: Lcom/android/mms/replyservice/QuickReplyService;->setPopupSlideAnimation(Landroid/view/View;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/replyservice/QuickReplyService;->access$200(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/View;Z)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_3
    new-instance v11, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J

    move-result-wide v15

    move-object v14, v6

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J

    move-result-wide v3

    invoke-interface {v11, v3, v4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J
    invoke-static {v5}, Lcom/android/mms/replyservice/QuickReplyService;->access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J

    move-result-wide v14

    invoke-virtual {v3, v4, v14, v15}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v17

    const-string v3, "Mms/QuickReplyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send SMS message, threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/replyservice/QuickReplyService$2;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    #getter for: Lcom/android/mms/replyservice/QuickReplyService;->mThreadId:J
    invoke-static {v5}, Lcom/android/mms/replyservice/QuickReplyService;->access$1100(Lcom/android/mms/replyservice/QuickReplyService;)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
