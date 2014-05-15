.class public Lcom/samsung/contacts/detail/ContactHistoryActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactHistoryActivity.java"


# instance fields
.field private mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

.field private mIsDeleteMode:Z

.field private mIsItemSelected:Z

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsItemSelected:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v7, p1, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    const-string v4, "options"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    const-string v4, "view_by_call"

    aget-boolean v5, v3, v6

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_email"

    aget-boolean v5, v3, v7

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->restartLoading()V

    goto :goto_0

    :cond_2
    const-string v4, "view_by_email"

    aget-boolean v5, v3, v6

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "view_by_call"

    aget-boolean v5, v3, v6

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_message"

    aget-boolean v5, v3, v7

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_email"

    aget-boolean v5, v3, v8

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_im"

    const/4 v5, 0x3

    aget-boolean v5, v3, v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const-string v4, "view_by_message"

    aget-boolean v5, v3, v6

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_email"

    aget-boolean v5, v3, v7

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_im"

    aget-boolean v5, v3, v8

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    const-string v4, "view_by_email"

    aget-boolean v5, v3, v6

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "view_by_im"

    aget-boolean v5, v3, v7

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setDeleteMode(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    const-string v0, "deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    const-string v0, "isItemSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsItemSelected:Z

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setDeleteMode(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setupActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    if-nez v1, :cond_0

    const v1, 0x7f110013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setDeleteMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setDeleteMode(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->doDeleteAction()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setDeleteMode(Z)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "options"

    iget-object v2, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getSortOptions()[Z

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_1
        0x7f080172 -> :sswitch_2
        0x7f080304 -> :sswitch_3
        0x7f080335 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v2, 0x7f080172

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0e0039

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsItemSelected:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f080304

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->getAdapter()Lcom/samsung/contacts/detail/ContactHistoryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/detail/ContactHistoryListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "deleteMode"

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isItemSelected"

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsItemSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setDeleteMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->setupActionBar()V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method setIsItemSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsItemSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsItemSelected:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method setupActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryActivity;->mIsDeleteMode:Z

    if-nez v1, :cond_1

    const v1, 0x7f0e0337

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0e0039

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
