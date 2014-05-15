.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;
.super Landroid/os/Handler;
.source "AddBookmarkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mEditBookmarked:Z
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01e6

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v2

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;J)J

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;J)J

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;J)J

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01e9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->access$602(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method
