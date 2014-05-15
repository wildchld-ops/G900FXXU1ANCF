.class Lcom/nuance/connect/service/manager/ManagerRegistry$2;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;
.source "ManagerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/ManagerRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;->this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;->this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;

    #calls: Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->access$000(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    return-void
.end method
