.class Lcom/android/phone/AdjustRingtone$1;
.super Landroid/os/Handler;
.source "AdjustRingtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AdjustRingtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AdjustRingtone;


# direct methods
.method constructor <init>(Lcom/android/phone/AdjustRingtone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    invoke-static {v0}, Lcom/android/phone/AdjustRingtone;->access$010(Lcom/android/phone/AdjustRingtone;)I

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RINGTONE_ESCALATING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    #getter for: Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I
    invoke-static {v2}, Lcom/android/phone/AdjustRingtone;->access$000(Lcom/android/phone/AdjustRingtone;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/AdjustRingtone;->access$100(Lcom/android/phone/AdjustRingtone;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    #getter for: Lcom/android/phone/AdjustRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/AdjustRingtone;->access$200(Lcom/android/phone/AdjustRingtone;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    #getter for: Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I
    invoke-static {v2}, Lcom/android/phone/AdjustRingtone;->access$000(Lcom/android/phone/AdjustRingtone;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    #getter for: Lcom/android/phone/AdjustRingtone;->mCurrentRingerVolume:I
    invoke-static {v0}, Lcom/android/phone/AdjustRingtone;->access$000(Lcom/android/phone/AdjustRingtone;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    #getter for: Lcom/android/phone/AdjustRingtone;->mRingerUpdateDelay:I
    invoke-static {v1}, Lcom/android/phone/AdjustRingtone;->access$300(Lcom/android/phone/AdjustRingtone;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/AdjustRingtone$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    new-instance v0, Lcom/android/phone/AdjustRingtone$VibratorThread;

    iget-object v1, p0, Lcom/android/phone/AdjustRingtone$1;->this$0:Lcom/android/phone/AdjustRingtone;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/AdjustRingtone$VibratorThread;-><init>(Lcom/android/phone/AdjustRingtone;Lcom/android/phone/AdjustRingtone$1;)V

    invoke-virtual {v0}, Lcom/android/phone/AdjustRingtone$VibratorThread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
