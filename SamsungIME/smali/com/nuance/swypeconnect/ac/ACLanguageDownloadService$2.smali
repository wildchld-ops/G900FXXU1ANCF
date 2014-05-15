.class Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;
.super Ljava/lang/Object;
.source "ACLanguageDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

.field final synthetic val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

.field final synthetic val$version:I

.field final synthetic val$xt9LanguageId:I


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;II)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$xt9LanguageId:I

    iput p4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$version:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .locals 4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    #getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$xt9LanguageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    #calls: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downloadFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadFailed(I)V

    :cond_0
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadPercentage(I)V

    :cond_0
    return-void
.end method

.method public downloadStarted()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadStarted()V

    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$2;->val$callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadStopped(I)V

    :cond_0
    return-void
.end method
