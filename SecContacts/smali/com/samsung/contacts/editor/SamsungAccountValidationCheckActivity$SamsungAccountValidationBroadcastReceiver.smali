.class public Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungAccountValidationCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungAccountValidationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    const-string v2, "com.msc.action.VALIDATION_CHECK_RESPONSE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "Get result of validation check"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    #getter for: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$100(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    #getter for: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$100(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    #getter for: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$100(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$102(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    const-string v2, "result_code"

    const/16 v3, -0x3e7

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    const-string v2, "validation_result"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "Validation is OK"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    #calls: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->writeValidationSamsungAccountToPreference()V
    invoke-static {v2}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$200(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    #calls: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->checkContactsSyncable()V
    invoke-static {v2}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$300(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "check_list"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/4 v13, 0x2

    const/4 v12, 0x4

    const/16 v10, 0x8

    const/16 v11, 0x10

    and-int/lit8 v2, v15, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "require Tnc Agreement"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    and-int/lit8 v2, v15, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "require Name Verification"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    and-int/lit8 v2, v15, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "require  E-mail Certificate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    and-int/lit8 v2, v15, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "need to fill out required fields"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-lez v15, :cond_1

    const-string v2, "REQUIRED_PROCESS_ACTION"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v2, "SamsungAccountValidationCheckActivity"

    const-string v3, "Request to validate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    const-string v2, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "SamsungAccountValidationCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get validation info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/common/model/AccountTypeManager;->getSamsungAccountsWithDataSet()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_8

    new-instance v8, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver$1;-><init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.osp.app.signin"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    #calls: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v2, v3}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$000(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const v3, 0x7f0e03a3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_9
    const-string v2, "error_message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "SamsungAccountValidationCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const v3, 0x7f0e03a3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$SamsungAccountValidationBroadcastReceiver;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v3, 0x0

    #calls: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v2, v3}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$000(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;I)V

    goto/16 :goto_0
.end method
