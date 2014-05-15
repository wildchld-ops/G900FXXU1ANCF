.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final NO_SELECTED_DOT_INDEX:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetArrayWithDots:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mAlphabetWithDotsSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mContext:Landroid/content/Context;

.field private mDepth:I

.field private mDotRepresentations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleTextColorPressed:I

.field private mHeight:I

.field private mIndexScrollViewTheme:I

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mMinSeparatorHeight:F

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mScreenHeight:I

.field private mScrollTop:I

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mSeparatorLeftPos:I

.field private mSeparatorWidth:I

.field private mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mWidth:I

.field private mWidthShift:I

.field private m_bAlphabetArrayWithDotsUsed:Z

.field private m_bIsAlphabetInit:Z

.field private m_bSubIndexScrollExists:Z

.field private mbSetDimensionns:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;IIII)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iput p8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput p11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput p12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p5, v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->initAlphabetArrayWithDotsIfRequired()V

    return-void
.end method

.method private adjustSeparatorHeightIfRequired()V
    .locals 3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    :cond_0
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v1, v2, v3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v1, v2

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v1, v2, v3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0
.end method

.method private calculateShift(III)I
    .locals 5

    const/4 v0, 0x0

    move v2, p2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, p3

    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    if-le v1, v2, :cond_1

    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x3f00

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v1, v5, v0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v13, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v4, v12

    sub-float v2, v5, v6

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v6, v6

    int-to-double v8, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    float-to-double v8, v8

    add-double/2addr v6, v8

    double-to-float v6, v6

    add-float v3, v5, v6

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ne v0, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSelectedIndexRect(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSeparators(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x1

    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ge v6, v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-eq v6, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v6, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 14

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v6, v6, v7

    :goto_0
    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v4, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-double v6, v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v7, 0x4000

    mul-float v1, v6, v7

    :goto_1
    int-to-float v6, p1

    int-to-float v7, v5

    sub-float v3, v6, v7

    int-to-float v6, v4

    mul-float/2addr v6, v3

    div-float v0, v6, v1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    if-lt v2, v4, :cond_3

    add-int/lit8 v2, v4, -0x1

    :cond_1
    :goto_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    goto :goto_1

    :cond_3
    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private init()V
    .locals 4

    const v3, 0x206000d

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    const v1, 0x2060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    const v1, 0x206000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    const v1, 0x2060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void
.end method

.method private initAlphabetArrayWithDotsIfRequired()V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v4, v0

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ge v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    :cond_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    int-to-double v0, v14

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v11, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v11, v20, 0x2

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int/lit8 v11, v20, 0x3

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    div-int v11, v20, v21

    :cond_5
    move v15, v11

    add-int v20, v14, v11

    div-int v20, v20, v11

    add-int/lit8 v12, v20, 0x1

    :goto_2
    add-int/lit8 v20, v12, -0x1

    mul-int v20, v20, v11

    add-int v21, v14, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v20, v0

    add-int/lit8 v10, v20, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x0

    const/4 v3, 0x0

    add-int v20, v14, v11

    rem-int v13, v20, v12

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_c

    add-int/lit8 v20, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    div-int v6, v20, v11

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    div-int v6, v20, v11

    add-int/lit8 v16, v6, -0x1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_d

    add-int/lit8 v20, v11, -0x1

    mul-int v20, v20, v6

    add-int/lit8 v17, v20, -0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v10, v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->calculateShift(III)I

    move-result v9

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v3, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    move-object/from16 v20, v0

    aput v3, v20, v8

    if-eqz v5, :cond_9

    add-int/lit8 v20, v8, 0x1

    rem-int v20, v20, v6

    if-gtz v20, :cond_b

    :cond_9
    if-nez v5, :cond_e

    if-lez v9, :cond_a

    move/from16 v0, v16

    if-le v8, v0, :cond_b

    :cond_a
    add-int/lit8 v20, v8, 0x1

    sub-int v20, v20, v9

    rem-int v20, v20, v6

    if-gtz v20, :cond_b

    if-eqz v15, :cond_b

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_e

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_e

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v3

    aput-object v21, v20, v8

    add-int/lit8 v3, v3, 0x1

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v11, 0x1

    div-int v6, v20, v21

    goto/16 :goto_3

    :cond_d
    mul-int v20, v6, v11

    add-int/lit8 v17, v20, -0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "."

    aput-object v21, v20, v8

    move/from16 v18, v3

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_f

    add-int/2addr v3, v12

    :goto_7
    sub-int v20, v3, v18

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v7, v18

    :goto_8
    if-ge v7, v3, :cond_10

    sub-int v20, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    aput-object v21, v19, v20

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    sub-int v21, v21, v8

    sub-int v3, v20, v21

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    :cond_11
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto/16 :goto_0
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v1, v1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v1, v1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInSelectedIndexVerticalRange(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isSelectedIndexDot(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private perfectDotsSpreadingExists(II)Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setBgRectParams()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v1, v2, v3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v1, v2

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v1, v2, v3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 14

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    array-length v13, p1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v1, v13

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v12, v5, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawSelectedIndexRect(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawSeparators(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDepth()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    const-string v3, ""

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v4, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_5

    :cond_4
    const-string v3, ""

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt p1, v4, :cond_8

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_7

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_8
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v4, :cond_d

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-ge v4, v5, :cond_a

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_9

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    :cond_9
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_a

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_0

    :cond_a
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_c

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    const-string v0, ""

    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_e
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v4

    if-nez v4, :cond_f

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v0, ""

    goto :goto_1

    :cond_f
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    return v0
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    return v0
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 3

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v1, :cond_0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasSubIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    goto :goto_0
.end method

.method public setDefaultIndexScrollWidth()V
    .locals 3

    const v2, 0x206000d

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void
.end method

.method public setDimensionns(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeightIfRequired()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->initAlphabetArrayWithDotsIfRequired()V

    goto :goto_0
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    if-nez v1, :cond_4

    const v1, 0x20500c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v1, v2, :cond_3

    const v1, 0x2020212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const v1, 0x2020214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v1, 0x2020210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_1

    const v1, 0x2020208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_5
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_6
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_a

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_7
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_8
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto/16 :goto_0

    :cond_3
    const v1, 0x202020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const v1, 0x202020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v1, 0x202020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_4
    const v1, 0x20500d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    const v1, 0x20500cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v1, v2, :cond_5

    const v1, 0x2020213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const v1, 0x2020215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v1, 0x2020211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    :goto_9
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_1

    const v1, 0x2020209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_5
    const v1, 0x202020d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const v1, 0x202020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const v1, 0x202020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    goto/16 :goto_5

    :cond_9
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    goto/16 :goto_6

    :cond_a
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    goto/16 :goto_7

    :cond_b
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8
.end method

.method public setMaxDepth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    goto :goto_1
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method
