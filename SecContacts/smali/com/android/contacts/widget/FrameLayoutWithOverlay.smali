.class public Lcom/android/contacts/widget/FrameLayoutWithOverlay;
.super Landroid/widget/FrameLayout;
.source "FrameLayoutWithOverlay.java"


# instance fields
.field private final mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-direct {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->bringToFront()V

    return-void
.end method

.method protected setAlphaLayer(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setAlphaLayer(Landroid/view/View;)V

    return-void
.end method

.method public setOverlayClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setOverlayClickable(Z)V

    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/FrameLayoutWithOverlay;->mOverlay:Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
