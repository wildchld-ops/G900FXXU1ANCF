.class public Lcom/android/phone/CGMvClient;
.super Landroid/os/Handler;
.source "CGMvClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mAdjustRingtone:Lcom/android/phone/AdjustRingtone;

.field private mContext:Landroid/content/Context;

.field protected m_cClientNameStr:Ljava/lang/String;

.field protected m_cExpirationHandler:Landroid/os/Handler;

.field protected m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected m_cRxMessenger:Landroid/os/Messenger;

.field protected m_cTxMessenger:Landroid/os/Messenger;

.field protected m_iSvcRegisteredCount:I

.field protected m_pbSvcRegistered:[Z

.field protected m_ps32Info:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lcom/android/phone/CGMvClient;->m_cClientNameStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/phone/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;

    const/16 v0, 0xd

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    iput-object v1, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/phone/CGMvClient;->m_ps32Info:[I

    iput-object p1, p0, Lcom/android/phone/CGMvClient;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 6

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "D0"

    iget-object v5, p0, Lcom/android/phone/CGMvClient;->m_cClientNameStr:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/CGMvClient;->SendMessage(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CGMvClient;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public Open(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CGMvClient;->Close()V

    iput-object p1, p0, Lcom/android/phone/CGMvClient;->m_cClientNameStr:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public SendMessage(III)V
    .locals 6

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v4, "D0"

    iget-object v5, p0, Lcom/android/phone/CGMvClient;->m_cClientNameStr:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/CGMvClient;->SendMessage(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public SendMessage(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "m_cTxMessenger was failed!"

    invoke-static {v2}, Lcom/android/phone/CGMvSystem;->SDebugPrintError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public ServiceRegister(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    aget-boolean v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/phone/CGMvClient;->SendMessage(III)V

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    iget v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    iget v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/android/phone/CGMvClient$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CGMvClient$1;-><init>(Lcom/android/phone/CGMvClient;)V

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public ServiceUnregister(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x65

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/CGMvClient;->SendMessage(III)V

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_pbSvcRegistered:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    iget v0, p0, Lcom/android/phone/CGMvClient;->m_iSvcRegisteredCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->mAdjustRingtone:Lcom/android/phone/AdjustRingtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->mAdjustRingtone:Lcom/android/phone/AdjustRingtone;

    invoke-virtual {v0}, Lcom/android/phone/AdjustRingtone;->stopRingtoneEscalating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "D0"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "D0"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CGMvSystem;->SDebugPrintInfo(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v3, "CGMvClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :sswitch_0
    :try_start_1
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CGMvClient;->m_ps32Info:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage] EG_MV_ID_INFO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CGMvClient;->m_ps32Info:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CGMvClient;->m_ps32Info:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CGMvClient;->m_ps32Info:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CGMvSystem;->SDebugPrintInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :sswitch_1
    const/4 v3, 0x0

    :try_start_2
    aget v3, v1, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CGMvClient;->mAdjustRingtone:Lcom/android/phone/AdjustRingtone;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/phone/AdjustRingtone;

    iget-object v4, p0, Lcom/android/phone/CGMvClient;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/phone/AdjustRingtone;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CGMvClient;->mAdjustRingtone:Lcom/android/phone/AdjustRingtone;

    :cond_1
    iget-object v3, p0, Lcom/android/phone/CGMvClient;->mAdjustRingtone:Lcom/android/phone/AdjustRingtone;

    invoke-virtual {v3}, Lcom/android/phone/AdjustRingtone;->startRingtoneEscalating()V

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getAudioRouter()Lcom/android/phone/AudioRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setGripToReceiverState(I)V

    invoke-virtual {v0}, Lcom/android/phone/AudioRouter;->getAudioMode()I

    move-result v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_4

    :cond_3
    const-string v3, "CGMvClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EG_MV_ID_GRIP_TO_CHANGE_SPEAKER_DATA : ignore. Not Earpiece or OFFHOOK"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/phone/AudioRouter;->getAudioMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/phone/AudioRouter;->setSpeaker(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setGripToReceiverState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc1 -> :sswitch_1
        0xd5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMvClientHandler::onServiceConnected() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CGMvSystem;->SDebugPrintInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMvClientHandler::onServiceDisconnected() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CGMvSystem;->SDebugPrintInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CGMvClient;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
