.class Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;
.super Ljava/lang/Object;
.source "BrowserSSRMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->access$000(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    #getter for: Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->browserSSRMService:Landroid/os/ICustomFrequencyManager;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->access$000(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const-string v2, "SBROWSER_DASH_MODE"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->isDashmode:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;->access$102(Lcom/sec/android/app/sbrowser/common/BrowserSSRMManager;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BrowserSSRMManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
