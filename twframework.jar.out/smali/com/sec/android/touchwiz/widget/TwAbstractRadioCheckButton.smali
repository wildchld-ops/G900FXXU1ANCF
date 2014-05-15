.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
.super Landroid/widget/Button;
.source "TwAbstractRadioCheckButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$1;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonDrawableGravity:I

.field protected mButtonDrawablePaddingBottom:I

.field protected mButtonDrawablePaddingLeft:I

.field protected mButtonDrawablePaddingRight:I

.field protected mButtonDrawablePaddingTop:I

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/16 v7, 0x15

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    sget-object v4, Ltouchwiz/R$styleable;->TwAbstractRadioCheckButton:[I

    const v5, 0x2070007

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawableGravity(I)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setupMinHeight()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setMinHeight(I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->invalidate()V

    :cond_0
    return-void
.end method

.method protected getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonDrawableGravity()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method protected onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {p3, v2, v3, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setFreezesText(Z)V

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    return-object v0
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->toggle()V

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setButtonDrawableGravity(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    return-void
.end method

.method public setButtonDrawablePadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
