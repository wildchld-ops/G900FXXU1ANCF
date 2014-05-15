.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.source "MoveToFolderBookmarksController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;
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

.field mChildrenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mDoneButtonSel:Z

.field mHandler:Landroid/os/Handler;

.field private mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

.field private mImageHandler:Landroid/os/Handler;

.field private mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

.field private mUpdateImagesFrom:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mDoneButtonSel:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageHandler:Landroid/os/Handler;

    return-void
.end method

.method private Init(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookmark_object"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->configureAndShowView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getAllAncestorBookmarkObjects(J)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    return v0
.end method

.method private clearAsyncTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method public allCheckbuttonselected(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setChecked(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillImages(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v3, v4, :cond_2

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    new-instance v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$1;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->GRID_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController$ImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v3, v4, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    sget-object v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->mNotifications:[I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isFaviconRequested()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lorg/samsung/chrome/browser/SbrFaviconController;->getInstance()Lorg/samsung/chrome/browser/SbrFaviconController;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

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

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    goto/16 :goto_0
.end method

.method public finishActivity()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method public getChilderensize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->getCount()I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mRootBookmarkObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public getShowMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mShowMode:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    return-object v0
.end method

.method public getchild(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public isAnyObjectChecked()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEnablePopUp()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->enablePopUpMenuItems(ZZ)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-ne v2, v0, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v3, v5, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->enablePopUpMenuItems(ZZ)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v3, v4, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->enablePopUpMenuItems(ZZ)V

    goto :goto_1
.end method

.method public launchSelectBookmarkActivity()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mDoneButtonSel:Z

    if-nez v3, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mDoneButtonSel:Z

    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "FromMoveToFolder"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "listOfIds"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x65

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

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
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-object/from16 v21, v0

    sget-object v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v6

    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object/from16 v15, p2

    check-cast v15, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v21

    sget-object v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v21

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isContainChilderen()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :pswitch_3
    move-object/from16 v8, p2

    check-cast v8, Ljava/util/ArrayList;

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_9

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->finish()V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_9
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-nez v21, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v19, p2

    check-cast v19, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v19, :cond_0

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v3, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v21

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->setParentFolderName(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-nez v21, :cond_0

    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v21

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isChecked()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :pswitch_5
    move-object/from16 v13, p2

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-eqz v21, :cond_d

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-nez v21, :cond_e

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_e
    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-eqz v21, :cond_f

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_10

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :pswitch_6
    move-object/from16 v18, p2

    check-cast v18, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-nez v21, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getBookmarkObjectChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v9, p2

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_15

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_16

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    :cond_13
    :goto_b
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    :cond_14
    if-eqz v17, :cond_17

    if-eqz v14, :cond_17

    :cond_15
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v21

    cmp-long v21, v21, v6

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    goto/16 :goto_0

    :cond_16
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_13

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getNoOfChildren()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setNoOfChildren(I)V

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ge v4, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    goto/16 :goto_b

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->getAllAncestorBookmarkObjects(J)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v20, p2

    check-cast v20, Ljava/lang/String;

    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v21

    sget-object v22, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->clearThumbnailRequested()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v10, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0xc

    move/from16 v0, v21

    if-gt v10, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mUpdateImagesFrom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->fillImages(I)V

    goto/16 :goto_0

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mAncestorsList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->setParentFolderName(Ljava/util/ArrayList;)V

    :cond_0
    return-void
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->Init(Landroid/os/Bundle;)V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->clearAsyncTask()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->clearThumbnail()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public toggleAllCheckbox(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateCABViewChanges(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateCABViewChanges(I)V

    goto :goto_1
.end method

.method public updateAllCheckButton()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mChildrenList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksController;->mMoveToFolderBookmarksUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;->updateChildren()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
