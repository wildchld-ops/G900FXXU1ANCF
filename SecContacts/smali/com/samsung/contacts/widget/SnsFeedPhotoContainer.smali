.class public Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;
.super Landroid/widget/RelativeLayout;
.source "SnsFeedPhotoContainer.java"


# instance fields
.field mClickTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;->mClickTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;->mClickTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;->mClickTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchSetPressed(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;->mClickTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;->mClickTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setClickTargetview(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/widget/SnsFeedPhotoContainer;->mClickTargetView:Landroid/view/View;

    return-void
.end method
