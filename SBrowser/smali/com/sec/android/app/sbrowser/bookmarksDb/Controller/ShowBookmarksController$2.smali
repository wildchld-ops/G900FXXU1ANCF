.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;
.super Landroid/os/Handler;
.source "ShowBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->isBookmarksCABShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->exitCABMode()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$602(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)I

    move-result v3

    if-le v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->fillImages(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS_WITH_BUBBLE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->addAncestors(Ljava/util/ArrayList;Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$802(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "chrome://newtab/#incognito"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->toggleAddBookmark(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->initializePinned()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->fillImages(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->toggleAddBookmark(Z)V

    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->initializePinned()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->toggleAddBookmark(Z)V

    goto :goto_5

    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v1, v2

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-result-object v2

    invoke-interface {v2, v1, v7, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->appendAncestor(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I
    invoke-static {v2, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;I)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
