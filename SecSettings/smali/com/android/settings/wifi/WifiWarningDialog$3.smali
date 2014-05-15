.class Lcom/android/settings/wifi/WifiWarningDialog$3;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiWarningDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiWarningDialog;->mWifiEnableWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/android/settings/wifi/WifiWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiWarningDialog;->finish()V

    :cond_1
    return-void
.end method
