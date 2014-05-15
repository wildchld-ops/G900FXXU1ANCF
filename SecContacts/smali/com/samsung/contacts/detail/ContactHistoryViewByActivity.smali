.class public Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;
.super Landroid/app/Activity;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;


# instance fields
.field private mFragment:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

.field mOptionIsChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    return-void
.end method

.method private setupActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f0e02ec

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doRevertActionMenu()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->finish()V

    return-void
.end method

.method public doSaveAction([Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->finish()V

    return-void
.end method

.method public onChangedOptionItems(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "optionsChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    :cond_0
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    invoke-direct {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->setupActionBar()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->setExtras(Landroid/os/Bundle;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f080172

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->linkListItemToOption()V

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mFragment:Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->doSaveAction([Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->doRevertActionMenu()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080171 -> :sswitch_2
        0x7f080172 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x258

    if-gt v3, v4, :cond_0

    const v3, 0x7f080172

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f080171

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const v3, 0x7f020101

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v3, 0x7f020102

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "optionsChanged"

    iget-boolean v1, p0, Lcom/samsung/contacts/detail/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
