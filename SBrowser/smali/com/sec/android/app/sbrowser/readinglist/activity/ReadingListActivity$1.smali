.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;
.super Landroid/database/ContentObserver;
.source "ReadingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$102(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const-string v2, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->closeMenuOptionsList()V
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForProgressDialog:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$802(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->onUndo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$102(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getTotalInstancesCounter()I

    move-result v1

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$102(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const-string v2, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForProgressDialog:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$802(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->onUndo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndo:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$102(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1$2;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1$3;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDestroying:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDestroying:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDestroying:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->hideViewOfSearch()V

    return-void

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkForEmptyList()Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mForDelete:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$900(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0238

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$1;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    goto/16 :goto_0
.end method
