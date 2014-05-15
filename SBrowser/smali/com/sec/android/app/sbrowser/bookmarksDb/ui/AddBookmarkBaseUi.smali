.class public abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;
.super Ljava/lang/Object;
.source "AddBookmarkBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkUi;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

.field protected mBookmarked:Z

.field protected mFolderName:Ljava/lang/String;

.field protected mIsInEditMode:Z

.field protected mTitle:Ljava/lang/String;

.field protected mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mBookmarked:Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mFolderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mIsInEditMode:Z

    return-void
.end method


# virtual methods
.method public configureAndShowView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mURL:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public handleLanguageChange()V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;)V
    .locals 2

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setBookmarkTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setBookmarkUrlEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mIsInEditMode:Z

    return-void
.end method

.method public setUndoBarMargin()V
    .locals 0

    return-void
.end method
