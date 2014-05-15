.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;
.super Landroid/os/Handler;
.source "CreateBookmarkFolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$102(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->displayList()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderId:Ljava/lang/Long;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setSelectedPosition(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderId:Ljava/lang/Long;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01e9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mDoneButtonSelected:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method
