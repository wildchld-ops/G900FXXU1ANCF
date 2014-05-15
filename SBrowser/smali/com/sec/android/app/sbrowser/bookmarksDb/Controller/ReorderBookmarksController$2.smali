.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;
.super Landroid/os/Handler;
.source "ReorderBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->clearAsyncTask()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderObjects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mOriginalReorderObjects:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mDisplayMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;->updateReorderBookmarksList()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;->enableDragNDrop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->fillImages(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;->updateReorderBookmarksGrid()V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mAncestors:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$802(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mObjectToReorder:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mAncestors:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mReorderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mAncestors:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;->setParentFolderName(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
