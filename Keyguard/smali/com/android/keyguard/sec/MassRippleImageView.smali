.class public Lcom/android/keyguard/sec/MassRippleImageView;
.super Landroid/widget/ImageView;
.source "MassRippleImageView.java"


# instance fields
.field INTERVAL_STROKE:F

.field IntrinsicHeight:I

.field IntrinsicWidth:I

.field mPath:Landroid/graphics/Path;

.field originalStroke:F

.field oval:Landroid/graphics/RectF;

.field rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

.field stroke:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0xc8

    const v0, 0x41d4cccd

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->setVisibility(I)V

    const-string v0, "MassRippleImageView"

    const-string v1, "MassRippleImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FIIF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/MassRippleImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "MassRippleImageView"

    const-string v1, "MassRippleImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    invoke-virtual {p0, p2}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    int-to-float v0, p4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v0, p3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    div-float/2addr v0, p5

    const/high16 v1, 0x41a0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassRippleImageView;->getAnimation()Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 8

    const/high16 v3, 0x3f80

    const/4 v7, 0x0

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iput v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    :cond_0
    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iput-object v7, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/PathShape;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    int-to-float v4, v4

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/MassRippleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method public translatedFromDPToPixel(F)F
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassRippleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v3

    const/high16 v3, 0x4320

    div-float v3, v0, v3

    mul-float v2, p1, v3

    const-string v3, "MassRippleImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to Pixel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
