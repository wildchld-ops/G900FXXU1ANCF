.class Lcom/android/settings/grid/FavoriteMenuListFragment$1;
.super Ljava/lang/Object;
.source "FavoriteMenuListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/grid/FavoriteMenuListFragment;->initClickListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/grid/FavoriteMenuListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/16 v9, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridItemContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/grid/GridItemContainer;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    invoke-virtual {v6}, Lcom/android/settings/grid/FavoriteMenuListFragment;->getCheckedCount()I

    move-result v6

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    invoke-virtual {v6}, Lcom/android/settings/grid/FavoriteMenuListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    invoke-virtual {v7}, Lcom/android/settings/grid/FavoriteMenuListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090021

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v7, v8, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/grid/GridItemContainer;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/grid/GridItemContainer;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v4, p1}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderByPosition(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    iget-object v4, v4, Lcom/android/settings/grid/FavoriteMenuListFragment;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/FavoriteMenuListFragment$1;->this$0:Lcom/android/settings/grid/FavoriteMenuListFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    invoke-interface {v4, v1, v3}, Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method
