.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;
.source "ReorderBookmarksPhoneUi.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;
.implements Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;
.implements Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

.field private mCache:Landroid/graphics/Bitmap;

.field private mChildrenPostion:I

.field private mDraggedViewBitmap:Landroid/graphics/Bitmap;

.field private mFolderButtonContainer:Landroid/widget/RelativeLayout;

.field private mFolderButtonViewHolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPathParentView:Landroid/widget/HorizontalScrollView;

.field private mGridViewWidth:I

.field private mMainView:Landroid/widget/LinearLayout;

.field private mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

.field private mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    iput v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mGridViewWidth:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mChildrenPostion:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mChildrenPostion:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mChildrenPostion:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private getSpaceRequiredToFitGridItemsInARow(I)I
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090146

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v5, 0x1

    if-gt p1, v5, :cond_0

    const/4 p1, 0x1

    :cond_0
    mul-int v5, v0, p1

    add-int/2addr v5, v2

    add-int/lit8 v6, p1, -0x1

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    add-int v4, v5, v3

    return v4
.end method


# virtual methods
.method public OnDragAndDropStart()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getDisplayMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->getDragView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getDisplayMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->getDragView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public OnDragAndDropStop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mDraggedViewBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public allowDrag(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allowDrop(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configureAndShowView()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040077

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    move-object v6, v5

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0a01e9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0a01e8

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const v6, 0x7f0a00ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040002

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0062

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0064

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->setDataOnDropDone(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public enableDragNDrop()V
    .locals 6

    const v2, 0x7f02028e

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getDisplayMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePositionGravity(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwDndGridView$TwDndListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragGrabHandleDrawable(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragGrabHandlePositionGravity(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragGrabHandlePadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDndMode(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mGridViewWidth:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0156

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v5, v5, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setDragGrabHandlePadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setVerticalSpacing(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mGridViewWidth:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mGridViewWidth:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->getSpaceRequiredToFitGridItemsInARow(I)I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->getSpaceRequiredToFitGridItemsInARow(I)I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->getSpaceRequiredToFitGridItemsInARow(I)I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->getSpaceRequiredToFitGridItemsInARow(I)I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->getSpaceRequiredToFitGridItemsInARow(I)I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setNumColumns(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->commitReorder()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a02de -> :sswitch_2
        0x7f0a02df -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->isOrderChanged()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
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

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_0
    if-ltz v2, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04001e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const v9, 0x7f0a00e4

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v9, 0x7f0a00e5

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v2, v9, :cond_1

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    new-instance v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;

    invoke-direct {v8, p0, v7, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v9, v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v9, v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v9, v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;->mPathIndicatorButton:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v9, v8, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;->mPathIndicatorButton:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    if-eqz v2, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    const v9, 0x7f090116

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v10, 0x1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;

    iget-object v9, v9, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$ViewHolder;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    invoke-virtual {v5, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_4
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonViewHolderList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v7, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    new-instance v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$5;

    invoke-direct {v10, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi$5;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;)V

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x1

    :goto_5
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v9

    if-gt v4, v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->bringToFront()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x4000

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08002f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    :cond_3
    const v9, 0x7f0c01d3

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_4
    const v9, 0x7f090113

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v10

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v11

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public updateReorderBookmarksGrid()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setVisibility(I)V

    return-void
.end method

.method public updateReorderBookmarksList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mReorderBookmarksGrid:Lcom/sec/android/touchwiz/widget/TwDndGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndGridView;->setVisibility(I)V

    return-void
.end method

.method public updateViews()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->notifyDataSetChanged()V

    return-void
.end method
