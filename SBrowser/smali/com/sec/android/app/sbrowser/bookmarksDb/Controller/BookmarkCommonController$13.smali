.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->reorderBookmarks(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$objectToReorder:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field final synthetic val$reorderObjects:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$objectToReorder:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->clearUndos(Landroid/content/Context;)V
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$200(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$objectToReorder:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v10

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildren(J)Ljava/util/ArrayList;
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v10

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getOrderPositon()I

    move-result v10

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getOrderPositon()I

    move-result v9

    if-ne v10, v9, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v10

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const-string v9, "POSITION"

    add-int/lit8 v10, v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "DIRTY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v1, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isOperatorBookmark()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v9, 0x1

    if-ne v1, v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$reorderObjects:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isOperatorBookmark()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const-string v9, "bookmark_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x18

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->val$objectToReorder:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$13;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
