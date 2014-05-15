.class Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "ReorderBookmarksController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;)V

    #setter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$202(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;->access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksController$ImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
