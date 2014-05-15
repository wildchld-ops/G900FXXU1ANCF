.class public Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;
.super Landroid/widget/LinearLayout;
.source "XLargeTabButtonContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static notifications:[I


# instance fields
.field private mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field private mAddTabOverlap:I

.field private mButtonWidth:I

.field mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mCreateTabButton:Landroid/widget/ImageButton;

.field mCurTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field public mCurrentTabView:Landroid/view/View;

.field private mIndicationView:Landroid/widget/LinearLayout;

.field private mNewTabButton:Landroid/widget/ImageButton;

.field private mNoTablayout:Landroid/view/View;

.field mNotificationPopupWindow:Landroid/widget/PopupWindow;

.field private mTabInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/app/sbrowser/common/Tab;",
            "Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;",
            ">;"
        }
    .end annotation
.end field

.field private mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

.field private mTabSwitch:Z

.field private mTabWidth:I

.field private mUseQuickControls:Z

.field tabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/common/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private xLargeTabButtonContainer:Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->notifications:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNotificationPopupWindow:Landroid/widget/PopupWindow;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabSwitch:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabWidth:I

    const v3, 0x7f0201b7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setBackgroundResource(I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040083

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setMinimumWidth(I)V

    const v3, 0x7f0a0214

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    const v3, 0x7f0a0215

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0216

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    const v3, 0x7f0a0219

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCreateTabButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCreateTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mAddTabOverlap:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$1;-><init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    return-object v0
.end method

.method private animateTabOut(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;)V
    .locals 7

    const/4 v6, 0x2

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer$2;-><init>(Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;Lcom/sec/android/app/sbrowser/common/Tab;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private notifyTabSelecting()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-void
.end method

.method private onRemoveTab(I)V
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTabID()I

    move-result v4

    if-ne v4, p1, :cond_2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->getTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->onRemoveTab(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private onRemoveTab(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->animateTabOut(Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private refreshTabButtonContainer(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 12

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->clearTabs()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v9, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->initializeTabsList()V

    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_3

    move v3, v0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabInfos:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_2

    invoke-interface {v4, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    :goto_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->buildTabView(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->addTab(Landroid/view/View;)V

    if-ne v5, p1, :cond_1

    invoke-virtual {v6, v11}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setActivated(Z)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v9, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setSelectedTab(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method private tabButtonFocused(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->focusORSelectTabButton(I)V

    return-void
.end method

.method private tabCreated(IZZ)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurTabControl:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->initializeTabsList()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, p3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->refreshTabButtonContainer(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->buildTabView(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->addTab(Landroid/view/View;)V

    :cond_3
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setActivated(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->tabButtonFocused(I)V

    goto :goto_0
.end method

.method private updateFavIconOfTab(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->updateFromTab()V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildTabView(Lcom/sec/android/app/sbrowser/common/Tab;)Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/Tab;Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public createTab(Landroid/view/View;)V
    .locals 9

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabSwitch:Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    if-eq v6, p1, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCreateTabButton:Landroid/widget/ImageButton;

    if-ne v6, p1, :cond_5

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsPlaceHolderEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getPlaceHolderController()Lcom/sec/android/app/sbrowser/placeholder/controller/PlaceHolderController;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->resetBitMap()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;->getContentViewRenderView()Lorg/chromium/content/browser/ContentViewRenderView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewRenderView;->getmPHCVRVA()Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->showPlaceHolder()V

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCreateTabButton:Landroid/widget/ImageButton;

    if-ne v6, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->invalidateOptionsMenu()V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v6

    const-string v7, "chrome://newtab/"

    sget-object v8, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildIndex(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setSelectedTab(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->updateCloseButton(Lcom/sec/android/app/sbrowser/common/Tab;)V

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getSelectedTab()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v6, "sBrowserTabBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick New Tab ix:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    instance-of v6, p1, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v6, :cond_3

    move-object v6, p1

    check-cast v6, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    iget-object v5, v6, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->mTab:Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getChildIndex(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setSelectedTab(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectControl(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->notifyTabSelecting()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v6

    invoke-interface {v3, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->updateCloseButton(Lcom/sec/android/app/sbrowser/common/Tab;)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->selectControl(Z)V

    goto :goto_2
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method getTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public initializeTabsList()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    add-int/2addr v5, v7

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    add-int/2addr v3, v7

    :cond_1
    add-int v6, v5, v3

    if-nez v6, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabInfos:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_4

    invoke-interface {v4, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "chrome://tabspreview/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v4, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabInfos:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabInfos:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public isTabSwitch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabSwitch:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCreateTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCurrentTabView:Landroid/view/View;

    const-string v2, "XLargeTabButtonContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKeyboardShowing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->isKeyboardShowing(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getStateofURL()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getStateofURL()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityXLargeUi;->getStateofURL()I

    move-result v2

    if-ne v2, v3, :cond_3

    :cond_1
    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->isKeyboardShowing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->createTab(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabSwitch:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getCompositorHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->hideKeyboard(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabWidth:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->updateLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->getPaddingTop()I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->getMeasuredWidth()I

    move-result v4

    sub-int v6, p4, p2

    sub-int v5, v6, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mIndicationView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mIndicationView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mUseQuickControls:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mButtonWidth:I

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    add-int v7, v2, v4

    sub-int v8, p5, p3

    invoke-virtual {v6, v2, v3, v7, v8}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->layout(IIII)V

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mUseQuickControls:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    add-int v7, v2, v4

    iget v8, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mAddTabOverlap:I

    sub-int/2addr v7, v8

    add-int v8, v2, v4

    iget v9, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mButtonWidth:I

    add-int/2addr v8, v9

    sub-int v9, p5, p3

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/widget/ImageButton;->layout(IIII)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mIndicationView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mIndicationView:Landroid/widget/LinearLayout;

    sub-int v7, v0, v1

    sub-int v8, p5, p3

    invoke-virtual {v6, v7, v3, v0, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mAddTabOverlap:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mButtonWidth:I

    sub-int v6, v5, v4

    iget v7, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mButtonWidth:I

    sub-int/2addr v6, v7

    if-ge v6, v1, :cond_3

    iget v6, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mButtonWidth:I

    sub-int v6, v5, v6

    sub-int v4, v6, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTabClosed(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "tabId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->onRemoveTab(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mCreateTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0
.end method

.method public onTabCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "tabId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "willBeSelected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "incognito"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->tabCreated(IZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabScrollView:Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNoTablayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTabSelected(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "tabId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->tabButtonFocused(I)V

    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "tabId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method setUseQuickControls(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mUseQuickControls:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mNewTabButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCloseButton(Lcom/sec/android/app/sbrowser/common/Tab;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setActivated(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->setActivated(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateLoadProgress(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mTabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XLargeTabButtonContainer;->mChromeListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tablet/actionbar/XlargeTabButton;->updateFromTab()V

    :cond_0
    return-void
.end method
