.class public final Lcom/samsung/dialer/impl/DialpadImpl;
.super Ljava/lang/Object;
.source "DialpadImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field private mDialpadVariables:Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

.field private mFragmentView:Landroid/view/View;

.field private mVideocallButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mFragmentView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadVariables:Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab-pager-dialpad"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/impl/DialpadImpl;)Lcom/android/dialer/dialpad/DialpadFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-object v0
.end method


# virtual methods
.method public callChangeToSecPhoneDialog()V
    .locals 0

    return-void
.end method

.method public callVoicemailVariation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->callDefualtVoicemail()V

    return-void
.end method

.method public changeOnehandOperationLayout()V
    .locals 0

    return-void
.end method

.method public checkPrefixNumber(I)V
    .locals 0

    return-void
.end method

.method public customListener(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mFragmentView:Landroid/view/View;

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mVideocallButton:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mVideocallButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mVideocallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mVideocallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public dialNumber(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DialpadImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from Start Activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "app_package_name"

    const-string v4, "com.android.phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public directCallVoicemail()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doSpeedDialCall(IJ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, p2, p3, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialpadImpl;->dialNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCheckPrefixNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalLayoutText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Z
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCustomClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "DialpadImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onClick() event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    const-string v1, "0002"

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialpadImpl;->placeVideoCall()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080198
        :pswitch_0
    .end packed-switch
.end method

.method public placeIpCall()V
    .locals 0

    return-void
.end method

.method public placeVideoCall()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadVariables:Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

    invoke-virtual {v7}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->getDigits()Lcom/android/dialer/dialpad/EllipsisTextView;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadVariables:Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

    invoke-virtual {v7}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->getRecipients()Landroid/widget/EditText;

    move-result-object v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/android/dialer/dialpad/EllipsisTextView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadVariables:Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

    invoke-virtual {v7}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->getHandleDialButtonClickWithEmptyDigits()V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    const-string v8, "Error: Cannot dial.  Please provide conference recipients."

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v7, "DialpadImpl"

    const-string v8, "In placeVideoCall method"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "sip"

    invoke-static {v8, v6, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_2
    const-string v7, "videocall"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v7}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    const-string v7, "DialpadImpl"

    const-string v8, "Out placeVideoCall method"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    invoke-static {v8, v6, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v7, "DialpadImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception from Start Activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sec.android.app.popupuireceiver"

    const-string v8, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "app_package_name"

    const-string v8, "com.android.phone"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public registerReceiverVariation()V
    .locals 0

    return-void
.end method

.method public setCheckPrefixNumber(Z)V
    .locals 0

    return-void
.end method

.method public setLocalLayout(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setLocalLayoutText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLocalName(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public setOnehandOperation()V
    .locals 0

    return-void
.end method

.method public setPrefixNumber()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialpadImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrefixNumber() - prefix = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadVariables:Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadVariables;->getDigits()Lcom/android/dialer/dialpad/EllipsisTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/dialpad/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public showOTADlg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSpeedDialDlg(I)V
    .locals 5

    const-string v1, "DialpadImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSpeedDialDlg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iput p1, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialNumber:I

    add-int/lit8 v0, p1, -0x1

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e03d2

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v4, 0x7f0e03d3

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0e01b9

    new-instance v4, Lcom/samsung/dialer/impl/DialpadImpl$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/dialer/impl/DialpadImpl$2;-><init>(Lcom/samsung/dialer/impl/DialpadImpl;I)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0e0318

    new-instance v4, Lcom/samsung/dialer/impl/DialpadImpl$1;

    invoke-direct {v4, p0}, Lcom/samsung/dialer/impl/DialpadImpl$1;-><init>(Lcom/samsung/dialer/impl/DialpadImpl;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialpadImpl;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v1, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSpeedDialDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public unregisterReceiverVariation()V
    .locals 0

    return-void
.end method
