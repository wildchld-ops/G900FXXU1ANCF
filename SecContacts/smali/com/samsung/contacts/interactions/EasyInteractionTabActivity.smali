.class public Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;
.super Lcom/samsung/contacts/interactions/InteractionTabActivity;
.source "EasyInteractionTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected configureContactsFragments()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->configureContactsFragments()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setEasyMode(Z)V

    return-void
.end method

.method protected createInteractionActionBarAdapter(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;-><init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    return-void
.end method

.method protected createTabPagerAdapter()Lcom/samsung/contacts/activities/TabPagerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity$EasyInteractionTabPagerAdapter;-><init>(Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method protected doDoneAction()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mDisplayTab:Z

    if-eqz v0, :cond_1

    const-string v0, "EasyInteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPickerResult()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_0
.end method

.method protected getRequest(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->getRequest(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v0

    goto :goto_0
.end method

.method protected getResultString(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->makeResultString(Ljava/util/Map$Entry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hideSoftKeyboardInFragment(I)V
    .locals 3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public isBlockFavoritesTabMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/contacts/interactions/EasyInteractionActionBarAdapter;->mIsEasyMode:Z

    invoke-super {p0}, Lcom/samsung/contacts/interactions/InteractionTabActivity;->onDestroy()V

    return-void
.end method

.method protected setCurrentFragmentActiveFlag()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-nez v0, :cond_1

    const-string v0, "EasyInteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setIsFragmentShowing(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setCurrentFragmentSoftInputMode()V
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSoftInputMode()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;->setSoftInputMode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->setSoftInputMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setVisibilitySelectionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupBlockTabs()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getTabMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockLogsTab(Z)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockFavoritesTab(Z)V

    sput-boolean v3, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->mIsEasyMode:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "isLogsTabBlock"

    const-string v2, "logblock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vip-email"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pick-contact-from-tab"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "email-multi"

    const-string v2, "additional"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockLogsTab(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getExtraValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockLogsTab(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mActionBarAdapter:Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionActionBarAdapter;->setBlockLogsTab(Z)V

    goto :goto_0
.end method

.method protected setupFragments(Landroid/app/FragmentTransaction;Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mTabState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearListViewFocus()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearSelectedArray()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-static {p1, v0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-static {p1, v0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "EasyInteractionTabActivity"

    const-string v1, "updateFragmentVisibility->CONTACTS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "EasyInteractionTabActivity"

    const-string v1, "mContactsFragment null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearSelectedArray()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;->clearCustomSearchResult()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mGroupsFragment:Lcom/samsung/contacts/interactions/InteractionGroupBrowseListFragment;

    invoke-static {p1, v0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->mContactsFragment:Lcom/samsung/contacts/interactions/InteractionPickerContactsFragment;

    invoke-static {p1, v0}, Lcom/samsung/contacts/interactions/EasyInteractionTabActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
