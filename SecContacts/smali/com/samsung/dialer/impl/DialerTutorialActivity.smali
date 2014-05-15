.class public Lcom/samsung/dialer/impl/DialerTutorialActivity;
.super Landroid/app/Activity;
.source "DialerTutorialActivity.java"

# interfaces
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/impl/DialerTutorialActivity$1;,
        Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;
    }
.end annotation


# instance fields
.field final DIALPAD_TAG:Ljava/lang/String;

.field public contactSaved:Z

.field public dislpadButtonRes:I

.field private isLoadStep:Z

.field private isUsingTwoPanes:Z

.field public keypadMenu:Landroid/view/MenuItem;

.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field public mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field private mIsEasyMode:Z

.field private mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

.field private mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

.field private mTabPagerAdapter:Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;

.field private tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

.field private txtSearchName:Landroid/widget/TextView;

.field private txtSearchNumber:Landroid/widget/TextView;

.field public viewAddContacts:Landroid/view/View;

.field public viewDialpadSearch:Landroid/view/View;

.field public viewSearch:Landroid/view/View;

.field private whatTutorial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "tab-pager-dialpad"

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->DIALPAD_TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->keypadMenu:Landroid/view/MenuItem;

    iput-boolean v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mIsEasyMode:Z

    iput-boolean v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->contactSaved:Z

    iput-boolean v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isLoadStep:Z

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->dislpadButtonRes:I

    return-void
.end method

.method private getIntentInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DialerGuideMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->whatTutorial:Ljava/lang/String;

    return-void
.end method

.method private runTutorial()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->whatTutorial:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isLoadStep:Z

    invoke-static {p0, v0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->getTutorialDialog(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/samsung/dialer/impl/DialerTutorialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->show()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->start()V

    :cond_1
    return-void
.end method

.method private setActionbar(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mIsEasyMode:Z

    invoke-static {v2, v3}, Lcom/samsung/contacts/activities/ContactsTab;->setupContactsTab(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    iget-boolean v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mIsEasyMode:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/contacts/activities/EasyActionBarAdapter;

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isUsingTwoPanes:Z

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/samsung/contacts/activities/EasyActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    :goto_0
    new-instance v1, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "actionBarAdapter.lastTab"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030081

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewDialpadSearch:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewDialpadSearch:Landroid/view/View;

    const v3, 0x7f0801b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewAddContacts:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewDialpadSearch:Landroid/view/View;

    const v3, 0x7f080147

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewSearch:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewDialpadSearch:Landroid/view/View;

    const v3, 0x7f080052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->txtSearchName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewDialpadSearch:Landroid/view/View;

    const v3, 0x7f0801b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->txtSearchNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewDialpadSearch:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBarForDialpad(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance v2, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isUsingTwoPanes:Z

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    goto :goto_0
.end method

.method private setLayout()V
    .locals 5

    const v4, 0x7f08014b

    const v2, 0x7f0300e0

    invoke-virtual {p0, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/widget/ContactsViewPager;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    new-instance v2, Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;-><init>(Lcom/samsung/dialer/impl/DialerTutorialActivity;Lcom/samsung/dialer/impl/DialerTutorialActivity$1;)V

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mTabPagerAdapter:Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    iget-object v3, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mTabPagerAdapter:Lcom/samsung/dialer/impl/DialerTutorialActivity$TabPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/ContactsViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v2, "tab-pager-dialpad"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v2}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string v3, "tab-pager-dialpad"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method public getDigit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->finishTutorial()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isLoadStep:Z

    :goto_0
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mIsEasyMode:Z

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setLayout()V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isUsingTwoPanes:Z

    invoke-direct {p0, p1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->setActionbar(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getIntentInfo()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->isLoadStep:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f08034a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->keypadMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->clearAllMessages()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;->configureVisibility(Landroid/view/Menu;II)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->inflateDialpad()Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/ContactsViewPager;->setTabStatus(I)V

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mTabPager:Lcom/samsung/contacts/widget/ContactsViewPager;

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/ContactsViewPager;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->runTutorial()V

    return-void
.end method

.method public onSelectedTabChanged()V
    .locals 0

    return-void
.end method

.method public requestSmartDialSearch(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewAddContacts:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewSearch:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->contactSaved:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->txtSearchName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->tutorialDialog:Lcom/samsung/dialer/impl/DialerTutorialDialog;

    iget-object v1, v1, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->txtSearchNumber:Landroid/widget/TextView;

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewAddContacts:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewSearch:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewAddContacts:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->viewSearch:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDigit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Lcom/android/dialer/dialpad/EllipsisTextView;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
