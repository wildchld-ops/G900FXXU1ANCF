.class public Lcom/sec/android/app/sbrowser/common/TabListWrapper;
.super Ljava/lang/Object;
.source "TabListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;,
        Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;
    }
.end annotation


# static fields
.field private static final TAB_WRAPPER_LIST_FILE_PATH:Ljava/lang/String; = "tab_wrapper_list"

.field private static mNotifications:[I


# instance fields
.field private final INVALID_TAB_COUNT:I

.field private final INVALID_TAB_INDEX:I

.field private final TAG:Ljava/lang/String;

.field private isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Landroid/app/Activity;

.field private mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field private mInstanceIndex:I

.field private mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

.field private mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

.field private mSaveTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;

.field private mTabInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotifications:[I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotifications:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotifications:[I

    const/16 v1, 0x1c

    aput v1, v0, v2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotifications:[I

    const/4 v1, 0x2

    const/16 v2, 0x25

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotifications:[I

    const/4 v1, 0x3

    const/16 v2, 0x26

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotifications:[I

    const/4 v1, 0x4

    const/16 v2, 0x68

    aput v2, v0, v1

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Landroid/app/Activity;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->INVALID_TAB_COUNT:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->INVALID_TAB_INDEX:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "TabListWrapper"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mActivity:Landroid/app/Activity;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mInstanceIndex:I

    new-instance v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$1;-><init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mInstanceIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private notifyTabSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;->notifyTabSelected(I)V

    :cond_0
    return-void
.end method

.method private notifyViewPagerDataSetChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;->notifyDataSetChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addNewTab(IZ)V
    .locals 4

    new-instance v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;-><init>(IZLcom/sec/android/app/sbrowser/common/Tab;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;->notifyNewTabCreated(IZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->saveTabListWrapper()V

    goto :goto_1
.end method

.method public addNewTabFromRestore(IZ)V
    .locals 3

    new-instance v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;-><init>(IZLcom/sec/android/app/sbrowser/common/Tab;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->notifyViewPagerDataSetChanged(I)V

    goto :goto_1
.end method

.method public addTabFromContentListAdapter()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v8, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v9, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v11}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    const/4 v4, 0x0

    if-nez v5, :cond_1

    const-string v7, "TabListWrapper"

    const-string v8, "tabControl is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    invoke-interface {v5, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2, v11}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v7, "TabListWrapper"

    const-string v8, "tabControl is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_6

    invoke-interface {v5, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v8, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v3, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->isIncognito()Z

    move-result v8

    invoke-direct {v3, v7, v8, v4}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;-><init>(IZLcom/sec/android/app/sbrowser/common/Tab;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public deleteTab(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;->notifyTabClosed(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->saveTabListWrapper()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    return-void
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabIndex()I
    .locals 6

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-nez v3, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v5

    if-ne v5, v4, :cond_2

    move v1, v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getGlobalCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getGlobalCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIncognitoTabCount()I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIncognitoTabId(I)I
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getNormalTab(I)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNormalTabCount()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNormalTabId(I)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTabById(IZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isIncognitoTab(I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->isIsInCognito()Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isTabsLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->isTabLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onTabSelected(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;->notifyCurrentTabChanged(IILcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->notifyTabSelected(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public registerTabStateChangeObserver(Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    return-void
.end method

.method public restoreTabList()V
    .locals 2

    const-string v0, "TabListWrapper"

    const-string v1, "restoreTabList"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;-><init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mRestoreTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$RestoreTabList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveTabListWrapper()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->notifyViewPagerDataSetChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mSaveTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mSaveTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mInstanceIndex:I

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;-><init>(Lcom/sec/android/app/sbrowser/common/TabListWrapper;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mSaveTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mSaveTabList:Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;

    new-array v1, v2, [Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabInfo:Ljava/util/ArrayList;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/TabListWrapper$SaveTabList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setIndex(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabIndexById(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mContentViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->setIndex(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "TabListWrapper"

    const-string v2, "ContentViewListAdapter Null during setIndex"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTabSwipeObserver(Lcom/sec/android/app/sbrowser/toolbarswipe/controller/ToolbarSwipeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mTabSwipeObserver:Lcom/sec/android/app/sbrowser/toolbarswipe/util/ITabDataSetObserver;

    return-void
.end method

.method public unRegisterTabStateChangeObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->mMultitabTabStateChangeObserver:Lcom/sec/android/app/sbrowser/multiwindow/MultitabTabStateChangeObserver;

    return-void
.end method
