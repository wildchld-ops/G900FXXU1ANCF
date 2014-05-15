.class Lcom/nuance/connect/service/ConnectClient$8;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(Landroid/os/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$8;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/ConnectClient$8;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$8;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$8;->val$msg:Landroid/os/Message;

    #calls: Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->access$700(Lcom/nuance/connect/service/ConnectClient;Landroid/os/Message;)V

    return-void
.end method
