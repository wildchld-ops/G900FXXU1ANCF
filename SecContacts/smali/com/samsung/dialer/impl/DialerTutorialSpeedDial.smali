.class public Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;
.super Lcom/samsung/dialer/impl/DialerTutorialDialog;
.source "DialerTutorialSpeedDial.java"


# instance fields
.field private mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

.field private resHoverMsg:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/dialer/impl/DialerTutorialDialog;-><init>(Landroid/app/Activity;Z)V

    const v0, 0x7f030126

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->setContentView(I)V

    check-cast p1, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->contactSaved:Z

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->getHoverMsg()I

    move-result v0

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->resHoverMsg:I

    return-void
.end method

.method private getHoverMsg()I
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_speed_dial_tip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_speed_dial_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const v2, 0x7f0e04a6

    :goto_2
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0e04a5

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const v2, 0x7f0e04a4

    goto :goto_2

    :cond_4
    const v2, 0x7f0e04a3

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->finishTutorial()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->tutorialSenario()V

    return-void
.end method

.method protected tutorialSenario()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->clearAllMessages()V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->stopAnimation()V

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->setStep()V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->saveStep()V

    return-void

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->setTouchType(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setDigit(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->resHoverMsg:I

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->setMsg(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->setPointerVisibility(Z)V

    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->setTargetView(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected tutorialSenarioResult()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->hideView()V

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->showToast(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;->runTimerForFinish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
