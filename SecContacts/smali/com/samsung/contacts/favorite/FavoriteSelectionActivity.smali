.class public Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FavoriteSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;
    }
.end annotation


# static fields
.field private static sIsTwoPaneMode:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionCode:I

.field private mDoneButtonClickable:Z

.field private mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field protected mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/common/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSelectedCount:I

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionCode:I

    iput v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedCount:I

    iput v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mTotalCount:I

    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mTotalCount:I

    return p1
.end method


# virtual methods
.method public actionbarsetup()Landroid/app/ActionBar;
    .locals 2

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    sget-boolean v1, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->sIsTwoPaneMode:Z

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const v1, 0x7f0e0036

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public configureListFragment()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionCode:I

    new-instance v0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setDirectorySearchMode(I)V

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setActionCode(I)V

    const/16 v1, -0xd

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v1, v4}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setMultiSelectEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080036

    iget-object v3, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/contacts/common/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/common/list/ContactEntryListFragment;

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    check-cast v0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    iput-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->setupActionListener()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03009c

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->sIsTwoPaneMode:Z

    if-eqz p1, :cond_0

    const-string v1, "actionCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionCode:I

    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMode:I

    const-string v1, "mSelectedCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedCount:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->configureListFragment()V

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->actionbarsetup()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;-><init>(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f080171

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->runAddFavoriteListThread()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_1
        0x7f080172 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "actionCode"

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mode"

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mSelectedCount"

    iget v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mDoneButtonClickable:Z

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setupActionListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mListFragment:Lcom/android/contacts/common/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mFavoriteSelectionFragment:Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;

    new-instance v1, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;-><init>(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/favorite/FavoriteSelectionFragment;->setonFavoritesUpdateListener(Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;)V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
