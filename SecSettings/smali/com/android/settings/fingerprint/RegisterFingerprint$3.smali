.class Lcom/android/settings/fingerprint/RegisterFingerprint$3;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v4, 0x7

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_READY]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_STARTED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSucceed:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startScanningAnimation()V

    goto :goto_0

    :pswitch_2
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventId[EVENT_ENROLL_STATUS] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSucceed:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v4, :cond_4

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_SENSOR_ERROR]  => sensor is removed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSucceed:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v2

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$802(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    div-int/lit8 v2, v2, 0xc

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v3, 0x7f09177e

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v3, 0x7f09177e

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(I)V
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_1

    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_6

    const-string v1, "RegisterFingerprint"

    const-string v2, "imageQuality[IMAGE_QUALITY_WRONG_FINGER]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0x66

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_1

    :cond_6
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageQuality["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x25

    if-gt v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x4b

    if-gt v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200e2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x57

    if-gt v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :pswitch_3
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_FINISHED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventResult[RESULT_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSucceed:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_e

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_OPERATION_DENIED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v6, :cond_f

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_ALREADY_REGISTERED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0x65

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_10

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_QUALITY_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v8, :cond_11

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_USER_CANCELLED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v4, :cond_13

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_SENSOR_ERROR] => sensor is not found"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    :cond_13
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no reason any other reason!!![evt.eventStatus] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v3, v3, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #calls: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_0

    const-string v1, "RegisterFingerprint"

    const-string v2, "eventResult[RESULT_SUCCESS]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsSucceed:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    #setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinishRegister:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
