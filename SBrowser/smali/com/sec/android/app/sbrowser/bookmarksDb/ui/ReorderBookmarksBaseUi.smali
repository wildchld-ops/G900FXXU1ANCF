.class public abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;
.super Ljava/lang/Object;
.source "ReorderBookmarksBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;)V
    .locals 3

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
