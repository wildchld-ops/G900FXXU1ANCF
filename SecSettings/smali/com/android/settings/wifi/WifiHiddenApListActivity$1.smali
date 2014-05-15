.class Lcom/android/settings/wifi/WifiHiddenApListActivity$1;
.super Ljava/lang/Object;
.source "WifiHiddenApListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiHiddenApListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApListActivity;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->access$000(Lcom/android/settings/wifi/WifiHiddenApListActivity;)Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->access$200(Lcom/android/settings/wifi/WifiHiddenApListActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f091359

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApListActivity;->mList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->access$100(Lcom/android/settings/wifi/WifiHiddenApListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    #getter for: Lcom/android/settings/wifi/WifiHiddenApListActivity;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->access$300(Lcom/android/settings/wifi/WifiHiddenApListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    #calls: Lcom/android/settings/wifi/WifiHiddenApListActivity;->saveFile()V
    invoke-static {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->access$400(Lcom/android/settings/wifi/WifiHiddenApListActivity;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListActivity$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListActivity;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiHiddenApListActivity;->updateMenu()V

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->updateHiddenAccessPoint()V

    goto :goto_0
.end method
