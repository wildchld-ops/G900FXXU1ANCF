.class public Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;
.super Landroid/widget/GridView;
.source "QuickAccessGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;,
        Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;
    }
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1

.field private static final MOVE_DURATION:I = 0x96

.field private static final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "QuickAccessGridView"


# instance fields
.field private bookmarkView:Landroid/view/View;

.field private deletePosition:I

.field private deleteView:Landroid/view/View;

.field private isInBookmarkArea:Z

.field private isInDeleteArea:Z

.field private isMobileViewOutOfArea:Z

.field private isReorderEnable:Z

.field private mAboveId:J

.field private mAboveLeftId:J

.field private mAboveRightId:J

.field private mActivePointerId:I

.field private mBelowId:J

.field private mBelowLeftId:J

.field private mBelowRightId:J

.field private mBookmarkContainer:Landroid/widget/LinearLayout;

.field private mCellIsMobile:Z

.field private mDeleteBookmarkImageContainer:Landroid/view/View;

.field private mDeleteContainer:Landroid/widget/LinearLayout;

.field private mDownX:I

.field private mDownY:I

.field private mDropListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;

.field private mHoverAnimation:Z

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsEditMode:Z

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mLastEventX:I

.field private mLastEventY:I

.field private mLeftId:J

.field private mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLocalLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mMobileItemId:J

.field private mRawX:I

.field private mRawY:I

.field private mReorderAnimation:Z

.field private mRightId:J

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffsetX:I

.field private mTotalOffsetY:I

.field private mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

.field private mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mUserLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private xEndBookmarkBound:I

.field private xEndDeleteBound:I

.field private xStartBookmarkBound:I

.field private xStartDeleteBound:I

.field private yEndBookmarkBound:I

.field private yEndDeleteBound:I

.field private yStartBookmarkBound:I

.field private yStartDeleteBound:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mSmoothScrollAmountAtEdge:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isMobileViewOutOfArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mSmoothScrollAmountAtEdge:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isMobileViewOutOfArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mSmoothScrollAmountAtEdge:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isMobileViewOutOfArea:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$8;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->showPlaceHolderView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverAnimation:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateEnableState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->reset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deletePosition:I

    return p1
.end method

.method static synthetic access$2102(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mReorderAnimation:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    return p1
.end method

.method static synthetic access$312(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    return p1
.end method

.method static synthetic access$412(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private animateBounds(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "bounds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$5;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$5;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateReorder(II)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x0

    if-le p2, p1, :cond_1

    const/4 v6, 0x1

    :goto_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    if-eqz v6, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v7, v0, :cond_6

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v2

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v7, v0, :cond_6

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v0

    add-int/2addr v0, v7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v2

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v9, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$7;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput p2, v4, v5

    aput p3, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput p4, v4, v5

    aput p5, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getAdapterInterface()Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;

    return-object v0
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v6, 0x46

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getColumnCount()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapterInterface()Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getColumnCount()I

    move-result v0

    return v0
.end method

.method private getId(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleCellSwitch()V
    .locals 31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    sub-int v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    sub-int v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    add-int/2addr v2, v3

    add-int v16, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    add-int/2addr v2, v3

    add-int v15, v2, v6

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLeftId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRightId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveLeftId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveRightId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowLeftId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowRightId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-le v0, v2, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v15, v2, :cond_2

    const/16 v22, 0x1

    :goto_0
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-le v0, v2, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v15, v2, :cond_3

    const/16 v21, 0x1

    :goto_1
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v15, v2, :cond_4

    const/16 v19, 0x1

    :goto_2
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v15, v2, :cond_5

    const/16 v18, 0x1

    :goto_3
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-le v0, v2, :cond_6

    const/16 v20, 0x1

    :goto_4
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    const/16 v17, 0x1

    :goto_5
    if-eqz v28, :cond_8

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v15, v2, :cond_8

    const/16 v24, 0x1

    :goto_6
    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v15, v2, :cond_9

    const/16 v23, 0x1

    :goto_7
    if-nez v17, :cond_0

    if-nez v20, :cond_0

    if-nez v24, :cond_0

    if-nez v23, :cond_0

    if-nez v18, :cond_0

    if-nez v19, :cond_0

    if-nez v21, :cond_0

    if-eqz v22, :cond_1

    :cond_0
    if-nez v26, :cond_a

    :cond_1
    :goto_8
    return-void

    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    :cond_3
    const/16 v21, 0x0

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    const/16 v20, 0x0

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    goto :goto_5

    :cond_8
    const/16 v24, 0x0

    goto :goto_6

    :cond_9
    const/16 v23, 0x0

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    const/16 v29, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v27

    if-eqz v18, :cond_c

    sub-int v2, v7, v27

    add-int/lit8 v29, v2, -0x1

    :cond_b
    :goto_9
    const/4 v2, -0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_13

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V

    goto :goto_8

    :cond_c
    if-eqz v19, :cond_d

    sub-int v2, v7, v27

    add-int/lit8 v29, v2, 0x1

    goto :goto_9

    :cond_d
    if-eqz v21, :cond_e

    add-int v2, v7, v27

    add-int/lit8 v29, v2, -0x1

    goto :goto_9

    :cond_e
    if-eqz v22, :cond_f

    add-int v2, v7, v27

    add-int/lit8 v29, v2, 0x1

    goto :goto_9

    :cond_f
    if-eqz v17, :cond_10

    sub-int v29, v7, v27

    goto :goto_9

    :cond_10
    if-eqz v20, :cond_11

    add-int v29, v7, v27

    goto :goto_9

    :cond_11
    if-eqz v23, :cond_12

    add-int/lit8 v29, v7, -0x1

    goto :goto_9

    :cond_12
    if-eqz v24, :cond_b

    add-int/lit8 v29, v7, 0x1

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getId(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v30

    if-eqz v30, :cond_1

    move/from16 v0, v29

    if-eq v7, v0, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v7, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->reorderElements(II)V

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->removePlaceHoderFromView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->showPlaceHolderView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move/from16 v8, v29

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$6;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;Landroid/view/ViewTreeObserver;IIII)V

    invoke-virtual {v4, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_8
.end method

.method private handleMobileCellScroll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x4100

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mSmoothScrollAmountAtEdge:I

    return-void
.end method

.method private removePlaceHoderFromView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private reorderElements(II)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapterInterface()Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->reorderItems(II)V

    return-void
.end method

.method private reset(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLeftId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRightId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveRightId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveLeftId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowLeftId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowRightId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->removePlaceHoderFromView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->invalidate()V

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    return-void
.end method

.method private showPlaceHolderView(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->reset(Landroid/view/View;)V

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    return-void
.end method

.method private touchEventsEnded()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsCancelled()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    if-eqz v1, :cond_3

    const-string v1, "QuickAccessGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in delete area:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deletePosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z

    iput v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLeftId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRightId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveRightId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveLeftId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowLeftId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowRightId:J

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->invalidate()V

    iput v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iput v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    if-eqz v1, :cond_7

    :cond_4
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z

    iput v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsWaitingForScrollFinish:Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->animateBounds(Landroid/view/View;)V

    :goto_1
    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isMobileViewOutOfArea:Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->invalidate()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->reset(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsCancelled()V

    goto/16 :goto_0
.end method

.method private updateEnableState()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mReorderAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNeighborViewsForId(J)V
    .locals 12

    const-wide/16 v10, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getPositionForID(J)I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v4, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v5, v8, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v1, v8, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v6, v8, -0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v2, v8, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    rem-int v8, v3, v8

    if-eqz v8, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_0
    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRightId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    rem-int v8, v7, v8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_1
    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLeftId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    rem-int v8, v5, v8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_2
    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveLeftId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    rem-int v8, v1, v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_3
    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mAboveRightId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    rem-int v8, v6, v8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_5

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_4
    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowLeftId:J

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getColumnCount()I

    move-result v8

    rem-int v8, v2, v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v10

    :cond_0
    iput-wide v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBelowRightId:J

    return-void

    :cond_1
    move-wide v8, v10

    goto :goto_0

    :cond_2
    move-wide v8, v10

    goto :goto_1

    :cond_3
    move-wide v8, v10

    goto :goto_2

    :cond_4
    move-wide v8, v10

    goto :goto_3

    :cond_5
    move-wide v8, v10

    goto :goto_4
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getIsMobileViewOutOfArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isMobileViewOutOfArea:Z

    return v0
.end method

.method public getIsinBookmarkZone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    return v0
.end method

.method public getIsinDeleteZone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    return v0
.end method

.method public getPositionForID(J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v5, v1, v2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/common/AbstractQuickAccessGridAdapter;->getItemId(I)J

    move-result-wide v3

    cmp-long v7, v3, p1

    if-nez v7, :cond_0

    :goto_1
    return-object v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->computeVerticalScrollOffset()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->computeVerticalScrollRange()I

    move-result v5

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v3, :cond_0

    if-lez v4, :cond_0

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mSmoothScrollAmountAtEdge:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->smoothScrollBy(II)V

    :goto_0
    return v6

    :cond_0
    add-int v8, v3, v2

    if-lt v8, v1, :cond_1

    add-int v8, v4, v0

    if-ge v8, v5, :cond_1

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, v8, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->smoothScrollToPosition(I)V

    :cond_2
    move v6, v7

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_1
    return v8

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->layoutChildren()V

    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->pointToPosition(II)I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v2, v6, v8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mMobileItemId:J

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->updateNeighborViewsForId(J)V

    :cond_2
    const/4 v8, 0x2

    new-array v3, v8, [I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBookmarkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v8, v3, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xStartBookmarkBound:I

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBookmarkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xEndBookmarkBound:I

    :goto_2
    const/4 v8, 0x1

    aget v8, v3, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yStartBookmarkBound:I

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBookmarkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yEndBookmarkBound:I

    :goto_3
    const/4 v8, 0x2

    new-array v3, v8, [I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    aget v8, v3, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xStartDeleteBound:I

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xEndDeleteBound:I

    :goto_4
    const/4 v8, 0x1

    aget v8, v3, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yStartDeleteBound:I

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yEndDeleteBound:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBookmarkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4060

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xEndBookmarkBound:I

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    const/high16 v9, 0x4020

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBookmarkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yEndBookmarkBound:I

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4060

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xEndDeleteBound:I

    goto :goto_4

    :cond_7
    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    const/high16 v9, 0x4020

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yEndDeleteBound:I

    goto/16 :goto_0

    :pswitch_2
    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawY:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawY:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yStartBookmarkBound:I

    if-le v8, v9, :cond_d

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawY:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yEndBookmarkBound:I

    if-ge v8, v9, :cond_d

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawX:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xStartBookmarkBound:I

    if-le v8, v9, :cond_d

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawX:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xEndBookmarkBound:I

    if-ge v8, v9, :cond_d

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02019d

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    const v9, 0x7f0200cf

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201a2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v8, v9}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;->isClipChildrenEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;->enableClipChildren()V

    :cond_9
    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventY:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownY:I

    sub-int v1, v8, v9

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLastEventX:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDownX:I

    sub-int v0, v8, v9

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    iget v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetX:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v1

    iget v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mTotalOffsetY:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->invalidate()V

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    if-nez v8, :cond_b

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    if-nez v8, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleCellSwitch()V

    :cond_b
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsMobileScrolling:Z

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    if-nez v8, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->handleMobileCellScroll()V

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_d
    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawY:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yStartDeleteBound:I

    if-le v8, v9, :cond_e

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawY:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->yEndDeleteBound:I

    if-ge v8, v9, :cond_e

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawX:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xStartDeleteBound:I

    if-le v8, v9, :cond_e

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mRawX:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->xEndDeleteBound:I

    if-ge v8, v9, :cond_e

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201a4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    const v9, 0x7f0200d0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02019c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_e
    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mCellIsMobile:Z

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02019c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201a2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsEnded()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f02019c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201a2

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDropListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDropListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;->onActionDrop()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->resetEditModeState()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsCancelled()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDropListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDropListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;->onActionDrop()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->resetEditModeState()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0x8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mActivePointerId:I

    if-ne v4, v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsEnded()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public resetAll()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsCancelled()V

    return-void
.end method

.method public resetEditModeState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mScrollState:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->touchEventsEnded()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setBookmarkZone(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->bookmarkView:Landroid/view/View;

    return-void
.end method

.method public setDeleteZone(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->deleteView:Landroid/view/View;

    return-void
.end method

.method public setEditZoneView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDeleteBookmarkImageContainer:Landroid/view/View;

    const v1, 0x7f0a01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mBookmarkContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setIsinBookmarkZone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInBookmarkArea:Z

    return-void
.end method

.method public setIsinDeleteZone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isInDeleteArea:Z

    return-void
.end method

.method public setOnDropListener(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mDropListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnDropListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUserLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mLocalLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnUiUpdateListener(Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mUiUpdateListener:Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView$OnUiUpdateListener;

    return-void
.end method

.method public setReorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->isReorderEnable:Z

    return-void
.end method

.method public startEditMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    return-void
.end method

.method public stopEditMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/QuickAccessGridView;->mIsEditMode:Z

    return-void
.end method
