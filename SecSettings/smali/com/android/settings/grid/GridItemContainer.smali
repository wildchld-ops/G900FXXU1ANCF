.class public Lcom/android/settings/grid/GridItemContainer;
.super Landroid/widget/LinearLayout;
.source "GridItemContainer.java"


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/grid/GridItemContainer;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/grid/GridItemContainer;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/grid/GridItemContainer;->mChecked:Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/grid/GridItemContainer;->mChecked:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/android/settings/grid/GridItemContainer;->mChecked:Z

    invoke-virtual {p0, v4}, Lcom/android/settings/grid/GridItemContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0b009b

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ToggleImageView;

    const v3, 0x7f0b0231

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ToggleImageView;

    iget-boolean v3, p0, Lcom/android/settings/grid/GridItemContainer;->mChecked:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/android/settings/ToggleImageView;->setAlpha(F)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/settings/ToggleImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/android/settings/ToggleImageView;->setAlpha(F)V

    :cond_3
    if-eqz v1, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/settings/ToggleImageView;->setVisibility(I)V

    goto :goto_0
.end method
