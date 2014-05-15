.class Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$2;
.super Landroid/os/Handler;
.source "SBrowserSmartcardWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$2;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const-string v8, "SBrowserSmartcardWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage msg("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$100()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    monitor-exit v9

    :goto_1
    return-void

    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->isSmartcardThreadRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "SBrowserSmartcardWrapper"

    const-string v10, "handleMessage engine is registering now. try it later"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$000()Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x1b58

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-static {v8, v10}, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->setSslContextState(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->isSmartcardThreadRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "SBrowserSmartcardWrapper"

    const-string v10, "handleMessage engine is registering now. try it later"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/4 v8, 0x1

    iput v8, v7, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$000()Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v9

    goto :goto_1

    :cond_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$SmartcardMsgObj;->mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    const/4 v0, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v1, v3, v8

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    move-result-object v8

    invoke-virtual {v8, v1, v4}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->getClientCertificateAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v8, "SBrowserSmartcardWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificate Alias: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for host"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and port:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v8, 0x1

    invoke-static {v8, v0}, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->setSslContextState(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processSmartcardWaitingQueue()V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->isSmartcardThreadRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "SBrowserSmartcardWrapper"

    const-string v10, "handleMessage engine is registering now. try it later"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->access$000()Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0xc8

    const-wide/16 v11, 0x1b58

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v9

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lorg/samsung/chrome/browser/SbrSmartcardHelper;->setSslContextState(ILjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->clearLoadingFrameList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method
