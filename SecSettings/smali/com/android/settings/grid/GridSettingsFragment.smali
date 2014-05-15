.class public Lcom/android/settings/grid/GridSettingsFragment;
.super Landroid/app/Fragment;
.source "GridSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;,
        Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;
    }
.end annotation


# instance fields
.field mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

.field mGridarea:Landroid/widget/LinearLayout;

.field mHeaderViewClickListener:Landroid/view/View$OnClickListener;

.field protected mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

.field mToggleHeaderClickListener:Landroid/view/View$OnClickListener;

.field mViewLongClickListner:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setLayoutTransition()V
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method


# virtual methods
.method public initClickListner()V
    .locals 1

    new-instance v0, Lcom/android/settings/grid/GridSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/grid/GridSettingsFragment$1;-><init>(Lcom/android/settings/grid/GridSettingsFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/GridSettingsFragment;->setHeaderViewClickListner(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/settings/grid/GridSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/grid/GridSettingsFragment$2;-><init>(Lcom/android/settings/grid/GridSettingsFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/GridSettingsFragment;->setToggleHeaderClickListner(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
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

    const-string v0, "GridSettingsFragment"

    const-string v1, "initHeaderList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;-><init>(Lcom/android/settings/grid/GridSettingsFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v1, "GridSettingsFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->initClickListner()V

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    iput-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    :cond_0
    const v1, 0x7f0400c3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->initView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    invoke-direct {p0}, Lcom/android/settings/grid/GridSettingsFragment;->setLayoutTransition()V

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v0}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->resume()V

    return-void
.end method

.method public setHeaderViewClickListner(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mHeaderViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setToggleHeaderClickListner(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mToggleHeaderClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setViewLongClickListner(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mViewLongClickListner:Landroid/view/View$OnLongClickListener;

    return-void
.end method
