.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.source "ShowBookmarksController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;,
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

.field mAncestorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPageTitle:Ljava/lang/String;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mDeleteBookmarkCount:I

.field private mDeletedParentId:Ljava/lang/Long;

.field public mFragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

.field private mImageHandler:Landroid/os/Handler;

.field private mIsAddingAncestorsOnFirstLaunch:Z

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

.field private mPintabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

.field private mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShouldShowProgressBar:Z

.field private mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

.field private mShowBookmarkNodeId:Ljava/lang/Long;

.field private mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

.field mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

.field private mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

.field private mUpdateImagesFrom:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkNodeId:Ljava/lang/Long;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeletedParentId:Ljava/lang/Long;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->NO_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShouldShowProgressBar:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageHandler:Landroid/os/Handler;

    return-void
.end method

.method private Init(Landroid/os/Bundle;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-static {}, Lorg/chromium/content/app/LibraryLoader;->IsReady()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    const-string v4, "ShowBookmarksController"

    const-string v5, "initializing AndroidBrowserProcess"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lorg/chromium/content/browser/AndroidBrowserProcess;->init(Landroid/content/Context;I)Z
    :try_end_0
    .catch Lorg/chromium/content/common/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksUiController;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "perf_show_bookmark_view_mode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "perf_show bookmark_view_folder"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkNodeId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v4, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->configureAndShowView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z

    if-eqz p1, :cond_3

    const-string v4, "_id"

    sget-object v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ShowBookmarksController"

    const-string v5, " folder selected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "perf_show bookmark_sfinder"

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "url"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageTitle:Ljava/lang/String;

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/chromium/content/common/ProcessInitException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkNodeId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkNodeId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->initializePinned()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearPinnedAsyncTask()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method private clearPinnedAsyncTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    :cond_0
    return-void
.end method

.method private clearUndoBar()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeletedParentId:Ljava/lang/Long;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->SHOWING_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->NO_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->clearUndoBar()V

    :cond_1
    return-void
.end method

.method private createAllNewWindows([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "URLS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initializePinned()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/provider/QuickAccessPinnedProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPinnedAsycTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PinnedAsycTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private showUndoBar(IZ)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->SHOWING_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->showUndoBar(IZ)V

    return-void
.end method


# virtual methods
.method public addShortCut(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0001

    const v4, 0x7f0b0002

    const v5, 0x7f0b0003

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-static/range {v0 .. v6}, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->getShortcutToBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IIILandroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public clearAsyncTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    :cond_0
    return-void
.end method

.method public createNewWindow([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->createAllNewWindows([Ljava/lang/String;)V

    return-void
.end method

.method public deleteBookmarkObjects(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->CLEAR_SHOWING_UNDOS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->deleteBookmarks(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeletedParentId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public donotUndoToController()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->NO_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->donotUndo()V

    return-void
.end method

.method public fillImages(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v3, v4, :cond_2

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    new-instance v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$1;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$ImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isFaviconRequested()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v4, "ShowBookmarksController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requesting favicon for url = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-lez v0, :cond_0

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    goto/16 :goto_0
.end method

.method public finishActivity()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearPinnedAsyncTask()V

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method public getBookmarksGridView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarksListView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getChilderensize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentParentEditable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public getShowBookmarksMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    return-object v0
.end method

.method public getchild(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    goto :goto_0
.end method

.method public handleHoverFolderClick(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;J)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->appendAncestor(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;ZZ)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleRowClick(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "perf_show bookmark_sfinder"

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "perf_show bookmark_sfinder"

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "URL"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto :goto_0
.end method

.method public isUrlPinned(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchCreateFolderActivity()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FolderID"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public launchDeleteActivity()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bookmark_object"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "mode"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xe

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public launchHistoryActivity()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public launchMoveToFolderActivity()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bookmark_object"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "mode"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xf

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public launchReorderActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReOrderBookmarksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bookmark_object"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public loadInitialTabLoad()V
    .locals 0

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v2, 0x13

    if-eq p2, v2, :cond_1

    const/16 v2, 0x12

    if-ne p2, v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-string v2, "deleted_children_count"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "no_bookmark_layout"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "deleted_parent_folder_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeletedParentId:Ljava/lang/Long;

    if-lez v1, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->showUndoBar(IZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "perf_show bookmark_sfinder"

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->donotUndoToController()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 27

    const-string v22, "Bookmarks"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handling PropertyType "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v10

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->SHOWING_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    goto :goto_0

    :pswitch_2
    move-object/from16 v5, p2

    check-cast v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->fillImages(I)V

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v22

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isContainChilderen()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v12, p2

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    move/from16 v22, v0

    if-lez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->dismiss()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->isBookmarksCABShown()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->exitCABMode()V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    move/from16 v24, v0

    sub-int v22, v22, v24

    if-nez v22, :cond_9

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->showUndoBar(IZ)V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-nez v22, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_9
    const/16 v22, 0x1

    goto :goto_2

    :cond_a
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v6, v22, -0x1

    :goto_4
    if-ltz v6, :cond_c

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v23, v6, 0x1

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->selectAncestor(I)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_e

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v20, p2

    check-cast v20, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v20, :cond_0

    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->addAncestors(Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-nez v22, :cond_0

    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->isBookmarksCABShown()Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->exitCABMode()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->clearThumbnail()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->fillImages(I)V

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :pswitch_5
    move-object/from16 v19, p2

    check-cast v19, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v16, p2

    check-cast v16, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-nez v22, :cond_14

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_14
    const/4 v15, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_17

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_16

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_17
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :pswitch_7
    move-object/from16 v14, p2

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_1b

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_1f

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->clearThumbnail()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS_WITH_BUBBLE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    :cond_19
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_1a

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_1a

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    :cond_1a
    if-eqz v18, :cond_20

    if-eqz v17, :cond_20

    :cond_1b
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    cmp-long v22, v22, v10

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface/range {v22 .. v23}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    goto/16 :goto_b

    :cond_1f
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v25

    cmp-long v22, v23, v25

    if-nez v22, :cond_19

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    goto/16 :goto_b

    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    :pswitch_8
    const-string v22, "Bookmarks"

    const-string v23, "Sync completed signal  received"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->isBookmarksCABShown()Z

    move-result v22

    if-eqz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->exitCABMode()V

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->dismiss()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    cmp-long v22, v22, v3

    if-nez v22, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    const/4 v15, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    cmp-long v22, v22, v3

    if-nez v22, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :cond_24
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v21, p2

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    const/4 v15, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v22

    sget-object v23, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->clearThumbnailRequested()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0xc

    move/from16 v0, v22

    if-gt v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUpdateImagesFrom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->fillImages(I)V

    goto/16 :goto_0

    :cond_25
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_d

    :pswitch_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onClickAddBookmark()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->isBookmarksCABShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mIsAddingAncestorsOnFirstLaunch:Z

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->addAncestors(Ljava/util/ArrayList;Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS_WITH_BUBBLE:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->enableHistory(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowBookmarkLayout;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->Init(Landroid/os/Bundle;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->Init(Landroid/os/Bundle;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearPinnedAsyncTask()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->onDestroy()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mPintabObserver:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController$PintabObserver;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->clearThumbnail()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->updateChildren()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->SHOWING_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->donotUndo()V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->NO_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "perf_show bookmark_sfinder"

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "perf_show_bookmark_view_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "perf_show bookmark_view_folder"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "perf_show_bookmark_view_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public onUndo()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;->NO_UNDO:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mUndoStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$UndoStatus;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShouldShowProgressBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->show()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeletedParentId:Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->undo(Ljava/lang/Long;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestDeleteBookmarkObject(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mDeleteBookmarkCount:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShouldShowProgressBar:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->show()V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->deleteBookmarkObjects(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShouldShowProgressBar:Z

    goto :goto_1
.end method

.method public requestEditBookmarkObject(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bookmarked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public selectAncestor(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearUndoBar()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-le v0, p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setAncestorPositon(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->clearAsyncTask()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public setAsHomePage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->setHomePage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0154

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;->setFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setShowBookmarksMode(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarkMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->fillImages(I)V

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mShowBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksUi;

    return-void
.end method

.method public shareUrl(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "theme"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c0056

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "ShowBookmarks"

    const-string v5, "Share URL: There is no Share Activity"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
