.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getAllAncestorBookmarkObjects(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->val$id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->val$id:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->val$id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I
    invoke-static {v3, v6, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I
    invoke-static {v3, v6, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
