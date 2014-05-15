.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;
    }
.end annotation


# static fields
.field private static final CLOSE_SWEEP_ACTION_BAR_DELAY_TIME:J = 0x190L

.field private static final CONTEXT_URGENT_AUTO_CLOSE_ANIMATION_DURATION:I = 0x190

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x258

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final ITEMS_UNCLICKABLE_DURATION:I = 0x190

.field private static final SWEEP_ADJUSTMENT_MAX_VALUE:I = 0x23a

.field private static final SWEEP_FIRE_THRESHOLD_VALUE:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwSweepActionListView"

.field private static final VELOCITY_UNITS:I = 0x1f4


# instance fields
.field private final DEBUGABLE:Z

.field private final DEBUGABLE_COSINE_VALUE:Z

.field private SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

.field private actionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field private bActionUp:Z

.field private bFlickV:Z

.field private bKeyPressed:Z

.field private bKeyReleased:Z

.field private bTouchEvent:Z

.field private curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

.field private curIndex:I

.field private decorInit:Z

.field private isSweep:Z

.field private listLeft:I

.field private listTop:I

.field private mActionUpX:F

.field private mBlockTouchEvents:Z

.field private mContext:Landroid/content/Context;

.field mDecorLayout:Landroid/widget/FrameLayout;

.field private mFling:Z

.field private mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepAreaRestrictionEnabled:Z

.field private mSweepBoundaryStart:F

.field private mSweepDirection:I

.field private mSweepLeftDistance:F

.field private mSweepPrevPosX:F

.field private mSweepPrevPosY:F

.field private mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

.field private mSweepRightDistance:F

.field private mTopPositionSave:I

.field private mTouchPointX:F

.field private mTouchPointY:F

.field private mTouchSlop:I

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWithinSweepAllowedArea:Z

.field previousMoveDistanceX:F

.field previousMoveDistanceY:F

.field private sweepContainerView:Landroid/widget/RelativeLayout;

.field private tempRect:Landroid/graphics/Rect;

.field private transformation:Landroid/view/animation/Transformation;

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE_COSINE_VALUE:Z

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    const v1, 0x3e4ccccd

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDrawSelectorOnTop(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    iput v0, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSweepContainerView(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private decorViewInitialize()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x2

    new-array v1, v3, [I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLocationInWindow([I)V

    aget v2, v1, v5

    aget v0, v1, v4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    aget v3, v1, v5

    sub-int v3, v2, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    aget v3, v1, v4

    sub-int v3, v0, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    return-void
.end method

.method private getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    if-ne v3, p1, :cond_0

    move-object v3, v0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCurrentListItem(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 2

    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getDecorViewLayerType(Landroid/widget/FrameLayout;)I
    .locals 1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    return v0
.end method

.method private initSweepDistanceVariables()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x4080

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    return-void
.end method

.method private isListScrollable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinSweepAllowedArea(F)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    add-float v0, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resizeTempRect()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private setItemsUnclickableForShortDuration()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setPressedFalse()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sweepPatternIsIndeedFling(F)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    cmpg-float v4, p1, v6

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v0, v4, 0x2

    cmpl-float v4, p1, v6

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    :cond_3
    cmpg-float v4, p1, v6

    if-gez v4, :cond_5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    cmpl-float v4, p1, v6

    if-lez v4, :cond_6

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    div-float v1, v4, v5

    :goto_1
    const-string v4, "SweepFling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oppositeDirectionDistRatio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    div-float v1, v4, v5

    goto :goto_1
.end method

.method private trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-nez v0, :cond_0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    goto :goto_0
.end method


# virtual methods
.method public allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F
    .locals 3

    const/4 v1, 0x0

    move v0, p2

    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v2, :cond_0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v2, :cond_1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public closeAllActionBar(Z)Z
    .locals 6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    const-string v4, "TwSweepActionListView"

    const-string v5, "closeAllActionBar call  sweepActionViewRemove"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    :cond_2
    return v3
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setTranslate()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v3, v4

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V
    invoke-static {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, -0x1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    if-eqz v3, :cond_0

    if-eq v0, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v3

    and-int/2addr v1, v3

    :cond_0
    if-ne v0, v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_4

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->drawSelector(Landroid/graphics/Canvas;)V

    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->drawSelector(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method protected handleDataChanged()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwSweepActionListView"

    const-string v1, "[handleDataChanged] IN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->handleDataChanged()V

    return-void
.end method

.method public isActionBarOpen()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->selectionChangedForAccessibility()V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestLayout()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/16 v0, 0x82

    if-ne p2, v0, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestLayout()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_1
    return v10

    :pswitch_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v10, :cond_3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    :cond_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v10, v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    goto :goto_0

    :pswitch_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v10, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v10, v3, v3

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    float-to-double v10, v3

    div-double/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_f

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_e

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_e

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_e

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v10, v1

    double-to-int v10, v10

    const/16 v11, 0x23a

    if-ge v10, v11, :cond_e

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v10, :cond_e

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isWithinSweepAllowedArea(F)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v5, 0x1

    :goto_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v10

    and-int/2addr v5, v10

    :cond_7
    if-eqz v5, :cond_9

    const-string v10, "sweepRest"

    const-string v11, "onIntercept(), touch point is not in sweep allowed area"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v10, v6, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    :cond_a
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v10, :cond_b

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    :cond_c
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v11, 0x1

    iput v11, v10, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    :cond_e
    :goto_4
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_2

    :cond_f
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x1f4

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_10

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    :cond_10
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    const/4 v11, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v10, :cond_12

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_12
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_13
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    :goto_1
    return v12

    :pswitch_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v18

    and-int v4, v4, v18

    :cond_4
    if-eqz v4, :cond_1

    const-string v18, "TwSweepActionListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onTouchEvent() ACTION_DOWN touch event is in sweep restricted area: touchPointX="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->removePendingCallbacks()V

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float v18, v9, v9

    mul-float v19, v10, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    float-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v10, v18

    if-gez v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v9, v18

    if-lez v18, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_11

    const-wide v18, 0x408f400000000000L

    mul-double v18, v18, v6

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x23a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isWithinSweepAllowedArea(F)Z

    move-result v18

    if-nez v18, :cond_b

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v18

    and-int v11, v11, v18

    :cond_a
    if-eqz v11, :cond_c

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    const-string v18, "sweepRest"

    const-string v19, "onTouch(), touch point is not in sweep allowed area"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    const-string v18, "sweepRest"

    const-string v19, "onTouch(), curActionBar is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWithinSweepAllowedArea:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_3

    :cond_12
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_5

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressed(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mActionUpX:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static/range {v18 .. v19}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->removePendingCallbacks()V

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_18

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;->onListItemRestrictionApplied(I)Z

    move-result v18

    and-int v5, v5, v18

    :cond_17
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const-string v18, "TwSweepActionListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onTouchEvent() ACTION_UP touch event is consumed because it is in sweep restricted area: touchPointX="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_18
    const/4 v5, 0x0

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v4, 0x190

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    :cond_0
    if-eqz p1, :cond_2

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_1

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openActionBar(II)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLastVisiblePosition()I

    move-result v3

    if-le p1, v3, :cond_3

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput v1, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch p2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    goto :goto_0

    :pswitch_0
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    :pswitch_1
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parentPerformItemClick(Landroid/view/View;IJ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    #calls: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public resetDecorInit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    return-void
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    return-void
.end method

.method public setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-void
.end method

.method public setSweepAreaRestrictionStart(F)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    const-string v0, "TwSweepActionListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSweepAreaRestriction() start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepBoundaryStart:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepAreaRestrictionEnabled:Z

    :cond_0
    return-void
.end method

.method public setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    return-void
.end method

.method shouldShowSelector()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-nez v6, :cond_1

    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldShowSelector()Z

    move-result v5

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "finger_air_view"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v2, v4

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isFingerHovered()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v5

    goto :goto_0

    :cond_6
    move v5, v1

    goto :goto_0
.end method
