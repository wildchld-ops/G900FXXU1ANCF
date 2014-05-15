.class Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalHandler"
.end annotation


# static fields
.field private static final CAPTIVE_PORTAL_AUTH_WALKTIME:I = 0x1d4c0

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_PERIOD:I = 0x1388

.field private static final CAPTIVE_PORTAL_CHECK_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final NEXT_CHECK_TIME:I = 0x927c0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.CaptivePortalHandler"


# instance fields
.field private mAuthCheckStartTime:J

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalDnsResolver"

    invoke-direct {v0, p1, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-void
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V

    return-void
.end method

.method private checkCaptivePortal(Landroid/os/Handler;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v6, "[checkCaptivePortal]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_8

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v5, "DCM"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\"docomo\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"0000docomo\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"0001docomo\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    const-string v5, "KDI"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "\"au_Wi-Fi2\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"au_Wi-Fi\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"Wi2_club\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"Wi2premium_club\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"UQ_Wi-Fi\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"Wi2\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"Wi2premium\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"wifi_square\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"[Wi2]\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_2
    const-string v5, "SBM"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\"0001softbank\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"0002softbank\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"mobilepoint\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "\"FON_FREE_INTERNET\""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v5, :cond_9

    const-string v4, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v5, "already checking the captive portal!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_4

    const v4, 0x2102a

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object v2, v4

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "It\'s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", no need to check whether or not it is a captive portal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v6, 0xe

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v5, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v5, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    if-eq p1, p0, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v4, 0x2102c

    iput v4, v1, Landroid/os/Message;->what:I

    iput v9, v1, Landroid/os/Message;->arg1:I

    const-wide/16 v4, 0x32

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_8
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v5, "Abnormal request for checking captive portal"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v5}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "http://clients3.google.com/generate_204"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v5, 0x2

    const/16 v6, 0x1388

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v5, "DNS List is empty, ignore dns checking"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v5, "couldn\'t resolve a URL : http://clients3.google.com/generate_204"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v5, 0x4

    iput v5, v4, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_a
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_1

    :cond_b
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v5, "[DNS query requested!]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v5, 0x1

    iput v5, v4, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v5, 0x6

    iput v5, v4, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, v4, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v6, v4, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v4, v9, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1
.end method

.method private getResult()Z
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->isCaptivePortal()Z

    move-result v0

    return v0
.end method

.method private isCaptivePortal()Z
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v7, "Checking http://clients3.google.com/generate_204"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v5, "http://clients3.google.com/generate_204"

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/16 v5, 0xcc

    if-eq v2, v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_1
    return v5

    :cond_3
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move v5, v6

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v5
.end method

.method private notifyDisconnect()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x2102a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14100(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v6, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v9, 0x1

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v9, 0x6

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore msg id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "[CAPTIVE_PORTAL_CHECK_STATE]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-wide v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_2

    iput-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    :cond_2
    invoke-direct {p0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_e

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v8, :cond_c

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v9, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[mPreviousPrivateIP] : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " [msg.obj] : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/net/InetAddress;

    check-cast v8, Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v6, 0x2

    :cond_7
    :goto_1
    const/4 v8, 0x1

    if-ne v0, v8, :cond_11

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-nez v4, :cond_8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/net/InetAddress;

    :cond_8
    instance-of v8, v4, Ljava/net/Inet4Address;

    if-eqz v8, :cond_10

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DNS Response SELECTED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_9
    if-eqz v4, :cond_0

    :try_start_0
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v8

    const v9, 0x2102d

    const/4 v10, 0x0

    check-cast v4, Ljava/net/Inet4Address;

    invoke-static {v4}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    const-string v12, "http://clients3.google.com/generate_204"

    invoke-static {v8, v9, v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x1

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    goto :goto_1

    :cond_c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/net/InetAddress;

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v9, 0x1

    const/16 v10, 0xbb8

    const/4 v11, 0x0

    const-string v12, "www.google.com"

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "DNS List is empty, ignore dns checking"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "[second DNS query requested!]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const/4 v8, 0x3

    if-ne v0, v8, :cond_f

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_f
    if-nez v0, :cond_7

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v6, 0x3

    goto/16 :goto_1

    :cond_10
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "The resolved IP is not IPv4"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v6, 0x3

    :cond_11
    :sswitch_2
    iget v8, p1, Landroid/os/Message;->what:I

    const v9, 0x2102f

    if-ne v8, v9, :cond_14

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "[TIMEOUT_CAPTIVE_PORTAL]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->shutdownInput()V

    :cond_13
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    const/4 v6, 0x3

    :cond_14
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->what:I

    const v9, 0x2102e

    if-ne v8, v9, :cond_17

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "[STATUS_CODE_CAPTIVE_PORTAL]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    const/4 v7, 0x1

    :goto_3
    const/4 v6, 0x1

    const/16 v8, 0xcc

    if-eq v5, v8, :cond_16

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v8

    if-eqz v8, :cond_17

    if-eqz v7, :cond_17

    :cond_16
    const/4 v6, 0x0

    :cond_17
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-ne v8, p0, :cond_2b

    packed-switch v6, :pswitch_data_0

    :cond_18
    :goto_4
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUnidentifiedCount : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_19
    const/16 v3, 0x2710

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_29

    const/16 v3, 0x1388

    :cond_1a
    :goto_5
    const v8, 0x2102a

    int-to-long v9, v3

    invoke-virtual {p0, v8, v9, v10}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1b
    :goto_6
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    goto/16 :goto_0

    :cond_1c
    const/4 v7, 0x0

    goto :goto_3

    :pswitch_0
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1f

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_1d
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v9, 0xd

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "CAPTIVE_PORTAL_EVENT_AUTHENTICATED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v9, 0x21019

    const v10, 0x2101c

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    goto/16 :goto_4

    :cond_1f
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_18

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_20

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "Now, the current AP has been automatically authenticated!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v9, 0xd

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    goto/16 :goto_4

    :pswitch_1
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_18

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15602(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_21

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "CAPTIVE_PORTAL_EVENT_DETECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v9, 0x21019

    const v10, 0x2101a

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_4

    :cond_22
    iget-wide v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_18

    iget-wide v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    sub-long v8, v1, v8

    const-wide/32 v10, 0x1d4c0

    cmp-long v8, v8, v10

    if-lez v8, :cond_18

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_23

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v9, 0x21019

    const v10, 0x2101b

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_25

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v8

    if-nez v8, :cond_24

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v9, 0x4

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_24
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_25
    :goto_7
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v9, 0xd

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5002(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_4

    :cond_26
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    iput v10, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v10, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v8, v9, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_7

    :pswitch_3
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v8

    if-nez v8, :cond_27

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v9, 0x4

    iput v9, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_27
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_4

    :cond_28
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v8, v8, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v9, v9, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    iput v10, v9, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v10, v8, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x2

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v8, v9, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    :cond_29
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_1a

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_1a

    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v8

    if-eqz v8, :cond_2a

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v9, "start to check the captive portal state after 600000ms"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_2a
    const v3, 0x927c0

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v9, 0x0

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_5

    :cond_2b
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v8, :cond_1b

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v9, 0x2102c

    const/4 v10, -0x1

    invoke-static {v8, v9, v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v8

    if-eqz v8, :cond_2c

    const-string v8, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v9, "[CANCEL_CAPTIVE_PORTAL]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const v8, 0x2102f

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    :try_start_2
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->shutdownInput()V

    :cond_2d
    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v8}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14100(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    goto :goto_8

    :catch_2
    move-exception v8

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2102a -> :sswitch_0
        0x2102e -> :sswitch_3
        0x2102f -> :sswitch_2
        0x21030 -> :sswitch_4
        0x50005 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
