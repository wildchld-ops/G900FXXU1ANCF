.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;
.super Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;
.source "AddBookmarkPhoneUi.java"


# instance fields
.field private mAccountText:Landroid/widget/TextView;

.field private mAddBookmarkHeaderIcon:Landroid/widget/ImageView;

.field private mAddBookmarkTitleInput:Landroid/widget/EditText;

.field private mAddBookmarkUrlInput:Landroid/widget/EditText;

.field private mFolderText:Landroid/widget/TextView;

.field private mLayoutComplete:Z

.field private mLineUnderUrl:Landroid/view/View;

.field private mSelectFolderLayout:Landroid/widget/LinearLayout;

.field private mUrlLayout:Landroid/widget/LinearLayout;

.field private saveActionView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkHeaderIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLayoutComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLayoutComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLayoutComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private resourceInit()V
    .locals 9

    const/16 v7, 0x8

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0052

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0050

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLineUnderUrl:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0076

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mFolderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0074

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAccountText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAccountText:Landroid/widget/TextView;

    const v6, 0x7f0c015b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mUrlLayout:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mIsInEditMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mUrlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLineUnderUrl:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0072

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mSelectFolderLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mSelectFolderLayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mUrlLayout:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0073

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkHeaderIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040002

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0a0062

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0064

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->saveActionView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0065

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c026f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->saveActionView:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$5;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$6;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mUrlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mLineUnderUrl:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public configureAndShowView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->configureAndShowView(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->resourceInit()V

    return-void
.end method

.method public getTitleTextBoxValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlTextBoxValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleLanguageChange()V
    .locals 5

    const v4, 0x7f0c0195

    const v3, 0x7f0c00d0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->handleLanguageChange()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->setErrorBasedOnScenario()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0156

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;->cancelButtonSelected()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;->doneButtonSelected()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;->deleteButtonSelected()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a02cf -> :sswitch_0
        0x7f0a02d0 -> :sswitch_1
        0x7f0a02d1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0a02d1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a02d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0a02cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public setBookmarkAccountName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAccountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBookmarkParent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBookmarkTitle(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->setBookmarkTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method public setBookmarkUrlEditable(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->setBookmarkUrlEditable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mUrlLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mUrlLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDoneButtonEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setErrorBasedOnScenario()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->getTitleTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c01ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c01f1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->getUrlTextBoxValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c01ee

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkTitleInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkUrlInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1
.end method

.method public setUndoBarMargin()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0079

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public updateAddBookmarkHeaderIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->checkSamsungAccountSignUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkHeaderIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->mAddBookmarkHeaderIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
