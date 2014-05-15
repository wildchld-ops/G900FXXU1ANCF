.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;
.super Landroid/app/Activity;
.source "EditBookmarkFolderActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

.field private mLocale:Ljava/lang/String;

.field private mMaxTagLength:I

.field private mResources:Landroid/content/res/Resources;

.field private mTitle:Ljava/lang/String;

.field private mTitleEditBox:Landroid/widget/EditText;

.field private mflag:Z

.field private saveActionView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mMaxTagLength:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c01a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->showAlertTag(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mMaxTagLength:I

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

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

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0155

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0157

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0123

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c015a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0124

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0c01ec

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    const v2, 0x7f0c01ed

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f040037

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->setContentView(I)V

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->setParentActivity(Landroid/app/Activity;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v6

    invoke-static {v7, v6}, Lcom/sec/android/app/sbrowser/common/SBrowserUtils;->setFullscreen(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040003

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0062

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0067

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    const v7, 0x7f0a0068

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$2;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v6, 0x7f0a0124

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mMaxTagLength:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mMaxTagLength:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mMaxTagLength:I

    invoke-virtual {v6, v8, v7}, Landroid/widget/EditText;->setSelection(II)V

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v6, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget v6, v3, Landroid/content/res/Configuration;->navigation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$3;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->useFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mflag:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->recreate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mEditBookmarkFolderController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/EditBookmarkFolderController;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const v4, 0x7f080033

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->isXLarge()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitleEditBox:Landroid/widget/EditText;

    const v2, 0x7f0c01ed

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->saveActionView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;->mTitle:Ljava/lang/String;

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

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity$4;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/EditBookmarkFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
