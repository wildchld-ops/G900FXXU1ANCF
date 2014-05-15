.class Lcom/nuance/connect/service/manager/DlmSyncManager$4;
.super Ljava/lang/Object;
.source "DlmSyncManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


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

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I[I)V
    .locals 7

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$200(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    invoke-static {}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$800()[Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$200(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->managerStartComplete()V

    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    #calls: Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V
    invoke-static {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    :cond_3
    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method
