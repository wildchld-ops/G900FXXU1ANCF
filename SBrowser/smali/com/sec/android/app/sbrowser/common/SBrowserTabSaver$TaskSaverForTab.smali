.class Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;
.super Landroid/os/AsyncTask;
.source "SBrowserTabSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskSaverForTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mEncryptedState:Z

.field mInstanceIndex:I

.field mSavedState:Z

.field mTab:Lcom/sec/android/app/sbrowser/common/Tab;

.field mTabId:I

.field mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Lcom/sec/android/app/sbrowser/common/Tab;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mSavedState:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mInstanceIndex:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabId:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mEncryptedState:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mInstanceIndex:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskSaverForTab doInBackground "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskSaverForTab doInBackground "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabId:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Landroid/app/Activity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mEncryptedState:Z

    iget v6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mInstanceIndex:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sbrowser/common/Tab;->saveState(ILjava/lang/Object;Landroid/app/Activity;ZI)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mSavedState:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskSaverForTab IOException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Out of memory error while attempting to save tab state.  Erasing."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabId:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mParentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$100(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Landroid/app/Activity;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mEncryptedState:Z

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mInstanceIndex:I

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/common/Tab;->deleteStateFile(ILandroid/app/Activity;ZI)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mSavedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->tabStateWasPersisted()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSaverForTab onPostExecute tabStateWasPersisted "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1602(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSaverForTab saveNextTab"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mInstanceIndex:I

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveNextTab(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1700(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSaverForTab onPostExecute Error "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskSaverForTab;->mTabState:Lcom/sec/android/app/sbrowser/common/Tab$TabState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSaverForTab onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskSaverForTab onPreExecute FAIL "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
