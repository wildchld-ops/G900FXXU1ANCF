.class Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$1;
.super Ljava/lang/Object;
.source "SBrowserCertificateViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->showSSLCertificate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer$1;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->mSSLCertificateDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;->access$002(Lcom/sec/android/app/sbrowser/certificate/SBrowserCertificateViewer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
