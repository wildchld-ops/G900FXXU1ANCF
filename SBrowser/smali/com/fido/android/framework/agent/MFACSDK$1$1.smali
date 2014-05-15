.class Lcom/fido/android/framework/agent/MFACSDK$1$1;
.super Landroid/os/Handler;
.source "MFACSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fido/android/framework/agent/MFACSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fido/android/framework/agent/MFACSDK$1;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/MFACSDK$1;)V
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/MFACSDK$1$1;->this$1:Lcom/fido/android/framework/agent/MFACSDK$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK$1$1;->this$1:Lcom/fido/android/framework/agent/MFACSDK$1;

    iget-object v2, v1, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    invoke-virtual {v3}, Lcom/fido/android/framework/agent/api/ResultType;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/fido/android/framework/agent/MFACSDK;->mIsReady:Z
    invoke-static {v2, v1}, Lcom/fido/android/framework/agent/MFACSDK;->access$102(Lcom/fido/android/framework/agent/MFACSDK;Z)Z

    iget-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK$1$1;->this$1:Lcom/fido/android/framework/agent/MFACSDK$1;

    iget-object v1, v1, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mRequest:Lcom/fido/android/framework/agent/RequestParams;
    invoke-static {v1}, Lcom/fido/android/framework/agent/MFACSDK;->access$200(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/RequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/RequestParams;->getConnectedHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
