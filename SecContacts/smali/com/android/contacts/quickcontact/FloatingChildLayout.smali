.class public Lcom/android/contacts/quickcontact/FloatingChildLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingChildLayout.java"


# instance fields
.field protected final mAnimationDuration:I

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundPhase:I

.field protected mChild:Landroid/view/View;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mFixedTopPosition:I

.field protected mForegroundPhase:I

.field private mIsProfile:Z

.field private mOutsideTouchListener:Landroid/view/View$OnTouchListener;

.field private final mStatusBarHeight:I

.field protected mTargetScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsProfile:Z

    iput v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    const-string v1, "backgroundColorAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iput v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mStatusBarHeight:I

    :goto_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mStatusBarHeight:I

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mCreateExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsProfile:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static clampDimension(III)I
    .locals 2

    if-le p1, p2, :cond_0

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, p2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private createChildLayer()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    return-void
.end method

.method private getTargetInWindow()Landroid/graphics/Rect;
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private static layoutChild(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected animateScale(ZLjava/lang/Runnable;)V
    .locals 6

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    if-eqz p1, :cond_1

    const v0, 0x10c0004

    :goto_0
    if-eqz p1, :cond_2

    const/high16 v1, 0x3f00

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout$2;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1
    const v0, 0x10c0005

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public fadeInBackground()V
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->createChildLayer()V

    new-instance v0, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V

    invoke-static {p0, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public fadeOutBackground()V
    .locals 3

    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundPhase:I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "backgroundColorAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x7ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public hideContent(Ljava/lang/Runnable;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->createChildLayer()V

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentFullyVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/high16 v2, 0x3f00

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getTargetInWindow()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v2, v8, 0x2

    iget v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    invoke-static {v0, v2, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v2, v8, 0x2

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mStatusBarHeight:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v1

    div-int/lit8 v3, v8, 0x2

    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mStatusBarHeight:I

    add-int/2addr v8, v3

    invoke-static {v0, v2, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    sub-int v2, v8, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v9, v1

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v3, v8, v9

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    invoke-static {v2, v4, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getHeight()I

    move-result v8

    invoke-static {v3, v1, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "FloatingChildLayout"

    const-string v1, "don\'t setBackground(), it is managed internally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundColorAlpha(I)V
    .locals 1

    shl-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setChildTargetScreen(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->requestLayout()V

    return-void
.end method

.method protected setClickListeners(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$3;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/contacts/quickcontact/FloatingChildLayout$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout$4;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCreateExtras(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mCreateExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setIsProfile(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mIsProfile:Z

    return-void
.end method

.method public setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public showContent(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
