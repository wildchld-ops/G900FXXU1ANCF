.class public Lcom/samsung/dialer/impl/DialerTutorialMakeCall;
.super Lcom/samsung/dialer/impl/DialerTutorialDialog;
.source "DialerTutorialMakeCall.java"


# instance fields
.field btnNumbers:[Landroid/view/View;

.field private mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/dialer/impl/DialerTutorialDialog;-><init>(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    const v0, 0x7f030126

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setContentView(I)V

    check-cast p1, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->contactSaved:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setTouchType(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    iget v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->finishTutorial()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->finishTutorial()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->finishTutorial()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.incallui.ACTION_VOICE_AND_VIDEO_CALL_TUTORIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "step"

    const-string v2, "voicecall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->startActivity(Landroid/content/Intent;)V

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
    .locals 6

    const v5, 0x7f0e04ba

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "step"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "voicecall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->tutorialSenario()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "videocall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v4, 0x7f080198

    invoke-virtual {v3, v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, v5}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->showToast(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->finishTutorial()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->tutorialSenario()V

    goto :goto_0

    :cond_4
    const-string v3, "finish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->showToast(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->finishTutorial()V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->tutorialSenario()V

    return-void
.end method

.method protected tutorialSenario()V
    .locals 6

    const v5, 0x7f08018a

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->clearAllMessages()V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->stopAnimation()V

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setStep()V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->saveStep()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    const v0, 0x7f0e049a

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setMsg(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setPointerVisibility(Z)V

    invoke-virtual {p0, v5}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setTargetView(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->runTimerForNextStep()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v2, 0x7f080193

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v2, v5}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v3, 0x7f08018b

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->btnNumbers:[Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setDialButtonForAni([Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setMsg(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setPointerVisibility(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setTargetView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->runDialpadAnimation()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    const v0, 0x7f0e049c

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setMsg(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setPointerVisibility(Z)V

    const v0, 0x7f080199

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setTargetView(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    const v0, 0x7f0e049e

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setMsg(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setPointerVisibility(Z)V

    const v0, 0x7f080198

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->setTargetView(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected tutorialSenarioResult()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->hideView()V

    iget v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->tutorialSenario()V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->tutorialSenario()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.incallui.ACTION_VOICE_AND_VIDEO_CALL_TUTORIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "step"

    const-string v3, "voicecall"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.incallui.ACTION_VOICE_AND_VIDEO_CALL_TUTORIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "step"

    const-string v3, "videocall"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
