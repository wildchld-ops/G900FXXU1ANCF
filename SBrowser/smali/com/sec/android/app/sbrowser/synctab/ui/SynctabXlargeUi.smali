.class public Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;
.super Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;
.source "SynctabXlargeUi.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$3;
    }
.end annotation


# instance fields
.field private final INVALID_INDEX:I

.field private mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

.field private mChildListView:Landroid/widget/ListView;

.field private mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

.field private mGroupListView:Landroid/widget/ListView;

.field private mMainViewSplit:Landroid/widget/FrameLayout;

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSelectedViewOnStart:I

.field private mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

.field private mStub:Landroid/view/ViewStub;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->INVALID_INDEX:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSBrowserMainActivityContextId:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$1;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$2;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private inflateTwoPane(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mflag:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mMainViewSplit:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040097

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mMainViewSplit:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->triggerTabsyncManually()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->startTabSyncing()V

    return-void
.end method

.method private setTitle(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getParentHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getParentWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    return v0
.end method

.method initSelectedGroup()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->selectGroup(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->selectGroup(I)V

    goto :goto_0
.end method

.method public initializeUI(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->initializeUI(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->inflateTwoPane(Landroid/app/Activity;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v4, v5

    :goto_0
    return v4

    :pswitch_0
    iget v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->removeGroup(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->updateTabTableUsingDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->updateChildList(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->getSelectedGroup()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->setTitle(I)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->triggerTabsyncManually()V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    sget-object v6, Lcom/sec/android/app/sbrowser/provider/SBrowserConstants;->tabUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;->getNumberOfDeviceIds(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v6, 0x7f0a0262

    invoke-virtual {v4, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mMainViewSplit:Landroid/widget/FrameLayout;

    const v6, 0x7f0a0260

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    const v6, 0x7f040099

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0353
        :pswitch_0
    .end packed-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v4, 0x7f0e0023

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    return-void
.end method

.method public onOperation(Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener$Operation;)V
    .locals 8

    const v7, 0x7f0202ac

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->getSelectedGroup()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    sget-object v3, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi$3;->$SwitchMap$com$sec$android$app$sbrowser$common$SplitRatioController$SplitRatioListener$Operation:[I

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
    if-eqz v2, :cond_0

    iput v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSelectedViewOnStart:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    iget v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSelectedViewOnStart:I

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSelectedViewOnStart:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    iput v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSelectedViewOnStart:I

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iput v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSelectedViewOnStart:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processPostExecuteUI(Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;)V
    .locals 10

    const v9, 0x7f0202ae

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mMainViewSplit:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0260

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    const v1, 0x7f040099

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mContextSbrowserMobileApp:Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getContentViewListAdapterByContextID(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mChromeViewListAdapter:Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getBrowserMainActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mActivity:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v3, 0x7f0a01b1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v4, 0x7f0a01af

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v5, 0x7f0a01ac

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v6, 0x7f0a01b0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v7, 0x7f0a01ab

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/SplitRatioController$SplitRatioListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setMaxLeftPaneWidth(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSelectedViewOnStart:I

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mUiController:Lcom/sec/android/app/sbrowser/synctab/controller/SynctabController;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->historyData:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/synctab/controller/SynctabActivityController;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mExpAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/ExpandListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->mTabSyncActivity:Landroid/app/Activity;

    const v1, 0x7f0a01ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabRightPaneListAdapter;->getSelectedGroup()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->setTitle(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->initSelectedGroup()V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI;->syncTabEmptyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabBaseUI$SyncValues;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method selectGroup(I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;

    invoke-virtual {v2, p1, v1, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabLeftPaneListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    int-to-long v4, p1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public setSplitbarMoveAble(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/SynctabXlargeUi;->mSplitRatioController:Lcom/sec/android/app/sbrowser/common/SplitRatioController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SplitRatioController;->setMoveAble(Z)V

    :cond_0
    return-void
.end method
