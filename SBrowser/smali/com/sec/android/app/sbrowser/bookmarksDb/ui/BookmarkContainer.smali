.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;
.super Landroid/widget/RelativeLayout;
.source "BookmarkContainer.java"


# instance fields
.field private mIgnoreRequestLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->mIgnoreRequestLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->mIgnoreRequestLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->mIgnoreRequestLayout:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->updateTransitionDrawable(Z)V

    return-void
.end method

.method final init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->setFocusable(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->mIgnoreRequestLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIgnoreRequestLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->mIgnoreRequestLayout:Z

    return-void
.end method

.method updateTransitionDrawable(Z)V
    .locals 4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/BookmarkContainer;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method
