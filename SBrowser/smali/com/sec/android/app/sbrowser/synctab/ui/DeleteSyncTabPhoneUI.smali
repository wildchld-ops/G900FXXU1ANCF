.class public Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;
.super Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;
.source "DeleteSyncTabPhoneUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private devicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mSelectAllButton:Landroid/widget/Button;

.field private mSelectAllPopupMenu:Landroid/widget/PopupMenu;

.field private selectAllView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getDeviceNamesList()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI$DeleteSyncTabAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public handleActionBarDropdownSelect(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f0a0061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c032d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->toggleSelection(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c032e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->toggleSelection(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public initializeUI()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040035

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->selectAllView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->selectAllView:Landroid/view/View;

    invoke-direct {v1, v2, v4, p0, v3}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->getDeviceNamesList()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v2, 0x7f0a030e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mSelectedItemsCount:I

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v0, p3, p2}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->handleClick(ILandroid/view/View;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabBaseUI;->mController:Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->devicesList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/synctab/controller/DeleteSyncTabActivityController;->deleteTabs(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a030e
        :pswitch_0
    .end packed-switch
.end method

.method public processPostExecuteUI(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTab;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->devicesList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->selectAllView:Landroid/view/View;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabPhoneUI;->mAdapter:Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/synctab/ui/DeleteSyncTabAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
