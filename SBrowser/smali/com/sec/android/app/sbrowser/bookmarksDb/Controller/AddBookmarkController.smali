.class public Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;
.source "AddBookmarkController.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IActivityController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;
.implements Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;


# instance fields
.field handler:Landroid/os/Handler;

.field private mAccountName:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

.field private mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

.field private mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mDeleteDialogOkPressed:Z

.field private mDoneButtonSelected:Z

.field private mEditBookmarked:Z

.field private mFavicon:[B

.field private mParentId:J

.field private mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

.field private mSelectFolderLayoutClicked:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTitle:Ljava/lang/String;

.field private mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkCommonController;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDeleteDialogOkPressed:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mFavicon:[B

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mEditBookmarked:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->handler:Landroid/os/Handler;

    return-void
.end method

.method private Init(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mEditBookmarked:Z

    if-nez p1, :cond_1

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    :cond_0
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bookmarked"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mEditBookmarked:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->configureAndShowView(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_add_bookmark_view_folder"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    :goto_0
    const-string v1, "favicon"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mFavicon:[B

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->updateAddBookmarkHeaderIcon()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkAccountName(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c01d3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c015b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mEditBookmarked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/UndoBarController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    return-object v0
.end method

.method private showUndoBar()V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0079

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-direct {v2, v1, p0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0238

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->setUndoBarMargin()V

    return-void
.end method


# virtual methods
.method public cancelButtonSelected()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public deleteButtonSelected()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDeleteDialogOkPressed:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDeleteDialogOkPressed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->deleteBookmarks(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doneButtonSelected()V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setErrorBasedOnScenario()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setDoneButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0217

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c032a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007c

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v4

    sget-object v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isOperatorBookmark()Z

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getOrderPositon()I

    move-result v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->editBookmark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;ZI)V

    :goto_1
    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mFavicon:[B

    move-object v0, p0

    move v4, v9

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->addBookObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;[BZ)V

    goto :goto_1
.end method

.method public finishActivity()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootNode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    return-object v0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public handleSelectFolderLayoutClick()V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FolderID"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
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
    .locals 6

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-class v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 11

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    goto :goto_0

    :pswitch_3
    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-eq v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c01e5

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    check-cast p2, Ljava/util/ArrayList;

    move-object v4, p2

    check-cast v4, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDeleteDialogOkPressed:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDeleteDialogOkPressed:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->showUndoBar()V

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_5
    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c01e5

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/BookmarkThumbnailWidgetProvider;->refreshWidgets(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->URL:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v7, v8, :cond_c

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    :goto_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v7, v8, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    move-object v6, p2

    check-cast v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->url()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v7, :cond_0

    const/4 v1, 0x2

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_8
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget v7, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    :goto_6
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkAccountName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c015b

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    goto :goto_6

    :pswitch_9
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mDoneButtonSelected:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c01e5

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    :goto_7
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    goto/16 :goto_0

    :cond_10
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0c01d3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_a
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkUrlEditable(Z)V

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForID(Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->getBookmarkObjectForURL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->updateDoneButton()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method public onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->handleLanguageChange()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c01d3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkParent(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->SAMSUNG_ACCOUNT_NAME:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->getSamsungAccount(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setBookmarkAccountName(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c015b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAccountName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->Init(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_add_bookmark_view_folder"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ActivityStatus;

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
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->undo(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setUi(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    return-void
.end method

.method public setUndoBarMargin()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setUndoBarMargin()V

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public updateDoneButton()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mTitle:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mCurrentObject:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->parentId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mParentId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setDoneButtonEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkController;->mAddBookmarkUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;->setDoneButtonEnabled(Z)V

    goto :goto_0
.end method
