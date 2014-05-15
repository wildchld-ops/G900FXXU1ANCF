.class public Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
.super Landroid/widget/FrameLayout;
.source "TwIndexScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;,
        Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final NO_PREV_LANG:I = 0x0

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwIndexScrollView"

.field public static mCallDrawIndexTextAtOnDraw:Z

.field public static previousPos:I


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private final debug:Z

.field private mAnimEnd:Z

.field private mCalculatedIndexStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mCstmHandleTextColorPressed:I

.field private mCstmSeparatorColor:I

.field private mCstmTextColorDimmed:I

.field private mCurrentIndex:Ljava/lang/String;

.field private mEnableCustomTheme:Z

.field private mFirstLanguageGap:I

.field private mHandlePosition:I

.field private mHapticView:Landroid/view/View;

.field private mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

.field mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

.field private mIndexScrollViewTheme:I

.field private mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

.field private final mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

.field private mIsFavoriteContactMode:Z

.field private mLangDbEndPositions:[I

.field private mLangDbStartPositions:[I

.field private mLangScrollEndPositions:[I

.field private mLangScrollStartPositions:[I

.field private mNumberOfLanguages:I

.field private mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

.field private mPrevSetLang:I

.field private mRegisteredDataSetObserver:Z

.field private m_bNoSubIndexes:Z

.field private m_bSimpleIndexScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCallDrawIndexTextAtOnDraw:Z

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->previousPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    sget-object v1, Ltouchwiz/R$styleable;->TwIndexView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->debug:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleTextColorPressed:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScrollViewTheme:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->init(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->initLangPositionBounds()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleTextColorPressed:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private addMissingSubIndexes(III)V
    .locals 11

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getItemPlusSpaceWidth()I

    move-result v2

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    mul-int v3, v2, v0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getWidth()I

    move-result v8

    :goto_0
    if-ge v1, p3, :cond_3

    if-nez v4, :cond_3

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    array-length v9, v7

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v9, v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    if-nez v5, :cond_1

    move v9, v3

    :goto_1
    invoke-virtual {v10, v9, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange(I)V

    :cond_0
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sub-int v9, v8, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private calcEndPosition(II)I
    .locals 5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    if-ne p1, p2, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    aget v4, v4, v1

    add-int/lit8 v0, v4, -0x1

    if-ge v0, v2, :cond_1

    if-lt v0, p1, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_0
.end method

.method private getDbPositionLanguage(I)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getFirstAlphabetCharacterIndex()I
    .locals 4

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLastAlphabetCharacterIndex()I
    .locals 5

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    if-eq v0, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    goto :goto_0
.end method

.method private getListViewPosition(Ljava/lang/String;)I
    .locals 12

    const/4 v11, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    move-object v8, p1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_3

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v9, v7, v11}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_a

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_1

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v0

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_5

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_7

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v2, v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getDbPositionLanguage(I)I

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_8

    move v3, v2

    goto :goto_0

    :cond_8
    if-ne v4, v0, :cond_9

    move v3, v2

    goto/16 :goto_0

    :cond_9
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v9, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget v2, v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    move v3, v2

    goto/16 :goto_0
.end method

.method private getNumberOfMissingSubIndexes(I)I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getNumberOfSmallerOrEqualIndexes(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/4 v4, -0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    move v8, v9

    :cond_1
    :goto_1
    return v8

    :pswitch_0
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    :goto_2
    if-eq v4, v13, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange(I)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_2

    :pswitch_1
    float-to-int v10, v6

    invoke-direct {p0, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getNumberOfMissingSubIndexes(I)I

    move-result v2

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    if-ne v10, v9, :cond_3

    if-ge v2, v9, :cond_4

    :cond_3
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z

    if-nez v10, :cond_5

    :cond_4
    move v8, v9

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v10, :cond_8

    if-lez v2, :cond_6

    float-to-int v8, v6

    float-to-int v10, v7

    invoke-direct {p0, v8, v10, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->addMissingSubIndexes(III)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    :cond_6
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getSubIndexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    array-length v8, v5

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v13, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCalculatedIndexStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v8, v10

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_9

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->removeSubIndex()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    :goto_4
    if-eq v4, v13, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_4

    :cond_b
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v8, v10, v11}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getListViewPosition(Ljava/lang/String;)I

    move-result v4

    :goto_5
    if-eq v4, v13, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->notifyIndexChange(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getSelectedIndex()I

    move-result v4

    goto :goto_5

    :pswitch_2
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bNoSubIndexes:Z

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;II)V
    .locals 8

    const/4 v7, -0x1

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getWidth()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setMaxDepth(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHapticView:Landroid/view/View;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initIndexerLanguagesBounds()Z
    .locals 11

    const/4 v10, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangAlphabetArray()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    const/4 v4, -0x1

    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    move v3, v2

    if-lez v1, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    if-gt v5, v10, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v5, v3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v5, v7, :cond_3

    if-ne v1, v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v3, v5

    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    aput v2, v5, v1

    if-le v2, v4, :cond_4

    move v4, v2

    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    aput v3, v5, v1

    if-lez v1, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aget v5, v5, v7

    if-eq v3, v5, :cond_6

    :cond_5
    if-ne v1, v6, :cond_7

    if-eqz v0, :cond_7

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    sub-int v5, v3, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    if-ne v5, v7, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aput v9, v5, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    add-int/lit8 v7, v1, -0x1

    aput v9, v5, v7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo()Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ge v1, v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    aget v5, v5, v1

    if-ne v5, v9, :cond_a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    aput v9, v5, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    aput v9, v5, v1

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartPosition()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    aget v7, v7, v1

    invoke-direct {p0, v7, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->calcEndPosition(II)I

    move-result v7

    aput v7, v5, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    aget v7, v7, v1

    aput v7, v5, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    if-ltz v5, :cond_9

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    if-gt v5, v10, :cond_9

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v5, v2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v5, v7, :cond_9

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    aget v7, v5, v1

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    add-int/2addr v7, v8

    aput v7, v5, v1

    goto :goto_3

    :cond_b
    move v5, v6

    goto/16 :goto_0
.end method

.method private initLangPositionBounds()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    return-void
.end method

.method private isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 9

    const/16 v8, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    :cond_0
    :goto_0
    if-eq v1, v8, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-ne v1, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    if-eq v8, v6, :cond_0

    const/16 v6, 0xc

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v7

    if-eq v6, v7, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_0

    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0x10

    if-eq v1, v6, :cond_3

    const/16 v6, 0x11

    if-ne v1, v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    return v4
.end method

.method private notifyIndexChange(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_extra"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    sget v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->previousPos:I

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHapticView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHapticView:Landroid/view/View;

    const/16 v3, 0x5226

    invoke-virtual {v2, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    sput p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->previousPos:I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    invoke-interface {v2, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;->onIndexSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startAnimation(Ljava/lang/Object;IIF)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    :try_start_0
    const-string v4, "y"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v8

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string v4, "y"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getItemHeight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-ge p2, p3, :cond_0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    throw v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setDimensionns(II)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCurrentIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setIndexRectText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->isAlphabetInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->invalidate()V

    goto :goto_1
.end method

.method public enableCustomTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    return-void
.end method

.method public getFirstHandleWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->getItemWidth()I

    move-result v0

    return v0
.end method

.method public getHandlePosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0, p2, p4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setLangPosition(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;II)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCustomThemeSet(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;)V
    .locals 1

    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->separatorColor:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmSeparatorColor:I

    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->textColorDimmed:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmTextColorDimmed:I

    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mCstmHandleTextColorPressed:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mEnableCustomTheme:Z

    return-void
.end method

.method public setDefaultIndexWidth()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setDefaultIndexScrollWidth()V

    goto :goto_0
.end method

.method public setHandlePosition(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mHandlePosition:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setPosition(I)V

    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    return-void
.end method

.method public setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwIndexView.setIndexer(indexer) : indexer=null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexerObserver:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexerObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mRegisteredDataSetObserver:Z

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLangStartIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->resetSelectedIndex()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbStartPositions:[I

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangDbEndPositions:[I

    return-void
.end method

.method public setLangPosition(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;II)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    if-nez v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p3, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mFirstLanguageGap:I

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->initIndexerLanguagesBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollStartPositions:[I

    aget v1, v1, v0

    if-lt p2, v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mLangScrollEndPositions:[I

    aget v1, v1, v0

    if-gt p2, v1, :cond_7

    :cond_5
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mNumberOfLanguages:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    :cond_6
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->resetSelectedIndex()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getAlphabetArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getFirstAlphabetCharacterIndex()I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->getLastAlphabetCharacterIndex()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    :try_start_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    const/4 v2, 0x0

    invoke-direct {p0, p0, v1, v0, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mPrevSetLang:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mOnIndexSelectedListener:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;

    return-void
.end method

.method public setSimpleIndexHandleChar([Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "TwIndexView.setIndexHandleChar(handleChar) "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;

    if-eqz v2, :cond_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexRectangleTextView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->m_bSimpleIndexScroll:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexRectangleTextView;->setColorAll(Z)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v2, p1, v4, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexWidth(I)V

    return-void
.end method

.method public setSimpleIndexHandleCharForContact([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    return-void
.end method

.method public setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x206000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSimpleIndexWidth(I)V

    return-void
.end method

.method public setSimpleIndexWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setSimpleIndexScrollWidth(I)V

    goto :goto_0
.end method

.method public setSubscrollLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIndexScroll:Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$IndexScroll;->setMaxDepth(I)V

    :cond_0
    return-void
.end method

.method public setmIsFavoriteContactMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mIsFavoriteContactMode:Z

    return-void
.end method
