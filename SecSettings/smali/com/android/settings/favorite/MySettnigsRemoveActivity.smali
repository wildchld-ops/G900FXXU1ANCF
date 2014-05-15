.class public Lcom/android/settings/favorite/MySettnigsRemoveActivity;
.super Lcom/android/settings/favorite/FavoriteMenuList;
.source "MySettnigsRemoveActivity.java"


# instance fields
.field private cnt:I

.field frag:Landroid/app/Fragment;

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mItem_trash:Landroid/view/MenuItem;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;

.field popup:Landroid/widget/PopupMenu;

.field private selectedPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/favorite/FavoriteMenuList;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->selectedPos:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    new-instance v0, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity$1;-><init>(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)V

    iput-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/favorite/MySettnigsRemoveActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mMultiSelectActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/favorite/MySettnigsRemoveActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mMultiSelectActionBarView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/favorite/MySettnigsRemoveActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;

    return-object p1
.end method


# virtual methods
.method public checkAll(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setAllChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->frag:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->frag:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings/grid/FavoriteMenuListFragment;

    invoke-virtual {v1, p1}, Lcom/android/settings/grid/FavoriteMenuListFragment;->checkAll(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    const v2, 0x7f0201da

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput v4, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    const v2, 0x7f0201db

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public checkItem(Z)V
    .locals 8

    const v7, 0x7f0b0740

    const v6, 0x7f0b073c

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    const v2, 0x7f0201da

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_1
    iget v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mItem_trash:Landroid/view/MenuItem;

    const v2, 0x7f0201db

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public configureActionBar()V
    .locals 0

    return-void
.end method

.method public createPopup()V
    .locals 3

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mSelectionMenu:Landroid/widget/Button;

    invoke-direct {v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120008

    iget-object v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0b0740

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->popup:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity$2;-><init>(Lcom/android/settings/favorite/MySettnigsRemoveActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method public displayGridView(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/grid/MySettingsRemoveFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/MySettingsRemoveFragment;-><init>()V

    iget v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->selectedPos:I

    invoke-virtual {v1, v2}, Lcom/android/settings/grid/MySettingsRemoveFragment;->setSelectedView(I)V

    iget-object v2, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lcom/android/settings/grid/MySettingsRemoveFragment;->setRemoveCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v1, p0, p1}, Lcom/android/settings/grid/MySettingsRemoveFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public displayListView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/favorite/FavoriteMenuList;->displayListView()V

    iget-object v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->frag:Landroid/app/Fragment;

    invoke-super {p0, p1}, Lcom/android/settings/favorite/FavoriteMenuList;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "selected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->selectedPos:I

    :cond_0
    iget v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->selectedPos:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/favorite/FavoriteMenuList;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->cnt:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/favorite/FavoriteMenuList;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->checkItem(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->checkItem(Z)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/android/settings/favorite/FavoriteMenuList;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->checkItem(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public saveState()V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->removeFrequent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateState()V
    .locals 2

    iget v0, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->selectedPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList;->mAdapter:Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;

    iget v1, p0, Lcom/android/settings/favorite/MySettnigsRemoveActivity;->selectedPos:I

    invoke-virtual {v0, v1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->setChecked(I)V

    :cond_0
    return-void
.end method
