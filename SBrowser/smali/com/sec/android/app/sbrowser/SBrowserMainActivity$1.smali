.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.doInputURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onInputURLPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.doWindowManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onWindowManagerPressed()V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.doNewWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    #getter for: Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mController:Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$000(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->onNewWindowPressed()V

    goto :goto_0
.end method
