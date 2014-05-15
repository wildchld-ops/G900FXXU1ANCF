.class public abstract Lcom/sec/android/touchwiz/widget/TwCompoundButton;
.super Landroid/widget/Button;
.source "TwCompoundButton.java"

# interfaces
.implements Landroid/widget/AnimatedCheckable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$1;,
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final CHECK_ANIMATION_DURATION:I = 0x78


# instance fields
.field protected ADVANCED_VI_EFFECTS_ENABLED:Z

.field private mAssociatedTextView:Landroid/widget/TextView;

.field private mBroadcasting:Z

.field private mButtonBgHasBeenSet:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mCheckAnimationStartX:F

.field private mCheckBoxAnimationEnabled:Z

.field private mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkAnimating:Z

.field private mCheckMarkAnimationCurrentValue:F

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z

.field private mIsAttached:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

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

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    invoke-direct/range {p0 .. p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->ADVANCED_VI_EFFECTS_ENABLED:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckAnimationStartX:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->ADVANCED_VI_EFFECTS_ENABLED:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonBgHasBeenSet:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultBg:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultAnimResBg:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    sget-object v17, Lcom/android/internal/R$styleable;->CompoundButton:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const-string v17, "checkbox"

    const-string v18, "This is checkbox with ADVANCED_VI_EFFECTS enabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const v11, 0x1080692

    const v12, 0x1080693

    if-eq v7, v11, :cond_1

    if-ne v7, v12, :cond_7

    :cond_1
    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultBg:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultBg:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    :cond_2
    const v13, 0x108079a

    const v14, 0x108079b

    const v15, 0x10807a2

    const v16, 0x10807a3

    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eq v8, v13, :cond_3

    if-ne v8, v14, :cond_8

    :cond_3
    if-eq v9, v15, :cond_4

    move/from16 v0, v16

    if-ne v9, v0, :cond_8

    :cond_4
    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultAnimResBg:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultBg:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultAnimResBg:Z

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    :goto_2
    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mUsesDeviceDefaultAnimResBg:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const-string v17, "checkbox"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkMarkDrawable="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", checkRectangleDrawable="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", enabled="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_a
    const-string v17, "checkbox"

    const-string v18, "This is not checkbox or checkbox with ADVANCED_VI_EFFECTS disabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private setCheckAnimation(ZZZ)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private setCheckedInner(ZZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->onAssociatedCheckBoxChecked(ZZ)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setCheckAnimation(ZZZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mBroadcasting:Z

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->invalidate()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    return v1
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onStrikeThroughAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    const-string v0, "checkbox"

    const-string v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onStrikeThroughAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    const-string v0, "checkbox"

    const-string v1, "onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onStrikeThroughAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    const-string v0, "checkbox"

    const-string v1, "TwCheckBox.onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    const-string v0, "checkbox"

    const-string v1, "TwCheckBox.onDetachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getGravity()I

    move-result v13

    and-int/lit8 v12, v13, 0x70

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    const/4 v11, 0x0

    sparse-switch v12, :sswitch_data_0

    :goto_0
    add-int v1, v11, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getWidth()I

    move-result v13

    sub-int v8, v13, v7

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getWidth()I

    move-result v9

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimating:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    const/4 v5, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mScrollX:I

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v5, :cond_4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8, v11, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckContainerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckAnimationStartX:F

    float-to-int v13, v13

    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckAnimationStartX:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkAnimationCurrentValue:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getHeight()I

    move-result v13

    sub-int v11, v13, v6

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getHeight()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v11, v13, 0x2

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_2
    move v9, v7

    goto/16 :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v8, v11, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setFreezesText(Z)V

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwCompoundButton$SavedState;->checked:Z

    return-object v0
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->toggle()V

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method protected setAnimatedStartPointInner(F)V
    .locals 3

    const-string v0, "checkbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimatedStartPoint() startPointX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckAnimationStartX:F

    return-void
.end method

.method protected setAssociatedTextViewInner(Landroid/widget/TextView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mAssociatedTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->initTextStrikeThroughAnim(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setStrikeThroughAnimationEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->onAssociatedCheckBoxChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 3

    const-string v1, "checkbox"

    const-string v2, "setButtonDrawable(int resourceId)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "checkbox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonDrawable(Drawable d) mButtonBgHasBeenSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonBgHasBeenSet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonBgHasBeenSet:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonBgHasBeenSet:Z

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setMinHeight(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->refreshDrawableState()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected setCheckAnimationEnabledInner(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->ADVANCED_VI_EFFECTS_ENABLED:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "checkbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked(1) checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckBoxAnimationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3, v3}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setCheckedInner(ZZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 3

    const-string v0, "checkbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked(2) checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", animate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheckBoxAnimationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mIsAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setCheckedInner(ZZZ)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->setChecked(Z)V

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

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willAnimate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->mCheckBoxAnimationEnabled:Z

    return v0
.end method
