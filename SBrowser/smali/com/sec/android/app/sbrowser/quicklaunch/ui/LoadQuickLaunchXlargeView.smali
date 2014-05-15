.class public Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;
.super Ljava/lang/Object;
.source "LoadQuickLaunchXlargeView.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quicklaunch/IQuickLaunchNotifier;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/sec/android/app/sbrowser/common/interfaces/IModelObserver;


# static fields
.field private static final SECOND_INSTANCE_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LoadQuickLaunchView"


# instance fields
.field private final GRID_COLUMN_COUNT_FOUR:I

.field private final GRID_COLUMN_COUNT_LANDSCAPE:I

.field private final GRID_COLUMN_COUNT_ONE:I

.field private final GRID_COLUMN_COUNT_PORTRAIT:I

.field private final GRID_COLUMN_COUNT_THREE:I

.field private final GRID_COLUMN_COUNT_TWO:I

.field private final GRID_COLUMN_COUNT_XLARGE_LANDSCAPE:I

.field private GRID_VIEW_SIZE_ONE_TABLET:I

.field private GRID_VIEW_SIZE_THREE_TABLET:I

.field private GRID_VIEW_SIZE_TWO_TABLET:I

.field private GRID_VIEW_SIZE_ZERO_TABLET:I

.field private final MAX_CONCURRENT_EXECUTORS:I

.field private final MAX_QUICKLAUNCH_COUNT:I

.field private final RELOAD_VIEW_DATA:I

.field private final SEARCH_ENGINE_BING:Ljava/lang/String;

.field private final SEARCH_ENGINE_GOOGLE:Ljava/lang/String;

.field private isDefaultSearchEngine:Z

.field private isNativeUpdateIgnored:Z

.field private isUiLoadInProgress:Z

.field private mBaseLayout:Landroid/view/ViewGroup;

.field private mContentContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMostVisitedViewWidth:I

.field private mQuickLaunchAdapter:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

.field private mQuickLaunchContainer:Landroid/view/View;

.field private mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

.field private mQuickLaunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEngineName:[Ljava/lang/String;

.field private mSearchEngineUrl:[Ljava/lang/String;

.field private mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

.field private mViewDisp:Landroid/widget/ViewFlipper;

.field private mostVisitedGridItemClicked:Z

.field private mostVisitedGridView:Landroid/widget/GridView;

.field private mostVisitedListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
            ">;"
        }
    .end annotation
.end field

.field private quicklaunchHeader:Landroid/widget/TextView;

.field private totalQuickLaunchCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;Landroid/widget/FrameLayout;I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_CONCURRENT_EXECUTORS:I

    const/16 v0, 0x141

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->RELOAD_VIEW_DATA:I

    const-string v0, "Google"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->SEARCH_ENGINE_GOOGLE:Ljava/lang/String;

    const-string v0, "Bing"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->SEARCH_ENGINE_BING:Ljava/lang/String;

    iput v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_PORTRAIT:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_LANDSCAPE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_XLARGE_LANDSCAPE:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->totalQuickLaunchCount:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isDefaultSearchEngine:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isUiLoadInProgress:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isNativeUpdateIgnored:Z

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridItemClicked:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_ONE:I

    iput v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_TWO:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_THREE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_COLUMN_COUNT_FOUR:I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$1;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridItemClicked:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->initUi(Landroid/widget/FrameLayout;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getMostVisitedData()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_ZERO_TABLET:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_ONE_TABLET:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_TWO_TABLET:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_THREE_TABLET:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridItemClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridItemClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isUiLoadInProgress:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isUiLoadInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isNativeUpdateIgnored:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isNativeUpdateIgnored:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContentContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->fillMostVisitedData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->updateSearchEngineData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getQuickLaunchThumbnail()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isSearchEngineURL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isDefaultSearchEngine:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchAdapter:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchAdapter:Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->quicklaunchHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->handleMostVisitedItemClick(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;

    return-object v0
.end method

.method private animateQuickLaunch()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    const v2, 0x7f050007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$2;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private fillMostVisitedData()V
    .locals 9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getMostvisitedCount()I

    move-result v8

    iget v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    if-le v8, v2, :cond_3

    iget v7, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mUrl:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mTitle:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method private getMostVisitedData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->getMostVisited(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    return-void
.end method

.method private getMostvisitedCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->totalQuickLaunchCount:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->totalQuickLaunchCount:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->totalQuickLaunchCount:I

    goto :goto_0
.end method

.method private getQuickLaunchThumbnail()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getMostvisitedCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isUiLoadInProgress:Z

    iget v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    if-le v4, v6, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getSearchUri()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lorg/samsung/chrome/browser/SbrChromeBrowserProviderClient;->getURLThumbnail(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->setFavIcon([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private getSearchEngineList(I)V
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    sub-int v9, v3, p1

    const/4 v7, 0x0

    const-string v3, "CscFeature_Web_DisableGoogleInBrowserSearchEngine"

    invoke-static {v3}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v3, 0x7f0700a0

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineName:[Ljava/lang/String;

    const v3, 0x7f07009f

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v3, v9, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineName:[Ljava/lang/String;

    array-length v7, v3

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineName:[Ljava/lang/String;

    aget-object v2, v3, v6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    aget-object v10, v3, v6

    const-string v3, "Google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->isBlacklistedURL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v7, v9

    goto :goto_0

    :cond_4
    const-string v3, "Bing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    invoke-virtual {v3, v10}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->isBlacklistedURL(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchController:Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/quicklaunch/controller/QuickLaunchController;->isMostVisited(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v0, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    aget-object v4, v3, v6

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isDefaultSearchEngine:Z

    goto :goto_2

    :cond_6
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isDefaultSearchEngine:Z

    goto :goto_2
.end method

.method private handleMostVisitedItemClick(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getSearchUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->clearFocus()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;->getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "LoadQuickLaunchView"

    const-string v3, "About to trigger loadUrl method from LoadQuickLaunchView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/Tab;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->animateQuickLaunch()V

    const-string v2, "LoadQuickLaunchView"

    const-string v3, "loadUrl method triggered from LoadQuickLaunchView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContentContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private initUi(Landroid/widget/FrameLayout;)V
    .locals 9

    const/4 v8, -0x1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContentContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a0055

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a01a5

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a01d0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->quicklaunchHeader:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09015a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09015b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090157

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090158

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v6, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->setGridLandscapeParam()V

    goto :goto_0
.end method

.method private isSearchEngineURL(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07009f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    const-string v3, "CscFeature_Web_DisableGoogleInBrowserSearchEngine"

    invoke-static {v3}, Lorg/samsung/base/Feature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    array-length v3, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mSearchEngineUrl:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->isDefaultSearchEngine:Z

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private setGridLandscapeParam()V
    .locals 15

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mBaseLayout:Landroid/view/ViewGroup;

    const v14, 0x7f0a01d0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090182

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090183

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090186

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090188

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b000a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v9, v13, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x0

    invoke-virtual {v9, v4, v6, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090178

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/4 v14, -0x2

    invoke-direct {v0, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090179

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09017a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09017b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v13, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09015f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090160

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v13, v7}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v13, v12}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v0, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09015c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09015d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09015e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v0, v8, v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v13, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateSearchEngineData()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getMostvisitedCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->MAX_QUICKLAUNCH_COUNT:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->getSearchEngineList(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public HandleContextMenu(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getSearchUri()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isMaxTabLimitReached()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_LONGPRESS:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    check-cast v3, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getContentViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->animateQuickLaunch()V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0210

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c02e3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c01d1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c003d

    new-instance v5, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$4;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public getMenuTitle(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getSearchUri()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public modelPropertyChanged(ILjava/lang/Object;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->updateQuickLaunchUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_ZERO_TABLET:I

    if-ge v4, v5, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090161

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090162

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_ONE_TABLET:I

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->setGridLandscapeParam()V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_TWO_TABLET:I

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mMostVisitedViewWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->GRID_VIEW_SIZE_THREE_TABLET:I

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mostVisitedGridView:Landroid/widget/GridView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method public updateQuickLaunchUI()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;->mQuickLaunchList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView$3;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/LoadQuickLaunchXlargeView;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->getQuickAccessThread()Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/data/QuickAccessThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
