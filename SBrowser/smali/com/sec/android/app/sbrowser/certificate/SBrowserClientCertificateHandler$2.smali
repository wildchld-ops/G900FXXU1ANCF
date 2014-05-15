.class final Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$2;
.super Ljava/lang/Object;
.source "SBrowserClientCertificateHandler.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/certificate/SBrowserSmartcardWrapper$OnFinishedCb;


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
.method public OnFinished(Z)V
    .locals 2

    const-string v0, "SBrowserClientCertificateHandler"

    const-string v1, "OnFinished() called. reset smartcard list"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->getInstance()Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    move-result-object v0

    #calls: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->clearSmartcardList()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$300(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    return-void
.end method
