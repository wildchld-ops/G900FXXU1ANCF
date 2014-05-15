.class public abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;
.super Ljava/lang/Object;
.source "MoveToFolderBookmarkBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarksUi;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mMoveToFolderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mMoveToFolderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;

    return-void
.end method


# virtual methods
.method public setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;)V
    .locals 3

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mMoveToFolderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/MoveToFolderBookmarksUiController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/MoveToFolderBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
