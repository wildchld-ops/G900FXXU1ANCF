.class public Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;
.super Landroid/widget/LinearLayout;
.source "AutofillDialogContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;,
        Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;,
        Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANIMATION_DURATION_MS:I = 0x3e8

.field static final INVALID_LAYOUT:I = -0x1

.field static final LAYOUT_EDITING_BILLING:I = 0x3

.field static final LAYOUT_EDITING_CC:I = 0x2

.field static final LAYOUT_EDITING_CC_BILLING:I = 0x4

.field static final LAYOUT_EDITING_EMAIL:I = 0x0

.field static final LAYOUT_EDITING_SHIPPING:I = 0x1

.field static final LAYOUT_FETCHING:I = 0x5

.field static final LAYOUT_STEADY:I = 0x6


# instance fields
.field private mAdapters:[Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

.field private mCVCHint:Ljava/lang/String;

.field private mCVCIcon:Landroid/graphics/Bitmap;

.field private mCurrentLayout:I

.field private mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

.field private final mDismissSteadyLayoutRunnable:Ljava/lang/Runnable;

.field private mEditLayouts:[Landroid/view/ViewGroup;

.field private mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinners:[Landroid/widget/Spinner;

.field private mSteadyLayout:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mDismissSteadyLayoutRunnable:Ljava/lang/Runnable;

    new-array v0, v1, [Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    new-array v0, v1, [Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mAdapters:[Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    new-array v0, v1, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method private addAppearAnimationForEditLayout(ILandroid/view/View;)V
    .locals 13

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getSectionForLayoutMode(I)I

    move-result v2

    aget-object v10, v1, v2

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v12, v1, v2

    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v11, v1, v2, v12, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private addDisappearAnimationForSteadyLayout()V
    .locals 11

    const-wide/16 v9, 0x1f4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f00

    move v2, v1

    move v3, v1

    move v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private addTranslateAnimations(I)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v1, v5

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    neg-float v5, v1

    invoke-direct {v4, v7, v7, v7, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v7, v7, v7, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getSectionForLayoutMode(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/Spinner;->getTop()I

    move-result v6

    if-gt v5, v6, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getSectionForLayoutMode(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/Spinner;->getTop()I

    move-result v6

    if-le v5, v6, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static getLayoutModeForSection(I)I
    .locals 3

    const/4 v1, -0x1

    sget-boolean v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-ne p0, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getSectionForLayoutMode(I)I

    move-result v2

    if-ne v2, p0, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static getSectionForLayoutMode(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeSpinner(II)V
    .locals 3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    invoke-virtual {v1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialog;->getListForField(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getViewIDForField(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setVisibilityForEditLayouts(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public changeLayoutTo(I)V
    .locals 6

    const v5, 0x7f0a0085

    const/16 v4, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-boolean v1, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-ne p1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mDismissSteadyLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->setVisibilityForEditLayouts(Z)V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->addTranslateAnimations(I)V

    invoke-direct {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->addDisappearAnimationForSteadyLayout()V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getSectionForLayoutMode(I)I

    move-result v2

    aget-object v0, v1, v2

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->addAppearAnimationForEditLayout(ILandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mDismissSteadyLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->postDelayed(Ljava/lang/Runnable;J)Z

    iput p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    goto :goto_0
.end method

.method public createAdapters()V
    .locals 8

    const/16 v7, 0x24

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->containsCreditCardInfo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCVCHint:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getCVCDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogCCMenuAdapter;-><init>(ILandroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->setOnItemEditButtonClickedListener(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mAdapters:[Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    aput-object v0, v2, v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    invoke-direct {p0, v2, v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->initializeSpinner(II)V

    const/4 v2, 0x1

    invoke-direct {p0, v2, v7}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->initializeSpinner(II)V

    const/16 v2, 0x35

    invoke-direct {p0, v6, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->initializeSpinner(II)V

    const/16 v2, 0x37

    invoke-direct {p0, v6, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->initializeSpinner(II)V

    return-void
.end method

.method public getCVCDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCVCIcon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCVCIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const v4, 0x7f0900df

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0900de

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v5, v5, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getCurrentSection()I
    .locals 1

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->getSectionForLayoutMode(I)I

    move-result v0

    return v0
.end method

.method public initializeLabelsForEachSection([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getLabelIDForSection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isInEditingMode()Z
    .locals 2

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCurrentLayout:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x5

    const v2, 0x7f0a00a3

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSteadyLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mEditLayouts:[Landroid/view/ViewGroup;

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getLayoutIDForSection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getSpinnerIDForSection(I)I

    move-result v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->changeLayoutTo(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutofillDialog(Lorg/chromium/chrome/browser/autofill/AutofillDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mDialog:Lorg/chromium/chrome/browser/autofill/AutofillDialog;

    return-void
.end method

.method public setCVCInfo(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCVCHint:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mCVCIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnItemEditButtonClickedListener(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;)V
    .locals 2

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mOnItemEditButtonClickedListener:Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mAdapters:[Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mAdapters:[Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->setOnItemEditButtonClickedListener(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$OnItemEditButtonClickedListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 2

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibilityForSection(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    invoke-static {p1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogUtils;->getLabelIDForSection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updateLegalDocumentsText(Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f0a00b3

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMenuItemsForSection(ILjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/chrome/browser/autofill/AutofillDialogMenuItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v1, v2, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mAdapters:[Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;

    aget-object v0, v2, p1

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->clear()V

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$AutofillDialogMenuAdapter;->addAll(Ljava/util/Collection;)V

    new-instance v2, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;

    invoke-direct {v2, p0, v1, p3}, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView$2;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;Landroid/widget/Spinner;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMenuSelectionForSection(II)V
    .locals 2

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillDialogContentView;->mSpinners:[Landroid/widget/Spinner;

    aget-object v0, v1, p1

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
