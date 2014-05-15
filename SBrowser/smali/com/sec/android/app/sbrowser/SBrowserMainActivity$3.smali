.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SBrowserMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "rsr.bezel.impl"

    const-string v1, "Printer selected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->fromSconnect:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$202(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const-string v1, "PRINTER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->printerInfo:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$302(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->imgUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$400(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$3;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->startPrint()V

    return-void
.end method
