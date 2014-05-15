.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;
.super Landroid/os/Handler;
.source "SelectBookmarkFolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01eb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->displayList()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01e9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01ea

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xf -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method
