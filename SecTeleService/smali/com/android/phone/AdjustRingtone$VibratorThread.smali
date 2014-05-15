.class Lcom/android/phone/AdjustRingtone$VibratorThread;
.super Ljava/lang/Thread;
.source "AdjustRingtone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AdjustRingtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field private final PAUSE_LENGTH:I

.field private final VIBRATE_LENGTH:I

.field private mContinueVibrating:Z

.field private mCount:I

.field mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Lcom/android/phone/AdjustRingtone;


# direct methods
.method private constructor <init>(Lcom/android/phone/AdjustRingtone;)V
    .locals 2

    iput-object p1, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->this$0:Lcom/android/phone/AdjustRingtone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->mContinueVibrating:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->mCount:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->VIBRATE_LENGTH:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->PAUSE_LENGTH:I

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->this$0:Lcom/android/phone/AdjustRingtone;

    #getter for: Lcom/android/phone/AdjustRingtone;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/AdjustRingtone;->access$500(Lcom/android/phone/AdjustRingtone;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->mVibrator:Landroid/os/SystemVibrator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/AdjustRingtone;Lcom/android/phone/AdjustRingtone$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/AdjustRingtone$VibratorThread;-><init>(Lcom/android/phone/AdjustRingtone;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->this$0:Lcom/android/phone/AdjustRingtone;

    const-string v1, "VibratorThread.."

    #calls: Lcom/android/phone/AdjustRingtone;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/AdjustRingtone;->access$100(Lcom/android/phone/AdjustRingtone;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->mCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->mCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AdjustRingtone$VibratorThread;->mVibrator:Landroid/os/SystemVibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
