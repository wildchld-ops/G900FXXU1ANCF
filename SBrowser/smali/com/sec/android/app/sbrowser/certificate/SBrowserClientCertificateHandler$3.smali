.class Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;
.super Ljava/lang/Object;
.source "SBrowserClientCertificateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->askUserToUseSmartcard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$400(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    #getter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$400(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$3;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    #calls: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->selectedToUsePlatform()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$500(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;)V

    return-void
.end method
