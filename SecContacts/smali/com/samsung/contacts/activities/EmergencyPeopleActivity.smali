.class public Lcom/samsung/contacts/activities/EmergencyPeopleActivity;
.super Lcom/samsung/contacts/activities/EasyPeopleActivity;
.source "EmergencyPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/activities/EasyPeopleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method


# virtual methods
.method protected addFragmentsToTransaction(Landroid/app/FragmentTransaction;)V
    .locals 3

    const v2, 0x7f08014b

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string v1, "tab-pager-dialpad"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    const-string v1, "tab-pager-calllog"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method protected createActionBarAdapter(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V
    .locals 2

    new-instance v0, Lcom/samsung/contacts/activities/EasyActionBarAdapter;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p4}, Lcom/samsung/contacts/activities/EasyActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-void
.end method

.method protected createFragmentsAttachedViewPager()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->createDialpadFragment()V

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->getContactBrowseListFragment()Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-void
.end method

.method protected createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/samsung/contacts/activities/EmergencyPeopleActivity$EmergencyContactTabPagerAdapter;-><init>(Lcom/samsung/contacts/activities/EmergencyPeopleActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected getContactBrowseListFragment()Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    new-instance v0, Lcom/samsung/contacts/list/EmergencyContactListFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/list/EmergencyContactListFragment;-><init>()V

    return-object v0
.end method

.method protected isSweepEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableIpCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/contacts/activities/EasyPeopleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableIpCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    sget v1, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/contacts/activities/EasyPeopleActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setTransactionHide(Landroid/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/samsung/contacts/activities/EmergencyPeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method
