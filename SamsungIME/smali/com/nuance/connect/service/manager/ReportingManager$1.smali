.class Lcom/nuance/connect/service/manager/ReportingManager$1;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;
.source "ReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/ReportingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ReportingManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #setter for: Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsEnabled:Z
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$002(Lcom/nuance/connect/service/manager/ReportingManager;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    #getter for: Lcom/nuance/connect/service/manager/ReportingManager;->reportingStatisticsEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$000(Lcom/nuance/connect/service/manager/ReportingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->clearStoredStatistics()V

    :cond_0
    return-void
.end method
