.class public Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;
.super Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;
.source "HistoryPhoneUi.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;


# instance fields
.field private mBaseLayout:Landroid/widget/FrameLayout;

.field private mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field private mHistoryActivity:Landroid/app/Activity;

.field public mItemCheckboxClickListener:Landroid/view/View$OnClickListener;

.field private mSelectAllOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mItemCheckboxClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->clearAndGetHistory()V

    return-void
.end method

.method private clearAndGetHistory()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getModel()Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getModel()Lcom/sec/android/app/sbrowser/history/model/HistoryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/model/HistoryModel;->clearHistoryList()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->clearHistoryList()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsDeleteMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mDeleteActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mDeleteActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getAllHistroy()V

    :cond_4
    return-void
.end method

.method private getSelectedItemPosition(II)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int v2, p2, v1

    return v2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getExpListView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-object v0
.end method

.method public getItemCheckBoxClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mItemCheckboxClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public inflateSinglePane(Landroid/app/Activity;)V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0141

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public inflateSinglePane(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const v0, 0x7f0a0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    const v0, 0x7f0a0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mBaseLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public initExpandList(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, 0x40a0

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->registerBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-direct {v2, p1, v3}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->setExpandableListView(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090284

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setIndicatorBounds(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setExpandAllSpeedFactor(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setCollapseAllSpeedFactor(F)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    sget-object v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNotifications:[I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method

.method public initializeUI(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->initializeUI(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->inflateSinglePane(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->initExpandList(Landroid/app/Activity;)V

    return-void
.end method

.method public onChange(ILjava/lang/Object;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateHistoryUi()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateHistoryUi()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    const v4, 0x7f0a014c

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsShowingActionMode:Z

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-eqz v3, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->getSelectedItemPosition(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedPosition:I

    check-cast p2, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->handleSelectedItemForActionMode()V

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsDeleteMode:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-eqz v3, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->getSelectedItemPosition(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedPosition:I

    check-cast p2, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedHistoryItem:Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->handleSelectedItemForDeleteMode()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setHoverPopupType(I)V

    :cond_3
    const-string v1, ""

    if-eqz p2, :cond_4

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-eqz v3, :cond_4

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v2, v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "historySelectedItemUrl"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p2, :cond_5

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-eqz v3, :cond_5

    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast p2, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->finish()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    move-object v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkNotifier;->unregisterBookmarkIObserver(Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObserver;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->onDestroy()V

    return-void
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {p1, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    if-ne v6, v5, :cond_0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->getSelectedItemPosition(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedPosition:I

    const v4, 0x7f0a014c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsDeleteMode:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->handleSelectedItemForDeleteMode()V

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsShowingActionMode:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;->SELECT_CHECKBOX_MODE:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mCheckBoxModeType:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryCheckBoxModeType;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    check-cast v4, Landroid/view/ActionMode$Callback;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->handleSelectedItemForActionMode()V

    goto :goto_1
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

.method public setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->inflateSinglePane(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->initExpandList(Landroid/app/Activity;)V

    return-object v0
.end method

.method public setNoHistoryLayoutIfNeeded()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->dismissClearAllHistoryDialog()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->dismissClearAllHistoryDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mNoHistoryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->dismissClearAllHistoryDialog()V

    goto :goto_0
.end method

.method public updateHistoryUi()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->setNoHistoryLayoutIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_1
    return-void
.end method
