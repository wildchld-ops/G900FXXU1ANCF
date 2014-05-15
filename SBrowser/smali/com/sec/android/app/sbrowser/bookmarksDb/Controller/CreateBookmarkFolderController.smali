.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.source "CreateBookmarkFolderController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUiController;


# instance fields
.field handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

.field private mAddFolderParentPosition:I

.field private mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

.field private mDoneButtonSelected:Z

.field private mFolderId:Ljava/lang/Long;

.field private mFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mDoneButtonSelected:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderId:Ljava/lang/Long;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->handler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mAddFolderParentPosition:I

    return-void
.end method

.method private Init(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FolderID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderId:Ljava/lang/Long;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUiController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->configureAndShowView()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mDoneButtonSelected:Z

    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doneButtonSelected(Ljava/lang/String;I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mDoneButtonSelected:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-string v0, "SelectBookmarkFolderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doneButtonSelected(); new folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,parent folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->addBookObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;[BZ)V

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mDoneButtonSelected:Z

    goto :goto_0
.end method

.method public finishActivity()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    goto :goto_0
.end method

.method public getObjectsSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
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
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    sget-object v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v13, v14, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object/from16 v10, p2

    check-cast v10, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mDoneButtonSelected:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_7

    add-int/lit8 v5, v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v13

    if-eq v14, v13, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v5, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->getSelectedFolderID()J

    move-result-wide v14

    invoke-interface {v13, v14, v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->displayList()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v13

    if-ne v14, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->getSelectedFolderID()J

    move-result-wide v13

    int-to-long v15, v5

    cmp-long v13, v13, v15

    if-ltz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->getSelectedFolderID()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-interface {v13, v14, v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getSpacingValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->setSpacingValue(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->getSelectedFolderID()J

    move-result-wide v14

    invoke-interface {v13, v14, v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v13, v14, :cond_0

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->displayList()V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_4
    move-object/from16 v11, p2

    check-cast v11, Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_0

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    const-wide/16 v14, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :pswitch_5
    move-object/from16 v12, p2

    check-cast v12, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v12, :cond_0

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_c

    const/4 v9, 0x0

    add-int/lit8 v1, v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mFolderList:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a

    add-int/lit8 v9, v9, 0x1

    :cond_a
    const/4 v13, 0x2

    if-lt v9, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    const-wide/16 v14, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :pswitch_6
    move-object/from16 v7, p2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_0

    const/4 v8, 0x2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    const-wide/16 v14, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->setFolderIDforSelection(J)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    :pswitch_7
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->getBookmarkObjectHierarchy(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->handleLanguageChange()V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/samsung/chrome/browser/SbrChromeBrowserProvider;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->Init(Landroid/os/Bundle;)V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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

    return-void
.end method

.method public setParentActivity(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/CreateBookmarkFolderController;->mCreateBookmarkFolderUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderUi;

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
