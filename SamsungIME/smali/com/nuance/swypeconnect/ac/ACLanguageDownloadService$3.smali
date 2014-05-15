.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;
.super Ljava/lang/Object;
.source "ACLanguageDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public languageListUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$3;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;->downloadListUpdated()V

    :cond_0
    return-void
.end method
