.class Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$5;
.super Ljava/lang/Object;
.source "SBrowserClientCertificateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$5;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler$5;->this$0:Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->mAlertDialogToUseSmartcard:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;->access$402(Lcom/sec/android/app/sbrowser/certificate/SBrowserClientCertificateHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
