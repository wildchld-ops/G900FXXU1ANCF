.class Lcom/nuance/connect/service/manager/UpgradeManager$2;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

.field final synthetic val$s:I

.field final synthetic val$tid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/UpgradeManager;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/UpgradeManager$2;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    iput p2, p0, Lcom/nuance/connect/service/manager/UpgradeManager$2;->val$s:I

    iput-object p3, p0, Lcom/nuance/connect/service/manager/UpgradeManager$2;->val$tid:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/UpgradeManager$2;->this$0:Lcom/nuance/connect/service/manager/UpgradeManager;

    iget v1, p0, Lcom/nuance/connect/service/manager/UpgradeManager$2;->val$s:I

    iget-object v2, p0, Lcom/nuance/connect/service/manager/UpgradeManager$2;->val$tid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    return-void
.end method
