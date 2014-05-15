.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;
.super Landroid/database/ContentObserver;
.source "ShowBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PintabObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearPinnedAsyncTask()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;)V

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1802(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method
