.class Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;
.super Landroid/os/AsyncTask;
.source "SBrowserTabSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskListSaver"
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
.field mInstanceIndex:I

.field mListData:[B

.field mStateSaved:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mStateSaved:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mInstanceIndex:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mInstanceIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;ILcom/sec/android/app/sbrowser/common/SBrowserTabSaver$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;-><init>(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mListData:[B

    if-nez v1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mListData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mListData:[B

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mInstanceIndex:I

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToFile([BI)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1300(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mListData:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mStateSaved:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1402(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;)Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPreExecute"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->mIsDestroyed:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$600(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskListSaver saveListToMemory called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mInstanceIndex:I

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->saveListToMemory(I)[B
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;->access$1500(Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mListData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserTabSaver$TaskListSaver;->mListData:[B

    goto :goto_0
.end method
