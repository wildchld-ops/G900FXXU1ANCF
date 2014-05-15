.class Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;
.super Ljava/lang/Object;
.source "NetworkStateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->showDialogWifiSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

.field final synthetic val$wifimanager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->val$wifimanager:Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->val$wifimanager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkStateHandler"

    const-string v2, "showDialogSelectMessage: WiFi On already"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x3080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "wifiSettingsAppear"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->access$000(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->access$000(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;->access$002(Lcom/sec/android/app/sbrowser/common/NetworkStateHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    const-string v1, "NetworkStateHandler"

    const-string v2, "showDialogSelectMessage: WiFi power on"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/NetworkStateHandler$4;->val$wifimanager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
