.class Lcom/nuance/connect/service/manager/AccountManager$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/AccountManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/AccountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    #getter for: Lcom/nuance/connect/service/manager/AccountManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$000(Lcom/nuance/connect/service/manager/AccountManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "[AccountManager] onInvalidated"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/AccountManager$1;->this$0:Lcom/nuance/connect/service/manager/AccountManager;

    #calls: Lcom/nuance/connect/service/manager/AccountManager;->sendAccount()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/AccountManager;->access$100(Lcom/nuance/connect/service/manager/AccountManager;)V

    return-void
.end method

.method public onLinked()V
    .locals 0

    return-void
.end method
