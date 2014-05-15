.class Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ACDownloadCB"
.end annotation


# instance fields
.field private mId:I

.field private mIsUpdateDownload:Z

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 1

    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mIsUpdateDownload:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Lcom/diotek/ime/framework/acmanager/ACDownloadManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;-><init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01cf

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    move v5, v4

    move v6, v4

    #calls: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$100(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$100(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$300(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$300(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$200(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$200(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    iget-boolean v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mIsUpdateDownload:Z

    #calls: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDownloadLanguage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$800(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IZ)V

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->extractFiles(Ljava/io/File;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->deleteCacheTempFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;->updated(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$900(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateLdbList()V

    return v3
.end method

.method public downloadFailed(I)V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "ACDownloadManager"

    const-string v1, "downloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d1

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    #calls: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 8

    const/16 v5, 0x64

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPercentage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    #setter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$1002(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;I)I

    if-eq p1, v5, :cond_1

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;->updated(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mCurrentDownloadId:I
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$1000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, p1

    #calls: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    goto :goto_0
.end method

.method public downloadStarted()V
    .locals 3

    const-string v0, "ACDownloadManager"

    const-string v1, "downloadStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadStarted before mAppointedDownloadLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadingLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadStarted after mAppointedDownloadLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    #getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mAppointedDownloadLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$700(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadStopped(I)V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "ACDownloadManager"

    const-string v1, "downloadStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01d1

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    #calls: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    return-void
.end method

.method public dummyDownloadComplete()V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    const v1, 0x7f0d01cf

    iget v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    #calls: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->createNotification(IIZZII)V
    invoke-static/range {v0 .. v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IIZZII)V

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;->updated(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->unregister()V

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    return v0
.end method

.method public register(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    iput p2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mId:I

    return-void
.end method

.method public setCurrentUpdateState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mIsUpdateDownload:Z

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->mListenerList:Ljava/util/List;

    return-void
.end method
