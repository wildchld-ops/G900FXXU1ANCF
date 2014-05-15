.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;
.source "ConnectServiceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/internal/ConnectServiceManagerInternal;-><init>(Landroid/content/Context;Lcom/nuance/connect/host/service/HostInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$7;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #calls: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->sendConnectConfig()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$300(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    return-void
.end method
