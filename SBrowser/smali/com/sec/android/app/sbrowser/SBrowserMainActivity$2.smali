.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.app.sbrowser.RESTORETABS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getInstanceIndex()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBrowserMainActivity onReceive-InstanceID-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$2;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->fileReadRestorableTabCountByInstanceId(I)V

    goto :goto_0
.end method
