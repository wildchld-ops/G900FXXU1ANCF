.class Lcom/nuance/connect/service/ConnectClient$6;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/ConnectClient;->sendMessageToHostDelayed(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$6;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iput p2, p0, Lcom/nuance/connect/service/ConnectClient$6;->val$what:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$6;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget v1, p0, Lcom/nuance/connect/service/ConnectClient$6;->val$what:I

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(I)V

    return-void
.end method
