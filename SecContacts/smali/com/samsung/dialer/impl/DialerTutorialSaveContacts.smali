.class public Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;
.super Lcom/samsung/dialer/impl/DialerTutorialDialog;
.source "DialerTutorialSaveContacts.java"


# instance fields
.field btnNumbers:[Landroid/view/View;

.field private mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/dialer/impl/DialerTutorialDialog;-><init>(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    const v0, 0x7f030126

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setContentView(I)V

    check-cast p1, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-boolean v1, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->contactSaved:Z

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setTouchType(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->finishTutorial()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->finishTutorial()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->finishTutorial()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->finishTutorial()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isTutorialSuccessed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "displayName"

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NAME:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->tutorialSenario()V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->tutorialSenario()V

    return-void
.end method

.method protected tutorialSenario()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f08018a

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->clearAllMessages()V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->stopAnimation()V

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setStep()V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->saveStep()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    const v0, 0x7f0e049b

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setMsg(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setPointerVisibility(Z)V

    invoke-virtual {p0, v5}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setTargetView(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->runTimerForNextStep()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v2, 0x7f080193

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v2, v5}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v3, 0x7f08018b

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->btnNumbers:[Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setDialButtonForAni([Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setMsg(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setPointerVisibility(Z)V

    invoke-virtual {p0, v6}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setTargetView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->runDialpadAnimation()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    const v0, 0x7f0e049f

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setMsg(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setPointerVisibility(Z)V

    const v0, 0x7f0801b1

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setTargetView(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-boolean v3, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->contactSaved:Z

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setMsg(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setPointerVisibility(Z)V

    invoke-virtual {p0, v6}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->setTargetView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->runTimerForNextStep()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected tutorialSenarioResult()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->hideView()V

    iget v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->tutorialSenario()V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->tutorialSenario()V

    goto :goto_0

    :pswitch_2
    const-string v3, "tel"

    iget-object v4, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getDigit()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    const-string v3, "tutorial_mode_from_dialer"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v3, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".action.SHOW_OR_CREATE_CONTACT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;->finishTutorial()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
