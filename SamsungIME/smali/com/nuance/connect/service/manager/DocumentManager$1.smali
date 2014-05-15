.class Lcom/nuance/connect/service/manager/DocumentManager$1;
.super Ljava/lang/Object;
.source "DocumentManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/manager/DocumentManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DocumentManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DocumentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I[I)V
    .locals 0

    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager$1;->this$0:Lcom/nuance/connect/service/manager/DocumentManager;

    #calls: Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/DocumentManager;->access$000(Lcom/nuance/connect/service/manager/DocumentManager;)V

    return-void
.end method
