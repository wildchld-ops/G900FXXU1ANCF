.class Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final BOUNDING_BOX_EDGE:I = 0x64

.field private static final CENTER_RADIUS:I = 0x20

.field private static final DIALOG_HEIGHT:I = 0xc8

.field private static final PI:F = 3.1415925f


# instance fields
.field private center_x:I

.field private center_y:I

.field private final mCenterPaint:Landroid/graphics/Paint;

.field private final mColors:[I

.field private mHighlightCenter:Z

.field private final mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_x:I

    iput v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_y:I

    iput-object p2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mColors:[I

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private static interpolate(IIF)I
    .locals 1

    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static interpolateColor([IFF)I
    .locals 15

    move/from16 v0, p2

    float-to-double v11, v0

    move/from16 v0, p1

    float-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    double-to-float v2, v11

    const v11, 0x40c90fda

    div-float v10, v2, v11

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_0

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    :cond_0
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_1

    const/4 v11, 0x0

    aget v11, p0, v11

    :goto_0
    return v11

    :cond_1
    const/high16 v11, 0x3f80

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_2

    array-length v11, p0

    add-int/lit8 v11, v11, -0x1

    aget v11, p0, v11

    goto :goto_0

    :cond_2
    array-length v11, p0

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float v8, v10, v11

    float-to-int v7, v8

    int-to-float v11, v7

    sub-float/2addr v8, v11

    aget v4, p0, v7

    add-int/lit8 v11, v7, 0x1

    aget v5, p0, v11

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    invoke-static {v11, v12, v8}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->interpolate(IIF)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v11, v12, v8}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->interpolate(IIF)I

    move-result v9

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v11, v12, v8}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->interpolate(IIF)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v11, v12, v8}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->interpolate(IIF)I

    move-result v3

    invoke-static {v1, v9, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v3, -0x1

    const/high16 v6, 0x4200

    const/4 v5, 0x0

    iget v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_x:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_x:I

    :cond_0
    iget v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_y:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_y:I

    :cond_1
    const/high16 v2, 0x42c8

    iget-object v3, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    iget v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v2, Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v1

    invoke-direct {v2, v3, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v3, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_x:I

    int-to-float v6, v6

    sub-float v1, v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->center_y:I

    int-to-float v6, v6

    sub-float v2, v5, v6

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    const/high16 v6, 0x4480

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v4

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_2
    :pswitch_1
    iget-boolean v4, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eq v4, v0, :cond_0

    iput-boolean v0, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mColors:[I

    invoke-static {v5, v1, v2}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->interpolateColor([IFF)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mListener:Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;

    iget-object v6, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-interface {v5, v6}, Lorg/chromium/ui/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    :cond_4
    iput-boolean v4, p0, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
