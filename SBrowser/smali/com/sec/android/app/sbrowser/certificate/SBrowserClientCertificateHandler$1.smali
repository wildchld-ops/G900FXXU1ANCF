.class final Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$1;
.super Ljava/lang/Object;
.source "SBrowserClientCertificateHandler.java"

# interfaces
.implements Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateKeyAliasSelectedFromPlatform(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SBrowserClientCertificateHandler"

    const-string v1, "onPrivateKeyAliasSelectedFromPlatform() called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v0

    invoke-virtual {p1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->getHostAndPort()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->storeAlias(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$100(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v0

    #calls: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->processClientCertRequest()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$200(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    return-void
.end method

.method public shouldOverrideClientCertRequest(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)Z
    .locals 2

    const-string v0, "SBrowserClientCertificateHandler"

    const-string v1, "shouldOverrideClientCertRequest() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v0

    #calls: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->appendClientCertRequest(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$000(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)V

    const/4 v0, 0x1

    return v0
.end method
