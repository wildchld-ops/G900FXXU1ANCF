.class Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;
.super Ljava/lang/Object;
.source "SBrowserBookmarkSyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->updateBookmarksTable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

.field final synthetic val$downSyncCount:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput p2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->val$downSyncCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->val$downSyncCount:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BookmarkSyncStoped(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #setter for: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J
    invoke-static {v2, v6, v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$402(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;J)J

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #getter for: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->pcBookmarksEnabled:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$000(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->updatePcBookmarks()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$100(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->removeDuplicates()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->removeNullUrls()I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$200(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->updateChildrenCount()V

    const-string v2, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBookmarksTable : updatedRows : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    const-string v2, "SBrowserBookmarkSyncController:SBrowserSync"

    const-string v3, "triggerBookmarksyncManually : calls notifyChange for sync"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->val$downSyncCount:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BookmarkSyncStoped(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #setter for: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J
    invoke-static {v2, v6, v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$402(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;J)J

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBookmarksTable Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #calls: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$300(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->val$downSyncCount:I

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BookmarkSyncStoped(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #setter for: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J
    invoke-static {v2, v6, v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$402(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;J)J

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->val$downSyncCount:I

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BookmarkSyncStoped(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v3, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v3, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    iput-wide v6, v3, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;->this$0:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;

    #setter for: Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J
    invoke-static {v3, v6, v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->access$402(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;J)J

    throw v2
.end method
