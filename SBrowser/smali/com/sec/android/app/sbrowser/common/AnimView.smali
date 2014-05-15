.class public Lcom/sec/android/app/sbrowser/common/AnimView;
.super Landroid/view/View;
.source "AnimView.java"


# static fields
.field private static final s_triangles:[S = null

.field private static final s_vertices:[[F = null

.field private static final s_vertices_length:I = 0x4


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mShadowEnabled:Z

.field private final mTexs:[F

.field private final mVerts:[F

.field private mViewBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sbrowser/common/AnimView;->s_vertices:[[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/app/sbrowser/common/AnimView;->s_triangles:[S

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x2t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x400

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mVerts:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mTexs:[F

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x400

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mVerts:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mTexs:[F

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/16 v1, 0x400

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mVerts:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mTexs:[F

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method private static setXY([FIFF)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x0

    aput p2, p0, v0

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    return-void
.end method


# virtual methods
.method protected getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mContext:Landroid/app/Activity;

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    return-object v3
.end method

.method public getShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mShadowEnabled:Z

    return v0
.end method

.method protected onDrawReflectionInShadow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 23

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    const/4 v15, 0x3

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x80

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    sget-object v21, Lcom/sec/android/app/sbrowser/common/AnimView;->s_vertices:[[F

    const/16 v19, 0x4

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/AnimView;->mTexs:[F

    aget-object v3, v21, v18

    const/4 v4, 0x0

    aget v3, v3, v4

    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    aget-object v5, v21, v18

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move/from16 v0, v18

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/AnimView;->setXY([FIFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/common/AnimView;->mVerts:[F

    aget-object v3, v21, v18

    const/4 v4, 0x0

    aget v3, v3, v4

    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-int/lit8 v4, v17, 0x3

    int-to-float v4, v4

    aget-object v5, v21, v18

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move/from16 v0, v18

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/AnimView;->setXY([FIFF)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_0
    new-instance v20, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/common/AnimView;->mVerts:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/common/AnimView;->mTexs:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/sec/android/app/sbrowser/common/AnimView;->s_triangles:[S

    const/4 v12, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/AnimView;->s_triangles:[S

    array-length v13, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v14}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public recycleCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/AnimView;->mShadowEnabled:Z

    return-void
.end method
