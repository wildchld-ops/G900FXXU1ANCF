.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObjectHierarchy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$onlyFolders:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->val$onlyFolders:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    const-wide/16 v4, 0x0

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->val$onlyFolders:Z

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->recursiveAddChildren(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Z)V
    invoke-static {v3, v0, v2, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$10;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
