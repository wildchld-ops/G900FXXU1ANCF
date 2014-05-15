.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;
.super Landroid/os/Handler;
.source "MoveToFolderBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateCABViewChanges(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->setParentFolderName(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
