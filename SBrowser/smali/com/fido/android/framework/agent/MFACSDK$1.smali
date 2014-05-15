.class Lcom/fido/android/framework/agent/MFACSDK$1;
.super Ljava/lang/Object;
.source "MFACSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fido/android/framework/agent/MFACSDK;->MfacSdkHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fido/android/framework/agent/MFACSDK;


# direct methods
.method constructor <init>(Lcom/fido/android/framework/agent/MFACSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    new-instance v1, Lcom/fido/android/framework/agent/MFACSDK$1$1;

    invoke-direct {v1, p0}, Lcom/fido/android/framework/agent/MFACSDK$1$1;-><init>(Lcom/fido/android/framework/agent/MFACSDK$1;)V

    #setter for: Lcom/fido/android/framework/agent/MFACSDK;->mFidoConnectedHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/MFACSDK;->access$002(Lcom/fido/android/framework/agent/MFACSDK;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    iget-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mFido:Lcom/fido/android/framework/agent/Fido;
    invoke-static {v1}, Lcom/fido/android/framework/agent/MFACSDK;->access$500(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/Fido;

    move-result-object v1

    iget-object v2, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/fido/android/framework/agent/MFACSDK;->access$400(Lcom/fido/android/framework/agent/MFACSDK;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mFidoConnectedHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/fido/android/framework/agent/MFACSDK;->access$000(Lcom/fido/android/framework/agent/MFACSDK;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fido/android/framework/agent/Fido;->init(Landroid/content/Context;Landroid/os/Handler;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    #setter for: Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;
    invoke-static {v0, v1}, Lcom/fido/android/framework/agent/MFACSDK;->access$302(Lcom/fido/android/framework/agent/MFACSDK;Lcom/fido/android/framework/agent/api/ResultType;)Lcom/fido/android/framework/agent/api/ResultType;

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;
    invoke-static {v0}, Lcom/fido/android/framework/agent/MFACSDK;->access$300(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    sget-object v1, Lcom/fido/android/framework/agent/api/ResultType;->SUCCESS:Lcom/fido/android/framework/agent/api/ResultType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mFidoConnectedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fido/android/framework/agent/MFACSDK;->access$000(Lcom/fido/android/framework/agent/MFACSDK;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fido/android/framework/agent/MFACSDK$1;->this$0:Lcom/fido/android/framework/agent/MFACSDK;

    #getter for: Lcom/fido/android/framework/agent/MFACSDK;->mLastError:Lcom/fido/android/framework/agent/api/ResultType;
    invoke-static {v1}, Lcom/fido/android/framework/agent/MFACSDK;->access$300(Lcom/fido/android/framework/agent/MFACSDK;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fido/android/framework/agent/api/ResultType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
