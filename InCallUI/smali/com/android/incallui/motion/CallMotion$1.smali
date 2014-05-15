.class Lcom/android/incallui/motion/CallMotion$1;
.super Ljava/lang/Object;
.source "CallMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/motion/CallMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/motion/CallMotion;


# direct methods
.method constructor <init>(Lcom/android/incallui/motion/CallMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/motion/CallMotion$1;->this$0:Lcom/android/incallui/motion/CallMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    const-string v3, "CallMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotionType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/motion/CallMotion$1;->this$0:Lcom/android/incallui/motion/CallMotion;

    #getter for: Lcom/android/incallui/motion/CallMotion;->mMotionType:I
    invoke-static {v5}, Lcom/android/incallui/motion/CallMotion;->access$000(Lcom/android/incallui/motion/CallMotion;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " motion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/incallui/motion/CallMotion$1;->this$0:Lcom/android/incallui/motion/CallMotion;

    #getter for: Lcom/android/incallui/motion/CallMotion;->mMotionType:I
    invoke-static {v3}, Lcom/android/incallui/motion/CallMotion;->access$000(Lcom/android/incallui/motion/CallMotion;)I

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_0

    const-string v3, "CallMotion"

    const-string v4, "BRING_THE_DEVICE_TO_EAR."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "CallMotion"

    const-string v4, "answerCall."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAudioModeProvider()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v3, v4, :cond_0

    const-string v3, "CallMotion"

    const-string v4, "setAudioMode : AudioMode.EARPIECE"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method
