.class public Lcom/android/contacts/common/list/ContactTileStarredView;
.super Lcom/android/contacts/common/list/ContactTileView;
.source "ContactTileStarredView.java"


# instance fields
.field private mCallButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/ContactTileView$Listener;->getApproximateTileWidth()I

    move-result v0

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactTileView;->onFinishInflate()V

    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileStarredView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileStarredView;->mCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileStarredView;->mCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileStarredView;->mCallButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/common/list/ContactTileStarredView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/list/ContactTileStarredView$1;-><init>(Lcom/android/contacts/common/list/ContactTileStarredView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
