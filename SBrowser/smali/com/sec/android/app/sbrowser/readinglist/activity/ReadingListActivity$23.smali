.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndoMultiInstance:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$23;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
