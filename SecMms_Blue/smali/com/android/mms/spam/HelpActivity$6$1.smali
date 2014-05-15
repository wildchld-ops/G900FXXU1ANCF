.class Lcom/android/mms/spam/HelpActivity$6$1;
.super Lcom/tencent/update/IBinderCheckListener$Stub;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/HelpActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/HelpActivity$6;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    invoke-direct {p0}, Lcom/tencent/update/IBinderCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckCanceled()V
    .locals 2

    const-string v0, "demo1"

    const-string v1, "onCheckCanceled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckEvent(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    iget-object v1, v1, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCheckFinished(Lcom/tencent/update/BinderCheckResult;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;
    invoke-static {v0, v1}, Lcom/android/mms/spam/HelpActivity;->access$102(Lcom/android/mms/spam/HelpActivity;Lcom/tencent/update/BinderCheckResult;)Lcom/tencent/update/BinderCheckResult;

    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    #setter for: Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;
    invoke-static {v0, p1}, Lcom/android/mms/spam/HelpActivity;->access$102(Lcom/android/mms/spam/HelpActivity;Lcom/tencent/update/BinderCheckResult;)Lcom/tencent/update/BinderCheckResult;

    if-nez p1, :cond_0

    const-string v0, "demo1"

    const-string v1, "onCheckFinished result is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$6$1;->this$1:Lcom/android/mms/spam/HelpActivity$6;

    iget-object v0, v0, Lcom/android/mms/spam/HelpActivity$6;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-virtual {v0, v2}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    sput-boolean v2, Lcom/android/mms/spam/HelpActivity;->bCheckError:Z

    :cond_0
    return-void
.end method

.method public onCheckStarted()V
    .locals 2

    const-string v0, "demo1"

    const-string v1, "onCheckStarted"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
