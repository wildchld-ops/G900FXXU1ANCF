.class Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;
.super Ljava/lang/Thread;
.source "SBrowserClientCertificateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartcardThread"
.end annotation


# instance fields
.field mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;

    move-result-object v0

    const-string v1, "SBrowserClientCertificateHandler"

    const-string v2, "SmartcardThread.run() START"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v1, "SBrowserClientCertificateHandler"

    const-string v2, "SmartcardThread.run() smartcardWrapper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processSmartcardWaitingQueue()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    #calls: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    :goto_0
    const-string v1, "SBrowserClientCertificateHandler"

    const-string v2, "SmartcardThread.run() END"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$SmartcardThread;->mRequest:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper;->useSslSmartcardContext(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V

    goto :goto_0
.end method
