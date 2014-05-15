.class public Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;
.super Ljava/lang/Object;
.source "DominantColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ShiftResponse;,
        Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;
    }
.end annotation


# instance fields
.field public final DBL_MAX:D

.field public final DEFAULT_MIN_DIFF:D

.field public final DEFAULT_NUM_COLORS:I

.field public final MAX_LUMINANCE:I

.field public final MIN_LUMINANCE:I

.field public final SIDE_SIZE:I

.field public final _false:I

.field public final _true:I

.field public final alpha_mask:I

.field public final blue_mask:I

.field public final blue_shift:I

.field public final green_mask:I

.field public final green_shift:I

.field public final mean_shift_threshold:I

.field queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ShiftResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final red_mask:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->DEFAULT_NUM_COLORS:I

    const-wide/high16 v0, 0x3fe0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->DEFAULT_MIN_DIFF:D

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->SIDE_SIZE:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->MIN_LUMINANCE:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->MAX_LUMINANCE:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->_true:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->_false:I

    const/high16 v0, -0x100

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->alpha_mask:I

    const/high16 v0, 0xff

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->blue_mask:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->blue_shift:I

    const v0, 0xff00

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->green_mask:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->green_shift:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->red_mask:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->mean_shift_threshold:I

    const-wide v0, 0x7fefffffffffffffL

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->DBL_MAX:D

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->queue:Ljava/util/LinkedList;

    return-void
.end method

.method private calculateCenter(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v4, v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v4, v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v1, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    div-int v7, v0, v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    goto :goto_1
.end method

.method private calculateDistance(II)D
    .locals 10

    const-wide v8, 0x3feccccccccccccdL

    const-wide/high16 v6, 0x4000

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    const-wide v2, 0x3ff3333333333333L

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getPoints(Landroid/graphics/Bitmap;)[I
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v3, v5, [I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    mul-int v5, v1, v4

    add-int/2addr v5, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getRandomMiddles([II)[I
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-array v5, p2, [I

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, p2, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v6, p1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    aput v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    return-object v5
.end method


# virtual methods
.method _kmeans(Landroid/graphics/Bitmap;I)[I
    .locals 35

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v29, v8, v9

    move/from16 v0, v29

    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v0, p2

    new-array v0, v0, [Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;

    move-object/from16 v30, v0

    move/from16 v0, p2

    new-array v0, v0, [D

    move-object/from16 v24, v0

    const/16 v16, 0x0

    move/from16 v0, p2

    new-array v12, v0, [I

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v33, v0

    mul-double v6, v6, v33

    double-to-int v0, v6

    move/from16 v31, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v33, v0

    mul-double v6, v6, v33

    double-to-int v0, v6

    move/from16 v32, v0

    mul-int v2, v32, v8

    add-int v2, v2, v31

    aget v28, v3, v2

    const/4 v13, 0x0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    add-int/lit8 v18, v19, 0x1

    aget v2, v12, v19

    move/from16 v0, v28

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v13, v2

    move/from16 v19, v18

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    if-nez v13, :cond_d

    add-int/lit8 v16, v17, 0x1

    aput v28, v12, v17

    :goto_3
    move/from16 v17, v16

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    :goto_4
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v11, v0, :cond_3

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;)V

    aput-object v2, v30, v11

    const-wide/16 v6, 0x0

    aput-wide v6, v24, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    const/16 v32, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v32

    if-ge v0, v2, :cond_7

    const/16 v31, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, v31

    if-ge v0, v2, :cond_6

    const-wide v25, 0x7fefffffffffffffL

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    move/from16 v0, p2

    if-ge v11, v0, :cond_5

    mul-int v2, v32, v8

    add-int v2, v2, v31

    aget v2, v3, v2

    aget v4, v12, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->distanceSq(II)D

    move-result-wide v14

    cmpg-double v2, v14, v25

    if-gez v2, :cond_4

    move-wide/from16 v25, v14

    move v10, v11

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_5
    aget-object v2, v30, v10

    iget-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->r:D

    mul-int v4, v32, v8

    add-int v4, v4, v31

    aget v4, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->red(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v33, v0

    add-double v6, v6, v33

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->r:D

    aget-object v2, v30, v10

    iget-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->g:D

    mul-int v4, v32, v8

    add-int v4, v4, v31

    aget v4, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->green(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v33, v0

    add-double v6, v6, v33

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->g:D

    aget-object v2, v30, v10

    iget-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->b:D

    mul-int v4, v32, v8

    add-int v4, v4, v31

    aget v4, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->blue(I)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v33, v0

    add-double v6, v6, v33

    iput-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->b:D

    aget-wide v6, v24, v10

    const-wide/high16 v33, 0x3ff0

    add-double v6, v6, v33

    aput-wide v6, v24, v10

    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_6

    :cond_7
    const-wide/16 v22, 0x0

    const/4 v11, 0x0

    :goto_9
    move/from16 v0, p2

    if-ge v11, v0, :cond_a

    aget-wide v6, v24, v11

    const-wide/16 v33, 0x0

    cmpl-double v2, v6, v33

    if-nez v2, :cond_9

    const/16 v27, -0x1

    :goto_a
    aget v2, v12, v11

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->distanceSq(II)D

    move-result-wide v14

    cmpl-double v2, v14, v22

    if-lez v2, :cond_8

    move-wide/from16 v22, v14

    :cond_8
    aput v27, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_9
    aget-object v2, v30, v11

    iget-wide v6, v2, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->r:D

    aget-wide v33, v24, v11

    div-double v6, v6, v33

    double-to-int v2, v6

    aget-object v4, v30, v11

    iget-wide v6, v4, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->g:D

    aget-wide v33, v24, v11

    div-double v6, v6, v33

    double-to-int v4, v6

    aget-object v6, v30, v11

    iget-wide v6, v6, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$ColorSum;->b:D

    aget-wide v33, v24, v11

    div-double v6, v6, v33

    double-to-int v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v6}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->color(III)I

    move-result v27

    goto :goto_a

    :cond_a
    add-int/lit8 v21, v20, 0x1

    const/16 v2, 0x64

    move/from16 v0, v20

    if-ge v0, v2, :cond_b

    const-wide/high16 v6, 0x3ff0

    cmpl-double v2, v22, v6

    if-gtz v2, :cond_c

    :cond_b
    return-object v12

    :cond_c
    move/from16 v20, v21

    goto/16 :goto_4

    :cond_d
    move/from16 v16, v17

    goto/16 :goto_3
.end method

.method blue(I)I
    .locals 1

    const/high16 v0, 0xff

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method color(III)I
    .locals 3

    const/high16 v0, -0x100

    shl-int/lit8 v1, p3, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method distanceSq(II)D
    .locals 6

    const-wide/high16 v4, 0x4000

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->red(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3e99999a

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->green(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f170a3d

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->blue(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3de147ae

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getDominantColor(Landroid/graphics/Bitmap;Z)I
    .locals 14

    if-nez p1, :cond_0

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    :goto_0
    return v10

    :cond_0
    const/16 v10, 0x24

    new-array v3, v10, [I

    const/4 v5, -0x1

    const/16 v10, 0x24

    new-array v7, v10, [F

    const/16 v10, 0x24

    new-array v8, v10, [F

    const/16 v10, 0x24

    new-array v9, v10, [F

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v6, v10, :cond_6

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v2, v10, :cond_5

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0x80

    if-ge v10, v11, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x3

    new-array v4, v10, [F

    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz p2, :cond_3

    const/4 v10, 0x1

    aget v10, v4, v10

    const v11, 0x3eb33333

    cmpg-float v10, v10, v11

    if-lez v10, :cond_1

    const/4 v10, 0x2

    aget v10, v4, v10

    const v11, 0x3eb33333

    cmpg-float v10, v10, v11

    if-lez v10, :cond_1

    :cond_3
    const/4 v10, 0x0

    aget v10, v4, v10

    const/high16 v11, 0x4120

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    aget v10, v7, v0

    const/4 v11, 0x0

    aget v11, v4, v11

    add-float/2addr v10, v11

    aput v10, v7, v0

    aget v10, v8, v0

    const/4 v11, 0x1

    aget v11, v4, v11

    add-float/2addr v10, v11

    aput v10, v8, v0

    aget v10, v9, v0

    const/4 v11, 0x2

    aget v11, v4, v11

    add-float/2addr v10, v11

    aput v10, v9, v0

    aget v10, v3, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v3, v0

    if-ltz v5, :cond_4

    aget v10, v3, v0

    aget v11, v3, v5

    if-le v10, v11, :cond_1

    :cond_4
    move v5, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-gez v5, :cond_7

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x3

    new-array v4, v10, [F

    const/4 v10, 0x0

    aget v11, v7, v5

    aget v12, v3, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    aput v11, v4, v10

    const/4 v10, 0x1

    aget v11, v8, v5

    aget v12, v3, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    aput v11, v4, v10

    const/4 v10, 0x2

    aget v11, v9, v5

    aget v12, v3, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    aput v11, v4, v10

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    goto/16 :goto_0
.end method

.method public getFinalcolor([I)I
    .locals 16

    const/4 v1, 0x0

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v9

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v2

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const-wide v10, 0x3fcb367a0f9096bcL

    int-to-double v12, v9

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe6e2eb1c432ca5L

    int-to-double v14, v2

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide v12, 0x3fb27bb2fec56d5dL

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double v3, v10, v12

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v9

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v2

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const-wide v10, 0x3fcb367a0f9096bcL

    int-to-double v12, v9

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe6e2eb1c432ca5L

    int-to-double v14, v2

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide v12, 0x3fb27bb2fec56d5dL

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double v5, v10, v12

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v9

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v2

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const-wide v10, 0x3fcb367a0f9096bcL

    int-to-double v12, v9

    mul-double/2addr v10, v12

    const-wide v12, 0x3fe6e2eb1c432ca5L

    int-to-double v14, v2

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide v12, 0x3fb27bb2fec56d5dL

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double v7, v10, v12

    const-wide/high16 v10, 0x4028

    cmpg-double v10, v3, v10

    if-ltz v10, :cond_0

    const-wide/high16 v10, 0x406e

    cmpl-double v10, v3, v10

    if-lez v10, :cond_3

    :cond_0
    const/4 v10, 0x1

    aget v1, p1, v10

    const-wide/high16 v10, 0x4028

    cmpg-double v10, v5, v10

    if-ltz v10, :cond_1

    const-wide/high16 v10, 0x406e

    cmpl-double v10, v5, v10

    if-lez v10, :cond_2

    :cond_1
    const/4 v10, 0x2

    aget v1, p1, v10

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v10, 0x0

    aget v1, p1, v10

    goto :goto_0
.end method

.method public getIntDominantColorUsingKMeans(Landroid/graphics/Bitmap;I)[I
    .locals 2

    const-wide/high16 v0, 0x3fe0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getIntDominantColorUsingKMeans(Landroid/graphics/Bitmap;ID)[I

    move-result-object v0

    return-object v0
.end method

.method public getIntDominantColorUsingKMeans(Landroid/graphics/Bitmap;ID)[I
    .locals 15

    const/16 v3, 0x32

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->resizeToFitInSquare(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v14, v6, v10

    new-array v4, v14, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->kMeans([IID)[Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    move-result-object v12

    move/from16 v0, p2

    new-array v11, v0, [I

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v13, v0, :cond_0

    aget-object v3, v12, v13

    iget v3, v3, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;->color:I

    aput v3, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-object v11
.end method

.method public getIntDominantColors(Landroid/graphics/Bitmap;I)[I
    .locals 2

    const-wide/high16 v0, 0x3fe0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getIntDominantColors(Landroid/graphics/Bitmap;ID)[I

    move-result-object v0

    return-object v0
.end method

.method public getIntDominantColors(Landroid/graphics/Bitmap;ID)[I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->_kmeans(Landroid/graphics/Bitmap;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLuminance(I)D
    .locals 6

    const-wide v0, 0x3fcb367a0f9096bcL

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3fe6e2eb1c432ca5L

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fb27bb2fec56d5dL

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method green(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method kMeans([IID)[Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;
    .locals 23

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->getRandomMiddles([II)[I

    move-result-object v12

    move/from16 v0, p2

    new-array v4, v0, [Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    :cond_0
    move/from16 v0, p2

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v9, v0, :cond_1

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    aput-object v19, v17, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    array-length v11, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_4

    aget v18, v3, v10

    const-wide v13, 0x7fefffffffffffffL

    const/4 v15, 0x0

    const/4 v9, 0x0

    :goto_2
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    aget v19, v12, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->calculateDistance(II)D

    move-result-wide v7

    cmpg-double v19, v7, v13

    if-gez v19, :cond_2

    move-wide v13, v7

    move v15, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    aget-object v19, v17, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    :goto_3
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    aget-object v19, v17, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->calculateCenter(Ljava/util/List;)I

    move-result v16

    aget v19, v12, v9

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->calculateDistance(II)D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput v16, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    cmpg-double v19, v5, p3

    if-gez v19, :cond_0

    const/4 v9, 0x0

    :goto_4
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    new-instance v19, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;

    aget v20, v12, v9

    aget-object v21, v17, v9

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-direct/range {v19 .. v21}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColorObj;-><init>(IF)V

    aput-object v19, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    new-instance v19, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;)V

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v4
.end method

.method red(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method public resizeToFitInSquare(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, p2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method rev_color(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->blue(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->green(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->red(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/common/DominantColors;->color(III)I

    move-result v0

    return v0
.end method

.method rgb_clamp(I)I
    .locals 1

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method
