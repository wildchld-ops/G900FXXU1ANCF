.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;
.super Ljava/lang/Object;
.source "ConnectServiceManagerInternal.java"

# interfaces
.implements Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
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

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataStore()Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    #getter for: Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;
    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$000(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    return-object v0
.end method
