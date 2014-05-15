.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->deleteBookmarks(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$delObjs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v10, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v8

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->clearUndos(Landroid/content/Context;)V
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$200(Landroid/content/Context;)V

    const/4 v4, 0x0

    const-string v5, "_ID = ? AND DELETED = ? AND IS_COMMITED = ?"

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x3

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    const/4 v8, 0x2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "IS_COMMITED"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-lez v4, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v4, v8, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v10

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateChildrenCount(Ljava/lang/Long;I)V
    invoke-static {v9, v8, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x15

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->val$delObjs:Ljava/util/ArrayList;

    invoke-static {v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$11;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
