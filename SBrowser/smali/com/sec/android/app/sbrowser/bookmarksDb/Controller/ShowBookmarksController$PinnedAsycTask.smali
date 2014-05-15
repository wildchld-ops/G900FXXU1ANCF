.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;
.super Landroid/os/AsyncTask;
.source "ShowBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedAsycTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    const-string v12, "_id"

    const-string v9, "title"

    const-string v11, "url"

    const-string v8, "position"

    const-string v10, "touchicon"

    const-string v7, "parent"

    const-string v6, "dominant"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "url"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "parent"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "position"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "touchicon"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "dominant"

    aput-object v1, v2, v0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "position DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabList:Ljava/util/ArrayList;
    invoke-static {v0, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->access$1602(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    goto :goto_0
.end method
