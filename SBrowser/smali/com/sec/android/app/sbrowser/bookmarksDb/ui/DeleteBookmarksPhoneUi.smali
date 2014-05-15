.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;
.source "DeleteBookmarksPhoneUi.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private actionBarOK:Landroid/widget/ImageView;

.field private mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

.field private mBookmarksDisplayLayout:Landroid/widget/FrameLayout;

.field mCount:I

.field private mFolderButtonContainer:Landroid/widget/RelativeLayout;

.field private mFolderButtonViewHolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPathParentView:Landroid/widget/HorizontalScrollView;

.field private mNormalGridView:Landroid/widget/GridView;

.field private mNormalListView:Landroid/widget/ListView;

.field protected mSelectActionBarView:Landroid/view/View;

.field protected mSelectAllButton:Landroid/widget/Button;

.field private mSelectAllPopupMenu:Landroid/widget/PopupMenu;

.field private mTitleBar:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mTitleBar:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mBookmarksDisplayLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private showMenuItems(Landroid/view/Menu;Z)V
    .locals 4

    const v3, 0x7f0a030e

    const v2, 0x7f0a02e1

    const v1, 0x7f0a02dc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f0a02e2

    invoke-interface {p1, v0, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v0, 0x7f0a02dd

    invoke-interface {p1, v0, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v0, 0x7f0a02da

    invoke-interface {p1, v0, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f0a02d8

    invoke-interface {p1, v0, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const v0, 0x7f0a02e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a02e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a02e7

    invoke-interface {p1, v0, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method


# virtual methods
.method public configureAndShowView()V
    .locals 9

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001d

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBarOK:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBarOK:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    const v2, 0x7f0e0018

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->actionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mTitleBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    const v1, 0x7f0a00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    const v1, 0x7f0a00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mBookmarksDisplayLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mBookmarksDisplayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setAlwaysDisableHoverHighlight(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$5;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->getShowMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalListView:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mNormalGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_1
.end method

.method public enablePopUpMenuItems(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a033c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a033d

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    return v0
.end method

.method public handleLanguageChange()V
    .locals 0

    return-void
.end method

.method public isSelectAll()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->configureAndShowView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->showMenuItems(Landroid/view/Menu;Z)V

    const v0, 0x7f0a02d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v1, p3}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->getObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->handleRowClick(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->deleteAllCheckboxSelected()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a02d7
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a02d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->isAnyObjectChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public setParentFolderName(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;",
            ">;)V"
        }
    .end annotation

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04001e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v8, 0x7f0a00e4

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;

    invoke-direct {v7, p0, v6, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v8, v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v8, v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v8, v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;->mPathIndicatorButton:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v8, v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;->mPathIndicatorButton:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    const v8, 0x7f090116

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;

    iget-object v8, v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v8

    invoke-virtual {v4, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v6, v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    new-instance v9, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$6;

    invoke-direct {v9, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$6;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    :goto_3
    if-lez v3, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_1
    const v8, 0x7f0c01d3

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    const v8, 0x7f090113

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v8, 0x9

    invoke-virtual {v4, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public updateCABViewChanges(I)V
    .locals 5

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->isEnablePopUp()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public updateChildren()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneAdapter;->notifyDataSetChanged()V

    return-void
.end method
