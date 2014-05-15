.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->updateData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$callUris:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    #calls: Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsImplForUri(Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    invoke-static {v1, v2}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "CallDetailActivity"

    const-string v2, "invalid URI starting call details"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    return-void
.end method

.method public onPostExecute([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V
    .locals 28

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    aget-object v14, p1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    iget-object v0, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->photoUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_3
    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f080069

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #calls: Lcom/android/dialer/CallDetailActivity;->configureActionBar()V
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)V

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mRcsPinner:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->pinFillDataAtTheEnd(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v20

    iget-object v2, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v0, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    :goto_2
    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    iget-object v4, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->formattedNumber:Ljava/lang/CharSequence;

    iget-object v5, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v20

    invoke-direct {v15, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableAssistDialing()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "origin"

    const-string v3, "from_dialer"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v2, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "call_from_sec"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    new-instance v13, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0e021f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v4, 0x7f0e021b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v2, v15, v3}, Lcom/android/dialer/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>CALL_RECORD_NUMBER:<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "></GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v5, v5, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    const-string v6, ","

    const-string v7, "P"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v7, "W"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v4, 0x7f0e021c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_8
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "videocall"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "call_from_sec"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0e021b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "sms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v4, v4, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    const-string v5, ","

    const-string v6, "P"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const-string v6, "W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "com.android.mms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0e021c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v2}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget v3, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    #calls: Lcom/android/dialer/CallDetailActivity;->configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;I)V
    invoke-static {v2, v13, v3}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$ViewEntry;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-wide v3, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    #calls: Lcom/android/dialer/CallDetailActivity;->queryContact(J)V
    invoke-static {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;J)V

    iget-object v2, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactUri:Landroid/net/Uri;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableYellowPage()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v4, v4, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/dialer/calllog/YellowPageCallerid;->getYellowPageNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detail.name from yp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f080067

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/samsung/contacts/widget/StrokeTextView;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f020057

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/widget/StrokeTextView;->setUseStroke(Z)V

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mCallDetailImpl:Lcom/samsung/dialer/impl/CallDetailImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mContactNButtonsLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/dialer/impl/CallDetailImpl;->setCustomDetailInfo([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Landroid/widget/RelativeLayout;Lcom/android/dialer/calllog/PhoneNumberHelper;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mIsScoverFeatureEnabled:Z
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1300(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/dialer/cover/MissedCallCoverManager;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mMissedCallCoverMgr:Lcom/samsung/dialer/cover/MissedCallCoverManager;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Lcom/samsung/dialer/cover/MissedCallCoverManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v3}, Lcom/android/dialer/CallDetailActivity;->isResumed()Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mJobTitle:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/dialer/CallDetailActivity;->access$1500(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mCompany:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/dialer/CallDetailActivity;->access$1600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/dialer/cover/MissedCallCoverManager;->updateMissedCallDialog(ZLcom/android/dialer/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    aget-object v2, p1, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-wide v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1702(Lcom/android/dialer/CallDetailActivity;Z)Z

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_d
    iget-object v0, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_11
    iget-object v0, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const-string v2, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v22, :cond_13

    iget v2, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_12

    iget v2, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->logType:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_13

    :cond_12
    iget-object v2, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    sget-object v3, Lcom/android/dialer/PhoneCallDetailsHelper;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v22, "-5"

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    iget-object v3, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #calls: Lcom/android/dialer/CallDetailActivity;->disableCallButton()V
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "GATE"

    const-string v3, "<GATE-M>CALL_RECORD_NUMBER:<No number></GATE-M>"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/dialer/CallDetailActivity;->mIsPostExcuteDone:Z
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1802(Lcom/android/dialer/CallDetailActivity;Z)Z

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v2}, Lcom/samsung/dialer/util/DirectCallingManager;->isSensorReadyForDirectCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/util/DirectCallingManager;->setPhoneNumber(Ljava/lang/String;)V

    sget-object v2, Lcom/android/dialer/CallDetailActivity;->mDirectCalling:Lcom/samsung/dialer/util/DirectCallingManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/util/DirectCallingManager;->setName(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->invalidateOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v4, 0x7f08005d

    invoke-virtual {v2, v4}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    #setter for: Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;
    invoke-static {v3, v2}, Lcom/android/dialer/CallDetailActivity;->access$1902(Lcom/android/dialer/CallDetailActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    new-instance v23, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f02027c

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2000(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    new-instance v2, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v4, v4, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v7, 0x7f08005e

    invoke-virtual {v5, v7}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;ZLandroid/view/View;)V

    #setter for: Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v8, v2}, Lcom/android/dialer/CallDetailActivity;->access$2002(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$2000(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mHistoryList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mSystemUIBackgroundView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$2100(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/dialer/BackScrollManager;->bind(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;Landroid/view/View;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mIsSavedContact:Z
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1700(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mLogId:Ljava/lang/String;

    if-eqz v2, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget v3, v14, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    int-to-long v3, v3

    const/4 v5, 0x0

    move-object/from16 v0, v21

    #calls: Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;JZ)V
    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/dialer/CallDetailActivity;->access$300(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;JZ)V

    :cond_19
    const-string v2, "CallDetailActivity"

    const-string v3, "CallDetailActivity load end"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/contacts/ContactsApplication;->callDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v3, "CallDetailActivity"

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/ContactsPerformance;->getDBQueryEnd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2000(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->updateData([Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2000(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    #getter for: Lcom/android/dialer/CallDetailActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2000(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->notifyDataSetChanged()V

    monitor-exit v3

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
