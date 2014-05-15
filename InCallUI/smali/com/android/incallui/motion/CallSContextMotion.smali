.class public Lcom/android/incallui/motion/CallSContextMotion;
.super Ljava/lang/Object;
.source "CallSContextMotion.java"


# static fields
.field private static sIsCallMotionListening:Z

.field private static sIsPutDownListening:Ljava/lang/Boolean;

.field private static final sSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static sSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/motion/CallSContextMotion$1;

    invoke-direct {v0}, Lcom/android/incallui/motion/CallSContextMotion$1;-><init>()V

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    sput-boolean v1, Lcom/android/incallui/motion/CallSContextMotion;->sIsCallMotionListening:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->doActionCallMotion()V

    return-void
.end method

.method private static doActionCallMotion()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isAnsweringBringToEar(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isGripToSnoozeState()Z

    move-result v2

    const-string v3, "CallSContextMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGripToSnoozeState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-ne v2, v6, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    :cond_0
    :goto_0
    return-void

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

    const-string v3, "CallSContextMotion"

    const-string v4, "setAudioMode : AudioMode.EARPIECE"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    goto :goto_0
.end method

.method private static doActionPutUpDown(Z)V
    .locals 7

    const/4 v3, 0x1

    const-string v4, "CallSContextMotion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doActionPutUpDown : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isScreenOn()Z

    move-result v2

    if-eqz p0, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_screen_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    const-string v4, "smart screen off"

    invoke-static {v4, v3}, Lcom/android/incallui/motion/CallSContextMotion;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    if-nez p0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->makeGoToSleepWithNoLockSound()V

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CallSContextMotion"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static startCallMotionListening(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "CallSContextMotion"

    const-string v1, "startCallMotionListening"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-boolean v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsCallMotionListening:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    sput-boolean v3, Lcom/android/incallui/motion/CallSContextMotion;->sIsCallMotionListening:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CallSContextMotion"

    const-string v1, "startCallMotionListening getting sSContextManager failed"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static startPutDownListening(Landroid/content/Context;)V
    .locals 4

    sget-object v1, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    const-string v0, "CallSContextMotion"

    const-string v2, "startPutDownListening"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CallSContextMotion"

    const-string v2, "startPutDownListening: has not call"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CallSContextMotion"

    const-string v2, "startPutDownListening: cover is opened"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_2

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_2
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_4
    const-string v0, "CallSContextMotion"

    const-string v2, "getting sSContextManager failed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static stopCallMotionListening(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "CallSContextMotion"

    const-string v1, "stopCallMotionListening"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-boolean v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsCallMotionListening:Z

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsCallMotionListening:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CallSContextMotion"

    const-string v1, "stopCallMotionListening getting sSContextManager failed"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static stopPutDownListening(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;Z)V

    return-void
.end method

.method public static stopPutDownListening(Landroid/content/Context;Z)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    const-string v0, "CallSContextMotion"

    const-string v2, "stopPutDownListening"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_1

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_1
    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v2, Lcom/android/incallui/motion/CallSContextMotion;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/motion/CallSContextMotion;->sIsPutDownListening:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :cond_3
    const-string v0, "CallSContextMotion"

    const-string v2, "getting sSContextManager failed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
