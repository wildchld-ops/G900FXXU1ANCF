.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;
.super Landroid/os/Handler;
.source "EditBookmarkFolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mBMobj:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mActivity:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;

    move-result-object v0

    const v1, 0x7f0c01e9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->mDoneButtonSelected:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->access$202(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;Z)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method
