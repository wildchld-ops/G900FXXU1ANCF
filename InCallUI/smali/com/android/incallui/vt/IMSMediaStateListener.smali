.class public Lcom/android/incallui/vt/IMSMediaStateListener;
.super Ljava/lang/Object;
.source "IMSMediaStateListener.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/vt/IMSMediaStateListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method onCameraEvent(IZ)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraEvent sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    const/16 v0, 0x65

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x67

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    goto :goto_0
.end method

.method onCameraFirstFrameReady(I)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraFirstFrameReady sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    const/16 v0, 0x68

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCameraEvent(I)V

    :cond_0
    return-void
.end method

.method onCaptureFailure(IZ)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureFailure sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isNearEnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    const/16 v0, 0x130

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12e

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0
.end method

.method onCaptureSuccess(IZLjava/lang/String;)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureSuccess sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isNearEnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1, p3}, Lcom/android/incallui/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    const/16 v0, 0x12f

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12d

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyCaptureAndRecordEvent(I)V

    goto :goto_0
.end method

.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "success"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCameraEvent(IZ)V

    goto :goto_0

    :pswitch_2
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/IMSMediaStateListener;->onVideoAvailable(I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isnearend"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "filename"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isnearend"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCaptureFailure(IZ)V

    goto :goto_0

    :pswitch_5
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/IMSMediaStateListener;->onCameraFirstFrameReady(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onVideoAvailable(I)V
    .locals 5

    const-string v2, "[IMSMediaStateListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoAvailable sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    const/16 v0, 0xc9

    invoke-virtual {v1, v0}, Lcom/android/incallui/vt/VideoCallManager;->notifyVideoCallEvent(I)V

    :cond_0
    return-void
.end method
