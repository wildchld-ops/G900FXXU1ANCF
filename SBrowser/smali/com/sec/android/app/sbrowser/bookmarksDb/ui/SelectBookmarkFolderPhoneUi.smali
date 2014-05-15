.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;
.source "SelectBookmarkFolderPhoneUi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;-><init>()V

    return-void
.end method


# virtual methods
.method public configureAndShowView()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->configureAndShowView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f04008b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0241

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a023c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a023d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a023e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderListTitlebar:Landroid/widget/LinearLayout;

    return-void
.end method

.method public displayList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderPhoneAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    const/4 v1, 0x1

    return v1

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/SelectBookmarkFolderBaseUi;->mSelectBookmarkFolderUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/SelectBookmarkFolderUiController;->createBookmarkFolderActivity()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a034c -> :sswitch_2
        0x7f0a034d -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0a034c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0a034d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0a034e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v5
.end method
