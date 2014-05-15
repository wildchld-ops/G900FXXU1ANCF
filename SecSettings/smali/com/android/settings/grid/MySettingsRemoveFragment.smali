.class public Lcom/android/settings/grid/MySettingsRemoveFragment;
.super Lcom/android/settings/grid/FavoriteMenuListFragment;
.source "MySettingsRemoveFragment.java"


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private selectedPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/grid/FavoriteMenuListFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/grid/MySettingsRemoveFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/MySettingsRemoveFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    invoke-super {p0, p1}, Lcom/android/settings/grid/FavoriteMenuListFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/grid/FavoriteMenuListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/grid/MySettingsRemoveFragment;->checkAll(Z)V

    iget v3, p0, Lcom/android/settings/grid/MySettingsRemoveFragment;->selectedPos:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    iget v4, p0, Lcom/android/settings/grid/MySettingsRemoveFragment;->selectedPos:I

    invoke-virtual {v3, v4}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderViewByPosition(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/settings/grid/GridItemContainer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/grid/GridItemContainer;->setChecked(Z)V

    :cond_0
    return-object v2
.end method

.method public setRemoveCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/MySettingsRemoveFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setSelectedView(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/grid/MySettingsRemoveFragment;->selectedPos:I

    return-void
.end method
