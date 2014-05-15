.class Lcom/nuance/swypeconnect/ac/ACManager$2;
.super Ljava/lang/Object;
.source "ACManager.java"

# interfaces
.implements Lcom/nuance/connect/api/ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACManager;->registerConnectionCallback(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACManager;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->this$0:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connected(II)V

    return-void
.end method

.method public onConnectionStatus(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connectionStatus(ILjava/lang/String;)V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACManager$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->disconnected(I)V

    return-void
.end method
