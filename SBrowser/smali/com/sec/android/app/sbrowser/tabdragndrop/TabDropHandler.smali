.class public Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;
.super Ljava/lang/Object;
.source "TabDropHandler.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final BOTTOM_SCROLL_THRESHOLD:I

.field private final TOP_SCROLL_THRESHOLD:I

.field private mContext:Landroid/content/Context;

.field mIsInstantiatedFromMultiWindow:Z

.field private mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

.field private mOwningContextString:Ljava/lang/String;

.field mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->TOP_SCROLL_THRESHOLD:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->BOTTOM_SCROLL_THRESHOLD:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmScrollView()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollView:Landroid/widget/ScrollView;

    new-instance v0, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollView:Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    :cond_0
    return-void
.end method

.method private createTabWithSrcContents(IZ)Lcom/sec/android/app/sbrowser/common/Tab;
    .locals 10

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object v2, v7

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v5

    const/4 v4, -0x1

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    :cond_0
    invoke-interface {v5, p1, v4}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createDragAndDropTab(II)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v7, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tab Creation failed for webcontents = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    instance-of v7, v7, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    const-string v7, "content://com.sec.android.app.sbrowser/readinglist/mostvisited.mhtml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "content://com.sec.android.app.sbrowser/readinglist/pinned.mhtml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    :goto_1
    sget-object v7, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processId of new Tab = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , close old tab"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Lcom/sec/android/app/sbrowser/common/UI;->showQuickLaunchView(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentView;->requestFocus()Z

    goto :goto_1
.end method

.method private handleTabDrop(IZLjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mOwningContextString = srcContextId "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object/from16 v8, v18

    check-cast v8, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v5

    if-eqz v16, :cond_0

    if-eqz v5, :cond_0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    if-nez v18, :cond_3

    :cond_2
    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v19, "this List Control = null"

    invoke-static/range {v18 .. v19}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getMaxTabCounter()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v19

    add-int v18, v18, v19

    if-eqz v18, :cond_0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v15

    move/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTabById(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v14

    if-nez v14, :cond_4

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid tab drag Id ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", src tab is null!!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getSbrTabBridge()Lorg/samsung/chrome/browser/SbrTabBridge;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/samsung/chrome/browser/SbrTabBridge;->sbrGetWebContents()I

    move-result v9

    if-nez v9, :cond_5

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Empty web contents, attempt to restore tab!! url="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getTabUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getRestoredWebContents()I

    move-result v9

    if-nez v9, :cond_6

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Empty web contents, do no initiate drag and drop!! url="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getTabUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    if-nez v9, :cond_8

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v19, "Tab Drop Failed due to empty web contents!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TabBridge is null!!, hence do not initiate drag and drop!! url="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getTabUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const/16 v17, 0x0

    if-nez v7, :cond_9

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->saveStateBeforeTabDragAndDrop(Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v13

    const/4 v11, 0x0

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getInfoBars()Ljava/util/List;

    move-result-object v11

    :cond_a
    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->getSbrInfoBarContainer()Lorg/samsung/chrome/browser/SbrInfoBarContainer;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v12}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->setInfoBarData(Lorg/samsung/chrome/browser/SbrInfoBarContainer;)V

    :cond_b
    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Tab Drag Started "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->notifyTabClosingOutside(IZLjava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v14, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->closeTabReleasingContents(Lcom/sec/android/app/sbrowser/common/Tab;Z)I

    if-nez v9, :cond_c

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v19, "Tab Drop Failed due to empty web contents, should not come here!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->unRegisterForNotifications()V

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->createTabWithSrcContents(IZ)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->notifyTabCreatedOutside()V

    sget-object v18, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v19, "Tab Drop Completed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_0

    if-nez v7, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sec/android/app/sbrowser/common/Tab;->restoreStateAfterTabDragAndDrop(Landroid/os/Bundle;)V

    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/Tab;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sbrowser/infobar/InfoBarContainer;->restorePreviousInfoBars(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private notifyTabClosingOutside(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tabId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "incognito"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "src_contextid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dest_contextid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SBrowserMainActivityContextId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x25

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster;->broadcastSBrowserImmediateNotification(ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;->onTabRemoved(I)V

    :cond_0
    return-void
.end method

.method private notifyTabCreatedOutside()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;->onTabCreated()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearMultiInstanceTabDragAndDropData()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->setMultiInstanceTabDragAndDropData(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;)V

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v2, "clearMultiInstanceTabDragAndDropData .."

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method public getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    sget-object v2, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v3, "getMultiInstanceTabDragAndDropData .."

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMultiInstanceTabDragAndDropData return dragData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v9, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "other drag event: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x1

    :goto_1
    return v9

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sbr_tab_drag_n_drop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :pswitch_2
    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    if-eqz v9, :cond_2

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x3

    iput v9, v5, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9, v5}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->clearMultiInstanceTabDragAndDropData()V

    goto :goto_0

    :pswitch_3
    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/lit16 v1, v9, -0xc8

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v9

    const/high16 v10, 0x43fa

    add-float/2addr v9, v10

    float-to-int v8, v9

    int-to-float v9, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->isUpScrollEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    iput v9, v6, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    int-to-float v9, v8

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->isDownScrollEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x2

    iput v9, v4, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x3

    iput v9, v4, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    if-eqz v9, :cond_8

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x3

    iput v9, v4, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mOwningContextString:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getContextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->pointToPosition(FF)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getTabId()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v10

    if-eq v9, v10, :cond_7

    :cond_5
    if-nez v7, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->matchXPosofScrollView(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->setTabAtEnd(Landroid/view/DragEvent;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, p2, v7}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->processDrop(Landroid/view/DragEvent;Landroid/view/View;)Z

    :cond_7
    sget-object v9, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    const-string v10, "Tab drop handled within same instance!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getMultiInstanceTabDragAndDropEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got a drop!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " event="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mIsInstantiatedFromMultiWindow = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mIsInstantiatedFromMultiWindow:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sbr_tab_drag_n_drop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->processMultiInstanceDrop(Landroid/view/DragEvent;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    if-eqz v9, :cond_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x3

    iput v9, v4, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mScrollHandler:Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/sbrowser/tabdragndrop/ScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public processDrop(Landroid/view/DragEvent;Landroid/view/View;)Z
    .locals 28

    const/16 v23, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v7

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getTabId()I

    move-result v23

    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v15

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v15, v1, v15, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->addTabView(IIIZ)V

    const v24, 0x7f0a0188

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_1

    instance-of v0, v12, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object v9, v12

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0a0188

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0a017a

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getScreenOrientation()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const v24, 0x7f0a017a

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageListBottomPadding()I

    move-result v18

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->saveTabListWrapper()V

    :cond_3
    const/16 v21, 0x0

    const/16 v24, 0x1

    return v24

    :cond_4
    const v24, 0x7f0a017a

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v14, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v14}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v27

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public processMultiInstanceDrop(Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getTabId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->isIncognito()Z

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getContextString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    sget-object v4, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid tab drag Id tabId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", or srcContextId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_2
    invoke-direct {p0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->handleTabDrop(IZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setObserver(Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mObserver:Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragAndDropObserver;

    return-void
.end method

.method public setTabAtEnd(Landroid/view/DragEvent;)Z
    .locals 14

    const/4 v8, -0x1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getTabListWrapper()Lcom/sec/android/app/sbrowser/common/TabListWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/common/TabListWrapper;->getTabList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->getMultiInstanceTabDragAndDropData()Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDragElement;->getTabId()I

    move-result v8

    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/TabInstanceInfo;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v10

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a017a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->addTabView(IIIZ)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v9

    invoke-virtual {v2, v10, v11, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/tabdragndrop/TabDropHandler;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabActivity;->getmLayout()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a0188

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a0188

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
