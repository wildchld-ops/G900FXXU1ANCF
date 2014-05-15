.class Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;
.super Landroid/os/CountDownTimer;
.source "VoiceAndVideoCallTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field aniDirect:I

.field aniStep:I

.field count:I

.field direct:I

.field final synthetic this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;JJ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->count:I

    iput v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->direct:I

    iput v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniStep:I

    iput v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniDirect:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->count:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniStep:I

    packed-switch v0, :pswitch_data_1

    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->count:I

    iget v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->direct:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->count:I

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->direct:I

    :cond_1
    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->count:I

    if-gtz v0, :cond_2

    iput v3, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->direct:I

    :cond_2
    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniStep:I

    iget v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniDirect:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniStep:I

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniStep:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iput v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniDirect:I

    :cond_3
    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniStep:I

    if-gtz v0, :cond_4

    iput v3, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->aniDirect:I

    :cond_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$700(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$700(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$700(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$700(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$700(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$800(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$800(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    #getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$800(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
