.class public Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;
.super Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;
.source "SynctabPhoneUi.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# instance fields
.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field syncSigninTabGroup:Landroid/view/ViewGroup;

.field syncSigninTabStub:Landroid/view/ViewStub;

.field syncTabEmptyLayout:Landroid/widget/ScrollView;

.field syncTabGroup:Landroid/view/ViewGroup;

.field syncTabStub:Landroid/view/ViewStub;

.field xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncSigninTabStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncSigninTabGroup:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mSBrowserMainActivityContextId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-void
.end method

.method private inflateSinglePlaneTabSync(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v1, "SyncTabActivity"

    const-string v2, "onCreate: mSavePageActivity is null ... returning"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->triggerTabsyncManually()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->startTabSyncing()V

    goto :goto_0
.end method


# virtual methods
.method public callOnClickListener(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tabUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public initializeUI(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->initializeUI(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->inflateSinglePlaneTabSync(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/16 v4, 0x11

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a0257

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a0258

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->emptyLayoutHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_4
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
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

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const v0, 0x7f0201b5

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mflag:Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->checkSamsungAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncSigninTabGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncSigninTabGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->onResume()V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->isNotSignedIn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->finishActivityWithResult(I)V

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SynctabActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a0257

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a0258

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->emptyLayoutHeight:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->emptyLayoutHeight:I

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/16 v4, 0x11

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a0257

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a0258

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->emptyLayoutHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public processPostExecuteUI(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V
    .locals 6

    const/16 v2, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->processPostExecuteUI(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0a0256

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    const v1, 0x7f0a0257

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_3
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getBrowserMainActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/util/List;Lcom/sec/android/app/sbrowser/synctab/ui/SynctabActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->historyAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->historyAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SBrowserExpandableTabSyncListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->expandGroup(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    :cond_5
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->xSyncTabListView:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabPhoneUi;->syncTabEmptyLayout:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_9
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
