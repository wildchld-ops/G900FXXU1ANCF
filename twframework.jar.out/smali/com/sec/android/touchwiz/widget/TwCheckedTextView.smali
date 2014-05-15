.class public Lcom/sec/android/touchwiz/widget/TwCheckedTextView;
.super Landroid/widget/TextView;
.source "TwCheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final CHECK_ANIMATION_DURATION:I = 0xc8


# instance fields
.field protected ADVANCED_VI_EFFECTS_ENABLED:Z

.field private mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mBasePadding:I

.field private mButtonBgHasBeenSet:Z

.field private mCheckBoxAnimationEnabled:Z

.field private mCheckMarkAnimating:Z

.field private mCheckMarkAnimationCurrentValue:F

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mNeedRequestlayout:Z

.field private mUsesDeviceDefaultAnimResBg:Z

.field private mUsesDeviceDefaultBg:Z

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimationCurrentValue:F

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimating:Z

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mButtonBgHasBeenSet:Z

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mUsesDeviceDefaultBg:Z

    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mUsesDeviceDefaultAnimResBg:Z

    sget-object v8, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v8, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    if-eqz v8, :cond_5

    const-string v8, "checkedtextview"

    const-string v9, "This is checkedtextview with ADVANCED_VI_EFFECTS enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v4, 0x1080692

    const v5, 0x1080693

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_4

    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mUsesDeviceDefaultBg:Z

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mUsesDeviceDefaultBg:Z

    if-eqz v6, :cond_2

    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mUsesDeviceDefaultBg:Z

    and-int/2addr v6, v8

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    :goto_1
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v6, "checkbox"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkMarkDrawable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", checkRectangleDrawable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move v6, v7

    goto :goto_0

    :cond_5
    const-string v6, "checkedtextview"

    const-string v8, "This is checkedtextview with ADVANCED_VI_EFFECTS disabled"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setAnimatedCheckBoxChecked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private setBasePadding(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mPaddingLeft:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mBasePadding:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mPaddingRight:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->resetPaddingToInitialValues()V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mBasePadding:I

    add-int v0, v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mPaddingLeft:I

    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->requestLayout()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mBasePadding:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mPaddingRight:I

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->isLayoutRtl()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setBasePadding(Z)V

    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimating:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimating:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimationCurrentValue:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->invalidate()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getGravity()I

    move-result v17

    and-int/lit8 v14, v17, 0x70

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/16 v16, 0x0

    sparse-switch v14, :sswitch_data_0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->isLayoutRtl()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getWidth()I

    move-result v15

    move/from16 v13, v16

    add-int v3, v13, v8

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mBasePadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkWidth:I

    move/from16 v17, v0

    add-int v11, v10, v17

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v7, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10, v13, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkAnimationCurrentValue:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mAnimCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getHeight()I

    move-result v17

    sub-int v16, v17, v8

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getHeight()I

    move-result v17

    sub-int v17, v17, v8

    div-int/lit8 v16, v17, 0x2

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mBasePadding:I

    move/from16 v17, v0

    sub-int v11, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkWidth:I

    move/from16 v17, v0

    sub-int v10, v11, v17

    goto/16 :goto_1

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v5, v10, v13, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->updatePadding()V

    return-void
.end method

.method public setCheckBoxAnimationEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkResource:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mNeedRequestlayout:Z

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setMinHeight(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkWidth:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_2
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->resolvePadding()V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mButtonBgHasBeenSet:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mButtonBgHasBeenSet:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setAnimatedCheckBoxChecked(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willAnimate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCheckedTextView;->mCheckBoxAnimationEnabled:Z

    return v0
.end method
