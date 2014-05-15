.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;
.source "CreateBookmarkFolderPhoneUi.java"


# instance fields
.field private mSaveButton:Landroid/widget/TextView;

.field private mSelFolderID:J

.field private setFolderIDforSelection:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;-><init>()V

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->setFolderIDforSelection:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->mSelFolderID:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->mSaveButton:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;J)J
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->mSelFolderID:J

    return-wide p1
.end method


# virtual methods
.method public Initialise()V
    .locals 0

    return-void
.end method

.method public configureAndShowView()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->configureAndShowView()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f04008b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setContentView(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0241

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a023c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a023d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a023e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a023f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderListTitlebar:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderName:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderListTitlebar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f040002

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0a0062

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0064

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    new-instance v5, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setClickable(Z)V

    const v5, 0x7f0a0065

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->mSaveButton:Landroid/widget/TextView;

    return-void
.end method

.method public displayList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->setFolderIDforSelection:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->setCheckforSelectedPosition(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$5;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->setFolderIDforSelection:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getSelectedFolderID()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->mSelFolderID:J

    return-wide v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setFolderIDforSelection(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->setFolderIDforSelection:J

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mAdapter:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneAdapter;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method
