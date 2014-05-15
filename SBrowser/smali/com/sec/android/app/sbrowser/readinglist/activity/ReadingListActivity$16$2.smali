.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->closeMenuOptionsList()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->undoBarNoReadingListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheck:Z
    invoke-static {v0, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$302(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const-string v1, "_id >= 0 AND is_deleted = 0"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->createReadingListDatas(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->checkForEmptyList()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16$2;->this$1:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$16;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
