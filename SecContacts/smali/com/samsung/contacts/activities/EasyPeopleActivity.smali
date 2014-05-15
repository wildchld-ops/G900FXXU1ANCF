.class public Lcom/samsung/contacts/activities/EasyPeopleActivity;
.super Lcom/android/contacts/activities/PeopleActivity;
.source "EasyPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/activities/EasyPeopleActivity$EasyContactTabPagerAdapter;
    }
.end annotation


# static fields
.field static taskMovedToBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->taskMovedToBack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/activities/EasyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/activities/EasyPeopleActivity;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/activities/EasyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/activities/EasyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/activities/EasyPeopleActivity;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/activities/EasyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method


# virtual methods
.method protected addFragmentsToTransaction(Landroid/app/FragmentTransaction;)V
    .locals 3

    const v2, 0x7f08014b

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string v1, "tab-pager-dialpad"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    const-string v1, "tab-pager-calllog"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method protected createActionBarAdapter(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/activities/EasyActionBarAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EasyPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p4}, Lcom/samsung/contacts/activities/EasyActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mTabPagerAdapter:Lcom/samsung/contacts/activities/TabPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/TabPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected createOptionMenuController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mOptionMenuController:Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;

    :cond_0
    return-void
.end method

.method protected createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/contacts/activities/EasyPeopleActivity$EasyContactTabPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/samsung/contacts/activities/EasyPeopleActivity$EasyContactTabPagerAdapter;-><init>(Lcom/samsung/contacts/activities/EasyPeopleActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method public moveTaskToBack(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->moveTaskToBack(Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->taskMovedToBack:Z

    sget-boolean v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->taskMovedToBack:Z

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->taskMovedToBack:Z

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/activities/PeopleActivity;->onResume()V

    sget-boolean v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->taskMovedToBack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DEFAULT:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->taskMovedToBack:Z

    :cond_0
    return-void
.end method

.method protected updateActionBarCustomView(I)V
    .locals 2

    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mDialpadSearchImpl:Lcom/samsung/dialer/impl/DialpadSearchImpl;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialpadSearchImpl;->getDialpadSearchView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBarForDialpad(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchView(I)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBarForViewBy(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->configureActionBar()V

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchView(I)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0
.end method

.method protected updateFragmentsVisibility()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    iget-object v1, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EasyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
