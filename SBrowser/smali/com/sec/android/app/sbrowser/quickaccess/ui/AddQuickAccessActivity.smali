.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;
.super Landroid/app/Activity;
.source "AddQuickAccessActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final PIN_URL:Ljava/lang/String; = "pin_url"


# instance fields
.field private mMaxTagLength:I

.field private mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

.field private mSaveTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleEditBox:Landroid/widget/EditText;

.field private mUrl:Ljava/lang/String;

.field private mUrlEditBox:Landroid/widget/EditText;

.field private mflag:Z

.field private saveActionView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mSaveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private inflateLayout()V
    .locals 1

    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->init()V

    return-void
.end method

.method private init()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewUxQuickAccessEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    if-nez v5, :cond_1

    new-instance v5, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mQuickAccessUtilityController:Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v5

    invoke-static {v6, v5}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f040003

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0a0062

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0067

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v5, 0x7f0a01c0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    const v5, 0x7f0a01c3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mUrlEditBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mUrlEditBox:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mUrlEditBox:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;

    const v6, 0x7f0a0068

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mMaxTagLength:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mMaxTagLength:I

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mMaxTagLength:I

    invoke-virtual {v5, v7, v6}, Landroid/widget/EditText;->setSelection(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v5, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    iget v5, v3, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mMaxTagLength:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->showAlertTag(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mMaxTagLength:I

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0066

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0c0155

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a0068

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0c0157

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a01bf

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0c0195

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a01c2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c00d0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    const v6, 0x7f0c00cf

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mUrl:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->inflateLayout()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->saveActionView:Landroid/view/View;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->recreate()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;->mTitleEditBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showAlertTag(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007c

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity$5;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/AddQuickAccessActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
