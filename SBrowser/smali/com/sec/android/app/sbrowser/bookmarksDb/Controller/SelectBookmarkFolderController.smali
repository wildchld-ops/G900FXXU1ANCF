.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.source "SelectBookmarkFolderController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;


# instance fields
.field handler:Landroid/os/Handler;

.field private isItFromMoveToFolder:Ljava/lang/Boolean;

.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

.field private mDoneMoveToFolder:Ljava/lang/Boolean;

.field private mEditableItems:I

.field mFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfObjectTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfObjectsIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNonEditableItems:I

.field private mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

.field mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

.field private toggleMoveToFolderFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mNonEditableItems:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mEditableItems:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->isItFromMoveToFolder:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mDoneMoveToFolder:Ljava/lang/Boolean;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->handler:Landroid/os/Handler;

    return-void
.end method

.method private Init(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->configureAndShowView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FromMoveToFolder"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->isItFromMoveToFolder:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->isItFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "listOfIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    const-string v1, "listOfTypes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/ArrayList;

    const-string v1, "non_edit_items"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mNonEditableItems:I

    const-string v1, "editable_items"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mEditableItems:I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public createBookmarkFolderActivity()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FolderID"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FolderID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishActivity()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    goto :goto_0
.end method

.method public getObjectsSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

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
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBookmarkObjectSelected(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->isItFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c01eb

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->toggleMoveToFolderFlag:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-nez v3, :cond_4

    new-instance v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->show()V

    :cond_5
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mDoneMoveToFolder:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v4, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->moveToFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    sget-object v15, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v14, v15, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object/from16 v11, p2

    check-cast v11, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v14, v15, :cond_0

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_3

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v17

    cmp-long v14, v15, v17

    if-nez v14, :cond_5

    add-int/lit8 v5, v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v14

    if-eq v15, v14, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v5, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->displayList()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v14

    if-ne v15, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v12, p2

    check-cast v12, Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_0

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :pswitch_4
    move-object/from16 v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v14, v15, :cond_0

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v17

    cmp-long v14, v15, v17

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->displayList()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mDoneMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarksProgressDialog;->dismiss()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    sget-object v15, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mNonEditableItems:I

    if-lez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0c023b

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mEditableItems:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v15, 0x0

    invoke-static {v14, v9, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/app/Activity;->setResult(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v15, 0x7f0c0216

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_b
    move-object/from16 v8, p2

    check-cast v8, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    if-eqz v14, :cond_e

    if-eqz v8, :cond_e

    const/4 v5, 0x2

    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_e

    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_d

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_0

    :cond_f
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v13, p2

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v13, :cond_0

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_0

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v17

    cmp-long v14, v15, v17

    if-nez v14, :cond_12

    const/4 v10, 0x0

    add-int/lit8 v1, v4, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v1, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v14

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_10

    add-int/lit8 v10, v10, 0x1

    :cond_10
    const/4 v14, 0x2

    if-lt v10, v14, :cond_11

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :pswitch_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->handleLanguageChange()V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->Init(Landroid/os/Bundle;)V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderController;->mSelectBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
