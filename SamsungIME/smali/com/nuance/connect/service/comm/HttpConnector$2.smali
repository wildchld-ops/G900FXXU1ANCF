.class Lcom/nuance/connect/service/comm/HttpConnector$2;
.super Ljava/lang/Object;
.source "HttpConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/comm/HttpConnector;->processCommand(Lcom/nuance/connect/service/comm/Command;Lcom/nuance/connect/service/comm/Transaction;Lcom/nuance/connect/service/comm/CommandQueue$NetworkExpirer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/HttpConnector;

.field final synthetic val$expiringServerConn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/comm/HttpConnector;Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    iput-object p2, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->val$expiringServerConn:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->this$0:Lcom/nuance/connect/service/comm/HttpConnector;

    #getter for: Lcom/nuance/connect/service/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/comm/HttpConnector;->access$000(Lcom/nuance/connect/service/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "Expired - disconnecting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/comm/HttpConnector$2;->val$expiringServerConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
