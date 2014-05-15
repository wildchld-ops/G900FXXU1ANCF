.class public Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;
.super Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;
.source "HistoryXlargeUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$4;
    }
.end annotation


# instance fields
.field private final INVALID_INDEX:I

.field private mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

.field private mChildListView:Landroid/widget/ListView;

.field private mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

.field private mGroupListView:Landroid/widget/ListView;

.field private mHistoryActivity:Landroid/app/Activity;

.field private mMainViewSplit:Landroid/widget/FrameLayout;

.field private mSelectedViewOnStart:I

.field private mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

.field private mStub:Landroid/view/ViewStub;

.field private mTitle:Landroid/widget/TextView;

.field private prefs:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->INVALID_INDEX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mHistoryActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$2;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$3;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->setTitle(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->clearAndGetHistory()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mHistoryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private clearAndGetHistory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->clearHistoryList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getAllHistroy()V

    return-void
.end method

.method private inflateTwoPane(Landroid/view/View;)V
    .locals 8

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSelectedViewOnStart:I

    const v0, 0x7f0a0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mHistoryActivity:Landroid/app/Activity;

    const v2, 0x7f0a01b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01af

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01ac

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a01b0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a01ab

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setMaxLeftPaneWidth(I)V

    const v0, 0x7f0a017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method private setTitle(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateRequired:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mMainViewSplit:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getExpListView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getParentHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getParentWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;
    .locals 1

    instance-of v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initExpandList(Landroid/app/Activity;)V
    .locals 5

    const v4, 0x7f0202ae

    const/4 v3, 0x4

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/app/sbrowser/history/XLargeExpandListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/history/XLargeExpandListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->prefs:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->getSelectedGroup()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->setTitle(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->initSelectedGroup()V

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    sget-object v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mNotifications:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method

.method initSelectedGroup()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->selectGroup(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->selectGroup(I)V

    goto :goto_0
.end method

.method public initializeUI(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->initializeUI(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mHistoryActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabsFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->initExpandList(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12

    const v11, 0x7f0a0322

    const v10, 0x7f0a0321

    const/4 v8, 0x0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getTargetView(Landroid/view/ContextMenu$ContextMenuInfo;)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v7, 0x7f0e0015

    invoke-virtual {v1, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "text/plain"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x1

    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->isBookmark()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->isSavedPage()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0a0320

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v7, 0x7f0a0323

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOperation(Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;)V
    .locals 8

    const v7, 0x7f0202ac

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->getSelectedGroup()I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    :cond_1
    sget-object v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$4;->$SwitchMap$com$sec$android$app$sbrowser$common$SplitRatioController$SplitRatioListener$Operation:[I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkonwn ContactSplitRatioController action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    if-eqz v2, :cond_2

    iput v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSelectedViewOnStart:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->setViewPagerNonScrollable(Z)V

    :goto_0
    return-void

    :pswitch_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    iget v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSelectedViewOnStart:I

    if-eq v3, v1, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSelectedViewOnStart:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    iput v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSelectedViewOnStart:I

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->notifyDataSetChanged()V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->setViewPagerNonScrollable(Z)V

    goto :goto_0

    :cond_6
    iput v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSelectedViewOnStart:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method selectGroup(I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    invoke-virtual {v2, p1, v1, v1}, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    int-to-long v4, p1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    const v2, 0x7f040063

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    const v1, 0x7f0a01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->prefs:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->inflateTwoPane(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mHistoryActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->initExpandList(Landroid/app/Activity;)V

    return-object v0
.end method

.method public setNoHistoryLayoutIfNeeded()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSplitbarMoveAble(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setMoveAble(Z)V

    :cond_0
    return-void
.end method
