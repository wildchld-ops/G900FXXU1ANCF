.class Lcom/android/mms/spam/HelpActivity$7;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/HelpActivity;->updateRuleStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$7;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    new-instance v4, Lcom/android/mms/spam/HelpActivity$7$1;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/HelpActivity$7$1;-><init>(Lcom/android/mms/spam/HelpActivity$7;)V

    invoke-interface {v3, v4}, Lcom/tencent/update/IUpdateService;->update(Lcom/tencent/update/IBinderUpdateListener;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v3, Lcom/android/mms/spam/HelpActivity;->myCheckService:Lcom/tencent/engine/IEngineService;

    invoke-interface {v3, v1}, Lcom/tencent/engine/IEngineService;->updateRuleInfo([B)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity$7;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v3, v3, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity$7;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v3, v3, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
