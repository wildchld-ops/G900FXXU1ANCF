.class public Lcom/android/incallui/motion/CallMotion;
.super Ljava/lang/Object;
.source "CallMotion.java"


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/motion/CallMotion$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/motion/CallMotion$1;-><init>(Lcom/android/incallui/motion/CallMotion;)V

    iput-object v0, p0, Lcom/android/incallui/motion/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-object p1, p0, Lcom/android/incallui/motion/CallMotion;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/incallui/motion/CallMotion;->mMotionType:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/motion/CallMotion;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/motion/CallMotion;->mMotionType:I

    return v0
.end method


# virtual methods
.method public startMotionCatch()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "CallMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionCatch: type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/motion/CallMotion;->mMotionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v1, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/motion/CallMotion;->mContext:Landroid/content/Context;

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v1, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/motion/CallMotion;->mMotionType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/incallui/motion/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :goto_1
    return-void

    :pswitch_0
    const/16 v0, 0x400

    goto :goto_0

    :cond_1
    const-string v1, "CallMotion"

    const-string v2, "fail to register"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public stopMotionCatch()V
    .locals 3

    const-string v0, "CallMotion"

    const-string v1, "stopMotionCatch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/motion/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/incallui/motion/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method
