.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;
.super Ljava/lang/Object;
.source "BookmarkCommonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->addBookObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

.field final synthetic val$editable:Z

.field final synthetic val$favicon:[B

.field final synthetic val$isOpBookmark:Z

.field final synthetic val$parentId:Ljava/lang/Long;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZZ[B)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$type:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$editable:Z

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$isOpBookmark:Z

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$favicon:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v9

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->clearUndos(Landroid/content/Context;)V
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$200(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v2

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$type:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    sget-object v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$title:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObjectFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getPostion(Ljava/lang/Long;Ljava/lang/Long;)I
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "PARENT"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "URL"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SURL"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "TITLE"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$title:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "EDITABLE"

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$editable:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$isOpBookmark:Z

    if-eqz v9, :cond_3

    const-string v9, "bookmark_type"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    const-string v9, "FOLDER"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "FAVICON"

    const/4 v10, 0x0

    new-array v10, v10, [B

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v9, "POSITION"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "DEVICE_ID"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SYNC4"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->generateKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "DEVICE_NAME"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "CREATED"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "SYNC5"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "MODIFIED"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "DIRTY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_1

    const-string v9, "ACCOUNT_NAME"

    sget v10, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ACCOUNT_TYPE"

    sget v10, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->SAMSUNG_ACCOUNT_TYPE:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SYNC5"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-eqz v6, :cond_2

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateChildrenCount(Ljava/lang/Long;I)V
    invoke-static {v9, v10, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;I)V

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$title:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObjectFolder(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x14

    invoke-static {v9, v10, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    const-string v9, "bookmark_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$type:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    sget-object v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v9, v10, :cond_d

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xf

    invoke-static {v9, v10, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getPostion(Ljava/lang/Long;Ljava/lang/Long;)I
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "PARENT"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "URL"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SURL"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/SURL;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "TITLE"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$title:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "EDITABLE"

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$editable:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$isOpBookmark:Z

    if-eqz v9, :cond_9

    const-string v9, "bookmark_type"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v9, "FOLDER"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$favicon:[B

    if-nez v9, :cond_a

    const-string v9, "FAVICON"

    const/4 v10, 0x0

    new-array v10, v10, [B

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_3
    const-string v9, "POSITION"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "DEVICE_ID"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SYNC4"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->generateKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "DEVICE_NAME"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "CREATED"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "MODIFIED"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "DIRTY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_7

    const-string v9, "ACCOUNT_NAME"

    sget v10, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "ACCOUNT_TYPE"

    sget v10, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkProviderUtility;->SAMSUNG_ACCOUNT_TYPE:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "SYNC5"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v9, -0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-eqz v6, :cond_8

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getChildrenSize(J)I
    invoke-static {v9, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;J)I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$parentId:Ljava/lang/Long;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->updateChildrenCount(Ljava/lang/Long;I)V
    invoke-static {v9, v10, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;I)V

    :cond_8
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$url:Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_b

    const-string v9, "Bookmarks"

    invoke-virtual {v1, v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setParentName(Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x14

    invoke-static {v9, v10, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    const-string v9, "bookmark_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_a
    const-string v9, "FAVICON"

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->val$favicon:[B

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_3

    :cond_b
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    #calls: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getBookmarkObject(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    invoke-static {v9, v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setParentName(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController$5;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
