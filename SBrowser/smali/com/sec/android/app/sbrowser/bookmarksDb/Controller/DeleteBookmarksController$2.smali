.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;
.super Landroid/os/Handler;
.source "DeleteBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->clearAsyncTask()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mChildren:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;->updateChildren()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;->updateCABViewChanges(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mAncestors:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mAncestors:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mAncestors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mAncestors:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mAncestors:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->clearAsyncTask()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mDeleteBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksController;->mAncestors:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksUi;->setParentFolderName(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
