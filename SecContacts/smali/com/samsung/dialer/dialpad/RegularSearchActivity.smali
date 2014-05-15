.class public Lcom/samsung/dialer/dialpad/RegularSearchActivity;
.super Landroid/app/Activity;
.source "RegularSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field mRegularSearchFragment:Lcom/samsung/dialer/dialpad/RegularSearchFragment;

.field mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearSearchView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method private setupSearchView()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030103

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0e01aa

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x10000003

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setImeOptions(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method


# virtual methods
.method public attachSearchFragment()V
    .locals 4

    const v3, 0x7f0802a2

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    invoke-direct {v1}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mRegularSearchFragment:Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mRegularSearchFragment:Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mRegularSearchFragment:Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    goto :goto_0
.end method

.method public clearFocusOnActionBarSearchView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->setupSearchView()V

    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->attachSearchFragment()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->clearSearchView()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mRegularSearchFragment:Lcom/samsung/dialer/dialpad/RegularSearchFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/dialer/dialpad/RegularSearchFragment;->onKeywordChanged(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/dialer/dialpad/RegularSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
