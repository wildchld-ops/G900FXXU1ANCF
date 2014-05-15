.class Lcom/nuance/connect/service/manager/DlmSyncManager$3;
.super Ljava/lang/Object;
.source "DlmSyncManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DlmSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 4

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v2

    const-string v3, "DLMManager.onInvalidated"

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #calls: Lcom/nuance/connect/service/manager/DlmSyncManager;->disableDlmSync()V
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$400(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$500(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLinked()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$000(Lcom/nuance/connect/service/manager/DlmSyncManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "DLMManager.onLinked"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->userDlmEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$600(Lcom/nuance/connect/service/manager/DlmSyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$3;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #calls: Lcom/nuance/connect/service/manager/DlmSyncManager;->enableDlmSync()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$700(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    :cond_0
    return-void
.end method
