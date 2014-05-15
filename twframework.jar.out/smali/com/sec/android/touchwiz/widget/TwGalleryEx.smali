.class public Lcom/sec/android/touchwiz/widget/TwGalleryEx;
.super Landroid/widget/AdapterView;
.source "TwGalleryEx.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;",
        "Landroid/view/GestureDetector$OnGestureListener;"
    }
.end annotation


# static fields
.field static final CACHING_MODE:Z


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mCachingSize:I

.field private mDataChanged:Z

.field private mFirstIndex:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

.field private mNeedToPassScrollEvent:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

.field private final mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

.field private final mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

.field private mScrapAllView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mFirstIndex:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->initGalleryEx(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mFirstIndex:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->initGalleryEx(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->retrieveFromScrap(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initGalleryEx(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->setChildrenDrawingOrderEnabled(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private retrieveFromScrap(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->get(I)Landroid/view/View;
    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->get()Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$800(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method createLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
    .locals 2

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    float-to-int v1, p3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onFling(F)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v2

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->fillActiveViews(II)V
    invoke-static {v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$400(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v4, v2, v6}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->layoutchildren(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->scrapActiveViews()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)V

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mFirstIndex:I

    add-int/2addr v5, v3

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->put(ILandroid/view/View;)V
    invoke-static {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;ILandroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->measureChildren(II)[I

    move-result-object v0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->setMeasuredDimension(II)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onScroll(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onOverScroll(II)Z

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    #calls: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->clear()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$300(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)V

    return-void
.end method

.method public setLayoutController(Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->scrollToPosition(IZ)V

    return-void
.end method

.method public setonScrollListener(Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->scrollToPosition(IZ)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 0

    return-void
.end method
