.class public Lcom/sec/android/app/sbrowser/history/controller/HistoryController;
.super Ljava/lang/Object;
.source "HistoryController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;
    }
.end annotation


# static fields
.field private static final DAYS_BACK:I = 0x5a

.field private static final HISTORY:Ljava/lang/String; = "history"

.field private static final MAX_COUNT:I = 0x14


# instance fields
.field private final TITLE:Ljava/lang/String;

.field private final URL:Ljava/lang/String;

.field private groupItByText:Ljava/lang/String;

.field private groupItByType:Ljava/lang/String;

.field private groupItMode:Z

.field private groupItResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAppContext:Landroid/content/Context;

.field private mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

.field private mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

.field private mPintabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPintabObserver:Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;

.field private mhasData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "url"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->URL:Ljava/lang/String;

    const-string v0, "title"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->TITLE:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItMode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByText:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->fillQuickAccessData()V

    return-void
.end method

.method private buildUrlForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fillQuickAccessData()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;-><init>(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startAddQuickAccessActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public addToQuickAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->startAddQuickAccessActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearAllHistroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearAllHistroy()V

    return-void
.end method

.method public copy(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public createNewWindow([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "historySelectedItemUrls"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public deleteHistoryURL(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->buildUrlForQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearHistoryURLs(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->notifyChange()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->unRegisterNotifications()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getAllHistroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->GetAllHistroy()V

    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Unknown"

    if-eqz v0, :cond_0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Loading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "Unknown"

    :cond_1
    return-object v0
.end method

.method public getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Unknown"

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ShowBookmarksController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception whil extracting domain of the URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExpandListView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->getExpListView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGroupItByText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByText:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupItByType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupItMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItMode:Z

    return v0
.end method

.method public getHistoryDataResult()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataSize()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHistoryGroupItResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryUI()Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    return-object v0
.end method

.method public getModel()Lcom/sec/android/app/sbrowser/history/model/HistoryModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getRelatedNodeCountForClusterByCategory(Ljava/lang/String;)I
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataSize()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v7, v5, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public getRelatedNodeCountForClusterByWebsite(Ljava/lang/String;)I
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataSize()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v6, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getRelatedNodeForClusterByCategory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataSize()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByText:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cluster by Category ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getRelatedNodeCountForClusterByCategory(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByType:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v6, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    return-object v8
.end method

.method public getRelatedNodeForClusterByWebsite(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataSize()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->getHistoryDataList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByText:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cluster by Website ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getRelatedNodeCountForClusterByWebsite(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByType:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v6, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    return-object v8
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public isShowingActionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->getIsShowingActionMode()Z

    move-result v0

    return v0
.end method

.method public isUrlPinned(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setHasData(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->updateHistoryUi()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyChange()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getHistoryUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "historySelectedItemUrl"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->finish()V

    return-void
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setLocale()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->refreshNoHistoryLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->showClearAllHistoryDialog()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->setHistory()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->initializeUI(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->GetAllHistroy()V

    new-instance v0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;-><init>(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabObserver:Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabObserver:Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->fillQuickAccessData()V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mPintabObserver:Lcom/sec/android/app/sbrowser/history/controller/HistoryController$PintabObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mModel:Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearAll()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public promptToClearHistory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->promptToClearHistory()V

    return-void
.end method

.method public resetGroupItVariables()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItResult:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItByType:Ljava/lang/String;

    return-void
.end method

.method public saveToBookmarks(Lcom/sec/android/app/sbrowser/history/HistoryItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public selectItemsFromDB()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const-string v12, "_id"

    const-string v9, "title"

    const-string v11, "url"

    const-string v8, "position"

    const-string v10, "touchicon"

    const-string v7, "parent"

    const-string v6, "dominant"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const-string v0, "url"

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const-string v1, "parent"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "position"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "touchicon"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "dominant"

    aput-object v1, v2, v0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "position DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v14
.end method

.method public setAsHomePage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0154

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setGroupItMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->groupItMode:Z

    return-void
.end method

.method public setHasData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mhasData:Z

    return-void
.end method

.method public setHistory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->setHistory(Lcom/sec/android/app/sbrowser/history/controller/HistoryController;)V

    return-void
.end method

.method public setLocale()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->setLocale()V

    :cond_0
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public setSelection(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;->setSelection(Z)V

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mHistoryUi:Lcom/sec/android/app/sbrowser/history/ui/HistoryUI;

    return-void
.end method

.method public shareUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "theme"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0056

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
