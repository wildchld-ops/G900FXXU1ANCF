.class Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
.super Ljava/lang/Object;
.source "TwPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProperyHolder"
.end annotation


# instance fields
.field private mAlpha:[F

.field private mBottom:[F

.field private mRight:[F

.field private mScaleX:[F

.field private mScaleY:[F

.field private mTypes:[I

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    return-object v0
.end method

.method private addTypeToArray(I)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    if-ne v4, p1, :cond_0

    const/4 v6, 0x0

    :goto_1
    return v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    aget v6, v6, v1

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v6, v6

    aput p1, v5, v6

    iput-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    const/4 v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addProperty(IFF)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aput p2, v2, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public updateProperty(Landroid/view/View;F)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v6, "GridViewEx"

    const-string v7, "updateProperty : Target view is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    packed-switch v4, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_2

    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :pswitch_5
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    float-to-int v6, v1

    invoke-virtual {p1, v6}, Landroid/view/View;->setRight(I)V

    goto :goto_2

    :pswitch_7
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    float-to-int v6, v1

    invoke-virtual {p1, v6}, Landroid/view/View;->setBottom(I)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
