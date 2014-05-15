.class public Lcom/android/settings/grid/FavoriteMenuListFragment;
.super Lcom/android/settings/grid/GridSettingsFragment;
.source "FavoriteMenuListFragment.java"


# instance fields
.field mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAll(Z)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v2}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getCountOfHeaderViews()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderViewByPosition(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/settings/grid/GridItemContainer;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/grid/GridItemContainer;

    invoke-virtual {v0, p1}, Lcom/android/settings/grid/GridItemContainer;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCheckedCount()I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v3}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getCountOfHeaderViews()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/grid/GridItemContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/grid/GridItemContainer;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public initClickListner()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/grid/FavoriteMenuListFragment$1;-><init>(Lcom/android/settings/grid/FavoriteMenuListFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/FavoriteMenuListFragment;->setHeaderViewClickListner(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/grid/FavoriteMenuListFragment;->setToggleHeaderClickListner(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/grid/FavoriteMenuListFragment;->setViewLongClickListner(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/grid/FavoriteMenuListFragment;->mHeadersMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, p0, Lcom/android/settings/grid/FavoriteMenuListFragment;->mHeadersMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/grid/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/grid/GridSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v6}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getCountOfHeaders()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v6, v3}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderByPosition(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    const-string v6, "jjh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getViewByHeaderId(J)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/settings/grid/GridItemContainer;

    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/grid/FavoriteMenuListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/grid/FavoriteMenuListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/settings/grid/GridItemContainer;->setChecked(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    return-object v5
.end method
