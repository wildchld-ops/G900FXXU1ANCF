.class Lcom/android/phone/TPhoneService$TBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService$TBroadcastReceiver;-><init>(Lcom/android/phone/TPhoneService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2800(Lcom/android/phone/TPhoneService;)Ljava/lang/Boolean;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TBroadcastReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.skt.prod.phone.TPHONE_SERVICE_CONNECTED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v5, v7}, Lcom/android/phone/TPhoneService;->access$2802(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_0
    :goto_0
    monitor-exit v6

    :goto_1
    return-void

    :cond_1
    const-string v5, "com.skt.prod.phone.TPHONE_SERVICE_DISCONNECTED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v5, v7}, Lcom/android/phone/TPhoneService;->access$2802(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    const-string v5, "com.skt.prod.phone.internal.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$1100(Lcom/android/phone/TPhoneService;)Lcom/skt/prod/phone/TCall;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/phone/PhoneGlobals;->displayTPhone(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v7, 0x1

    #setter for: Lcom/android/phone/TPhoneService;->mPendingDisplayTPhone:Z
    invoke-static {v5, v7}, Lcom/android/phone/TPhoneService;->access$1202(Lcom/android/phone/TPhoneService;Z)Z

    goto :goto_0

    :cond_4
    const-string v5, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$2900(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v7, 0x3e9

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v7, 0x0

    #setter for: Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;
    invoke-static {v5, v7}, Lcom/android/phone/TPhoneService;->access$1102(Lcom/android/phone/TPhoneService;Lcom/skt/prod/phone/TCall;)Lcom/skt/prod/phone/TCall;

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    goto :goto_0

    :cond_5
    const-string v5, "com.skt.prod.phone.TPHONE_CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotifications()V

    goto :goto_0

    :cond_6
    const-string v5, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDefaultPhoneApp(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDefaultPhoneApp(I)V

    goto :goto_2

    :cond_8
    const-string v5, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "TPhoneService"

    const-string v7, "isRinging call state don\'t finish InCallScreen"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v5, "com.skt.prod.dialer.TPHONE_UPDATE_REQUEST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TPhone]PhonePath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "TPHONE_PATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "TPHONE_INTERNAL_PATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TPhone]PhonePath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TPhone]DialPath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    if-nez v1, :cond_b

    :cond_a
    const-string v5, "TPhoneService"

    const-string v7, "[TPhone] INSTALL path is null!!"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v5, v1}, Lcom/android/phone/TPhoneService;->SetTPhonePath(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v5, v0}, Lcom/android/phone/TPhoneService;->SetTDialPath(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    #calls: Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$3000(Lcom/android/phone/TPhoneService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
