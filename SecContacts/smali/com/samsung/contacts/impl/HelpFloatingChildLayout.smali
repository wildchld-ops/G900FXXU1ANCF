.class public Lcom/samsung/contacts/impl/HelpFloatingChildLayout;
.super Lcom/android/contacts/quickcontact/FloatingChildLayout;
.source "HelpFloatingChildLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Lcom/samsung/contacts/impl/HelpImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;Lcom/samsung/contacts/impl/HelpImpl;)Lcom/samsung/contacts/impl/HelpImpl;
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mForegroundPhase:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->showTutorial()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showTutorial()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    new-instance v1, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$2;-><init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
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

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout;->getContext()Landroid/content/Context;

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

    new-instance v3, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$1;-><init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1
    const v0, 0x10c0005

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected setClickListeners(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$3;-><init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/HelpFloatingChildLayout$4;-><init>(Lcom/samsung/contacts/impl/HelpFloatingChildLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
