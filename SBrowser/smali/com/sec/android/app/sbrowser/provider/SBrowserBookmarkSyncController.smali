.class public Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;
.super Ljava/lang/Object;
.source "SBrowserBookmarkSyncController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;
    }
.end annotation


# static fields
.field static final INVALID_BOOKMARK_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "SBrowserBookmarkSyncController"

.field private static canPrintStackTrace:Z

.field public static notifyToUI:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;


# instance fields
.field public final BOOKMARK_IS_FOLDER_PARAM:Ljava/lang/String;

.field public final BOOKMARK_NODE_DELETE_FAILED:I

.field public final BOOKMARK_NODE_DELETE_SUCCESSFUL:I

.field public final BOOKMARK_NODE_IS_NULL:I

.field public final BOOKMARK_PARENT_ID_PARAM:Ljava/lang/String;

.field private bookmarkSyncCompleted:Z

.field bookmarkUri:Landroid/net/Uri;

.field protected chromeFolderId:J

.field public count:I

.field private firefoxFolderId:J

.field public getBookmarkIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected ieFolderId:J

.field mActivity:Landroid/content/Context;

.field public mContentResolver:Landroid/content/ContentResolver;

.field private mSBrowserBookmarkModelSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkModelSyncNotifier;

.field private mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

.field public mydeviceId:J

.field public noOfBkmarksGotFromDB:I

.field public noOfBkmarksWrittenIntoJSon:I

.field protected operaFolderId:J

.field pcBookmark:Z

.field private pcBookmarksEnabled:Z

.field values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->canPrintStackTrace:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->notifyToUI:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->values:Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    const-string v0, "parentId"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BOOKMARK_PARENT_ID_PARAM:Ljava/lang/String;

    const-string v0, "isFolder"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BOOKMARK_IS_FOLDER_PARAM:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->count:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mydeviceId:J

    iput v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->noOfBkmarksWrittenIntoJSon:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->noOfBkmarksGotFromDB:I

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkSyncCompleted:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mSBrowserBookmarkModelSyncNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkModelSyncNotifier;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->getBookmarkIdList:Ljava/util/ArrayList;

    iput v5, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BOOKMARK_NODE_IS_NULL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BOOKMARK_NODE_DELETE_SUCCESSFUL:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->BOOKMARK_NODE_DELETE_FAILED:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getEnablePcBookmarks()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->pcBookmarksEnabled:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bookmark_sync_local_changes"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mSBrowserSyncStateNotifier:Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserSyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;)V

    :cond_1
    return-void
.end method

.method public static BookmarkSyncStarted()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->notifyToUI:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->NOT_INITIALIZED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->notifyToUI:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STOPPED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "SBrowserBookmarkSyncController:SBrowserSync"

    const-string v1, "bookmark sync started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STARTED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    sput-object v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->notifyToUI:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    :cond_1
    return-void
.end method

.method public static BookmarkSyncStoped(I)V
    .locals 4

    const-string v1, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bookmark sync stopped : downSyncCount :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;->SYNC_STOPPED:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    sput-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->notifyToUI:Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$SyncStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->pcBookmarksEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->updatePcBookmarks()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->removeNullUrls()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J

    return-wide p1
.end method

.method private checkBookmarkForDesktopPlugin(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    const-string v2, "_Desktop[_IE]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->getDesktopBookmarksFolder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->ieFolderId:J

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    const-string v2, "_Chrome_Desktop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->getDesktopBookmarksFolder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    :cond_3
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->chromeFolderId:J

    goto :goto_0

    :cond_4
    const-string v2, "_Opera_Desktop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->getDesktopBookmarksFolder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    :cond_5
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->operaFolderId:J

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->FIREFOX_PLUGIN:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->getDesktopBookmarksFolder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J

    :cond_7
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->firefoxFolderId:J

    goto :goto_0
.end method

.method private checkForDesktopBookmarksFolder(Ljava/lang/String;)J
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_ID"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_ID"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    :goto_0
    move-wide v0, v8

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    const-wide/16 v0, -0x1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in  getDesktopBookmarksFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method private createPcBookmarksFolder()J
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v0, -0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "TITLE"

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    const v6, 0x7f0c02e9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "FOLDER"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "DIRTY"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "bookmark_type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "EDITABLE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v4, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPcBookmarksFolder : id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method private getDesktopBookmarksFolder(Ljava/lang/String;)J
    .locals 9

    const-wide/16 v7, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->getPcBookmarksFolderId()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    cmp-long v5, v2, v7

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TITLE = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bookmark_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->checkForDesktopBookmarksFolder(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v5, v0, v7

    if-nez v5, :cond_0

    invoke-direct {p0, v2, v3, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->insertPluginFoldertoDB(JLjava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private getPcBookmarksFolderId()J
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_ID"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TITLE = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bookmark_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=2 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PARENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_ID"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_1
    move-wide v0, v8

    :cond_1
    :goto_2
    return-wide v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->createPcBookmarksFolder()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in  getPcBookmarksFolderId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method private insertPluginFoldertoDB(JLjava/lang/String;)J
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v0, -0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "TITLE"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "FOLDER"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "DIRTY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "PARENT"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "bookmark_type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "EDITABLE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v4, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertPluginFoldertoDB : title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v0
.end method

.method private static printExceptionStackTrace(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->canPrintStackTrace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private removeNullUrls()I
    .locals 6

    const/4 v4, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "DELETED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "DIRTY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "MODIFIED"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "SYNC5"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    const-string v4, "FOLDER = 0 AND (URL = \'\' OR URL IS NULL OR TITLE= \'\' OR URL IS NULL)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v2, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNullUrls: updated :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private updatePcBookmarks()V
    .locals 14

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_ID"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "PARENT"

    aput-object v1, v2, v0

    const-string v0, "DEVICE_ID"

    aput-object v0, v2, v4

    const/4 v0, 0x3

    const-string v1, "URL"

    aput-object v1, v2, v0

    const/4 v6, -0x1

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    const-string v5, "SYNC5 COLLATE LOCALIZED ASC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETED != 1 AND DEVICE_ID LIKE \'%_Desktop[_IE]%\' OR DEVICE_ID LIKE \'%_Opera_Desktop%\' OR DEVICE_ID LIKE \'%_Chrome_Desktop%\' OR DEVICE_ID LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->FIREFOX_PLUGIN:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->values:Landroid/content/ContentValues;

    const-string v0, "_ID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "PARENT"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    const-string v0, "DEVICE_ID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_1

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->checkBookmarkForDesktopPlugin(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->values:Landroid/content/ContentValues;

    const-string v1, "PARENT"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->values:Landroid/content/ContentValues;

    const-string v1, "EDITABLE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->values:Landroid/content/ContentValues;

    const-string v1, "bookmark_type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->values:Landroid/content/ContentValues;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_ID == \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v4, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v9

    :try_start_1
    const-string v0, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePcBookmarks Exception "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public QueryForParentBookmarkId(Ljava/lang/String;)J
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYNC4 == \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "BOOKMARK_ID"

    aput-object v0, v2, v4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->bookmarkUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v6, v0

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide v6

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "SBrowserBookmarkSyncController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryForParentBookmarkId Exception "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDownSyncCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiving SBROWSER_BOOKMARK_SYNC_COMPLETED : downSyncCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->updateBookmarksTable(I)V

    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDownSyncCount(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getDownSyncCount(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiving SBROWSER_SYNC_COMPLETED : downSyncCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->updateBookmarksTable(I)V

    const-string v2, "sync_bookmarks"

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->updateDownSyncCount(Ljava/lang/String;I)V

    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkSyncCompleted:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected removeDuplicates()I
    .locals 24

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "URL"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "TITLE"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "FOLDER"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "PARENT"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "DELETED"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "SYNC5"

    aput-object v2, v3, v1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/4 v11, -0x1

    const/4 v14, -0x1

    const/16 v20, 0x0

    const-string v19, ""

    const-string v21, ""

    const-string v18, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETED!= 1 AND bookmark_type = 0 AND NOT (DEVICE_ID  LIKE  \'%_Desktop[_IE]%\' OR DEVICE_ID LIKE  \'%_Chrome_Desktop%\' OR DEVICE_ID  LIKE \'%_Opera_Desktop%\' OR DEVICE_ID LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkConstants;->FIREFOX_PLUGIN:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, " SYNC5 DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_5

    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "FOLDER"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v1, "SYNC5"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v1, "PARENT"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v1, "_ID"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v16, :cond_2

    const-string v1, "URL"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETED != 1 AND URL = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PARENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SYNC5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bookmark_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v23, v22

    :goto_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_ID"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "DELETED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "DIRTY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "MODIFIED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "SYNC5"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    add-int v20, v20, v1

    move-object/from16 v23, v22

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v13, 0x0

    move-object/from16 v22, v23

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    :try_start_4
    const-string v1, "TITLE"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETED != 1 AND TITLE = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PARENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SYNC5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v23, v22

    :goto_2
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_ID"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v1, "PARENT"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "DIRTY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "MODIFIED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "SYNC5"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PARENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int v20, v20, v1

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    const-string v1, "DELETED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "DIRTY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "MODIFIED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "SYNC5"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int v20, v20, v1

    goto/16 :goto_2

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v13, 0x0

    move-object/from16 v22, v23

    goto/16 :goto_0

    :cond_4
    :try_start_8
    const-string v1, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate entries : updated : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v12, 0x0

    :cond_5
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_7
    :goto_3
    return v20

    :catch_0
    move-exception v15

    :goto_4
    :try_start_9
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_8
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_a
    throw v1

    :catchall_1
    move-exception v1

    move-object/from16 v22, v23

    goto :goto_5

    :catch_1
    move-exception v15

    move-object/from16 v22, v23

    goto :goto_4
.end method

.method protected updateBookmarksTable(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController$1;-><init>(Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateChildrenCount()V
    .locals 15

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v8, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_ID"

    aput-object v3, v2, v1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    const-string v3, "FOLDER = 1 AND DELETED != 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string v1, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChildrenCount : folderCursor.getCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v12

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_ID"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARENT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->bookmarkUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v1, "CHILDREN_COUNT"

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x190

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v13}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v14

    const-string v1, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChildrenCount : updated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v12

    goto/16 :goto_0

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v13}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v14

    const-string v1, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChildrenCount : updated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v12, v13

    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception v10

    :goto_2
    :try_start_2
    const-string v1, "SBrowserBookmarkSyncController:SBrowserSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChildrenCount exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/provider/SBrowserBookmarkSyncController;->printExceptionStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_8
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_9
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_c
    throw v1

    :catchall_1
    move-exception v1

    move-object v12, v13

    goto :goto_3

    :catch_1
    move-exception v10

    move-object v12, v13

    goto :goto_2
.end method
