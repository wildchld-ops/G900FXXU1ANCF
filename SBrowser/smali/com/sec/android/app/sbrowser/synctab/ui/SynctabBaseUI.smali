.class public Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;
.super Ljava/lang/Object;
.source "SynctabBaseUI.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivityUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;,
        Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;
    }
.end annotation


# static fields
.field public static final CHECK_VALIDATION_BEFORE_SYNC_OPENED_PAGES:I = 0x37

.field protected static final LOG_TAG:Ljava/lang/String; = "SyncTabActivity"


# instance fields
.field protected emptyLayoutHeight:I

.field public handler:Landroid/os/Handler;

.field historyAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

.field public isNotSignedIn:Z

.field public mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field protected mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

.field protected mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

.field protected mResources:Landroid/content/res/Resources;

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field protected mTabSyncActivity:Landroid/app/Activity;

.field protected mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

.field public mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

.field protected mflag:Z

.field pd:Landroid/app/ProgressDialog;

.field private result:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

.field private syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

.field protected syncTabEmptyLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->historyAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->isNotSignedIn:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->emptyLayoutHeight:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mResources:Landroid/content/res/Resources;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    return-object v0
.end method

.method private showUndoBar(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v6, 0x7f0a0079

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v5, Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-direct {v5, v4, v6}, Lcom/sec/android/app/sbrowser/common/UndoBarController;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/UndoBarController$UndoListener;)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v7, 0x7f0c0238

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->showUndoBar(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v6, 0x7f0a0256

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v6, 0x7f0a0257

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/app/sbrowser/common/UndoBarController;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$2;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public callOnClickListener(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->isContentViewListAdpaterKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SyncTabActivity:SBrowserSync"

    const-string v2, "SBrowserMainActivityContextId is inValid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_OVERVIEW:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->createNewTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finishActivityWithResult(I)V

    goto :goto_0
.end method

.method public createTab()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getBrowserMainActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "http://www.google.com"

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;->FROM_INSTANT:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->launchUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)Lcom/sec/android/app/sbrowser/common/Tab;

    :cond_2
    return-void
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mResources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public initializeUI(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v2, 0x37

    if-ne p1, v2, :cond_2

    const-string v2, "SyncTabActivity"

    const-string v3, "onActivityResult: CHECK_VALIDATION_BEFORE_SYNC_OPENED_PAGES"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->startTabSyncing()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finishActivityWithResult(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1389

    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_4

    if-eqz p3, :cond_0

    const-string v2, "TABS_DELETED"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "selectedDevices"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "TABS_DELETED"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->startTabSyncing()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsUndoPopupEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->setSelectedDevices(Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->showUndoBar(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->setSelectedDevices(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->setSelectedDevices(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->deleteTabsConfirm()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->hideUndoBar()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finishActivityWithResult(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->result:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->result:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->deleteTabsConfirm()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finishActivityWithResult(I)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->deleteTabsConfirm()V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const-class v3, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const/16 v3, 0x1389

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a030e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPauseHandling()V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->result:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->result:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->isNotSignedIn:Z

    return-void
.end method

.method public onResumeHandling()V
    .locals 0

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public processPostExecuteUI(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->result:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    return-void
.end method

.method public refreshUI()V
    .locals 6

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setSyncTabController(Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    return-void
.end method

.method protected showSyncWithPcDialog(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V
    .locals 3

    new-instance v1, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkPcDataPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->showSyncWithPcDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public startTabSyncing()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->checkSamsungAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v4, 0x7f0c0052

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$3;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$1;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabAsync:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;

    new-array v1, v3, [Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    new-instance v3, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncTabData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
