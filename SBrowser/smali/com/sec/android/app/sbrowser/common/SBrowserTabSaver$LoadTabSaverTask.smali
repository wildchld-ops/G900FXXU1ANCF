.class Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;
.super Landroid/os/AsyncTask;
.source "SBrowserTabSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTabSaverTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mInstanceIndex:I

.field private mTabId:I

.field private mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mInstanceIndex:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mInstanceIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;ILcom/sec/android/app/sbrowser/common/SBrowserTabSaver$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabId:I

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabId:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mInstanceIndex:I

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/Tab;->readState(ILandroid/app/Activity;I)Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v5, "onPostExecute"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->isIncognito:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelIncognitoTabLoads:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$700(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->isIncognito:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mCancelNormalTabLoads:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$800(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$500(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-boolean v5, v5, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->isIncognito:Z

    invoke-interface {v1, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControlSelector;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->state:[B

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->restoreState([B)I

    move-result v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveId:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$900(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_2

    invoke-interface {v0, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->indexOf(Lcom/sec/android/app/sbrowser/common/Tab;)I

    move-result v8

    :cond_2
    const/4 v4, -0x1

    if-ltz v8, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1000(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveIndex:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I

    move-result v5

    if-ge v1, v5, :cond_3

    const/4 v1, 0x0

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    sget-object v3, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_RESTORE:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget v5, v5, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->parentId:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/common/Tab$TabState;->openerAppId:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createTabWithNativeContents(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;IILjava/lang/String;)Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadTabSaverTask createTabWithNativeContents TabIndex ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mTabId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mNextRestoredIndex:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1000(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSavedActiveIndex:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)I

    move-result v5

    if-eq v1, v5, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1012(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)I

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$LoadTabSaverTask;->mInstanceIndex:I

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->loadNextTab(I)V
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1200(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V

    :cond_6
    return-void
.end method
