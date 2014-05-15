.class final Lcom/android/phone/PhoneUtilsCommon$1;
.super Ljava/lang/Object;
.source "PhoneUtilsCommon.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v6, "onSContextChanged"

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    iget-object v5, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextCallPose;->getPose()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSContextChanged Pose : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    iget-object v6, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    const-string v6, "onSContextChanged Pose : no works"

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_direction"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v8, v8}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    const-string v6, "phone.dev.callpose"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    invoke-static {v2, v6}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_direction"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v8, v8}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    const-string v6, "phone.dev.callpose"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    invoke-static {v2, v6}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->isCoverClosed()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "onSContextChanged PUT_DOWN_MOTION, but cover is opened"

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/scontext/SContextPutDownMotion;->getAction()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSContextChanged PUT_DOWN_MOTION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v8}, Lcom/android/phone/PhoneUtilsCommon;->access$000(Ljava/lang/String;Z)V

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-static {v8}, Lcom/android/phone/PhoneUtilsCommon;->doActionPutUpDown(Z)V

    goto :goto_0

    :pswitch_3
    invoke-static {v9}, Lcom/android/phone/PhoneUtilsCommon;->doActionPutUpDown(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
