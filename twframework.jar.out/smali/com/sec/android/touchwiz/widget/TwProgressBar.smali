.class public Lcom/sec/android/touchwiz/widget/TwProgressBar;
.super Landroid/view/View;
.source "TwProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwProgressBar$1;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final CORNERS:[F = null

.field private static final HIGH_ALPHA:I = 0x32000000

.field protected static final HORIZONTAL:I = 0x0

.field private static final LOW_ALPHA:I = -0x1000000

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MED_ALPHA:I = -0x6a000000

.field protected static final TOUCHWIZ_DARK_THEME:I = 0x0

.field protected static final TOUCHWIZ_LIGHT_THEME:I = 0x1

.field private static final UNDEFINED_COLOR:I = 0x0

.field protected static final VERTICAL:I = 0x1


# instance fields
.field private final DEFAULT_MAX:I

.field private final DEFAULT_MAX_HEIGHT:I

.field private final DEFAULT_MAX_WIDTH:I

.field private final DEFAULT_MIN_HEIGHT:I

.field private final DEFAULT_MIN_WIDTH:I

.field private final DEFAULT_PROGRESS:I

.field private final INVALID_PROGRESS_HEIGHT:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBackground:Z

.field private mDrawFirstProgress:Z

.field private mDrawSecondaryProgress:Z

.field private mIndicatorThickness:I

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mProgress:I

.field private mProgressBarMode:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

.field private mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSecondaryProgress:I

.field protected mTheme:I

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2010005

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x30

    const/16 v5, 0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_HEIGHT:I

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_HEIGHT:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_WIDTH:I

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_WIDTH:I

    const/16 v5, 0x64

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_PROGRESS:I

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawBackground:Z

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawFirstProgress:Z

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawSecondaryProgress:Z

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->INVALID_PROGRESS_HEIGHT:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mTheme:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    sget-object v5, Ltouchwiz/R$styleable;->TwProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0xb

    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    const/4 v5, 0x1

    const/16 v6, 0x30

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2060020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2060020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    const/4 v5, 0x4

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressColor(I)V

    :cond_1
    :goto_1
    const/16 v5, 0xd

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mTheme:I

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgressColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2020031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2020030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2020035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwProgressBar;Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;)Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_2
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    invoke-virtual {p0, v4, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x1

    const v5, 0xffffff

    and-int/2addr p1, v5

    const/high16 v5, 0x3200

    or-int v4, p1, v5

    const/high16 v5, -0x6a00

    or-int v3, p1, v5

    const/high16 v5, -0x100

    or-int v2, p1, v5

    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    aput v3, v0, v6

    const/4 v5, 0x2

    aput v2, v0, v5

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget-object v5, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v1
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_2
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorThickness()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressBarMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getProgressWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getWidth()I

    move-result v0

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressBounds()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawSecondaryProgress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawFirstProgress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    :cond_0
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_1

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const v0, -0x8b8b8c

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackgroundDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawBackground:Z

    return-void
.end method

.method public setBackgroundDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIndicatorThickness(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->postInvalidate()V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    :cond_1
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(IZ)V

    return-void
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    const v0, 0x102000d

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->refreshProgress(IIZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBounds()V
    .locals 25

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v8, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v14, v19, v20

    :goto_0
    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v15, v19, v20

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getHeight()I

    move-result v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgressWidth()I

    move-result v19

    sub-int v19, v19, v10

    sub-int v18, v19, v11

    sub-int v19, v5, v12

    sub-int v4, v19, v9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    move/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v16, v0

    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v18

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    div-int/lit8 v13, v19, 0x2

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    sub-int v18, v18, v13

    :goto_3
    const/16 v19, 0x10

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v6, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    div-int/lit8 v21, v21, 0x2

    add-int v22, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v23, v0

    sub-int v23, v4, v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v23, v0

    sub-int v23, v4, v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v20, v0

    sub-int v20, v4, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v22, v0

    sub-int v22, v4, v22

    div-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_4
    return-void

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_2
    move/from16 v16, v4

    goto/16 :goto_2

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v22, v18, v13

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v13

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v17, v0

    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v18

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1, v4, v6, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/high16 v21, 0x3f80

    sub-float v21, v21, v14

    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/high16 v21, 0x3f80

    sub-float v21, v21, v15

    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_4

    :cond_6
    move/from16 v17, v18

    goto/16 :goto_5
.end method

.method public setProgressColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setProgressDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawFirstProgress:Z

    return-void
.end method

.method public setProgressDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V

    :cond_2
    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSecondaryProgressDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawSecondaryProgress:Z

    return-void
.end method

.method public setSecondaryProgressDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
