.class public abstract Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;
.super Ljava/lang/Object;
.source "SelectBookmarkFolderBaseUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderUi;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

.field protected mFolderList:Landroid/widget/ListView;

.field protected mFolderListTitlebar:Landroid/widget/LinearLayout;

.field protected mFolderName:Landroid/widget/TextView;

.field protected mFolderNameInput:Landroid/widget/EditText;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderListTitlebar:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    return-void
.end method


# virtual methods
.method public Initialise()V
    .locals 0

    return-void
.end method

.method public configureAndShowView()V
    .locals 0

    return-void
.end method

.method public handleLanguageChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0159

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public setBookmarkActivityAndController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;)V
    .locals 2

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method
