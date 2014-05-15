.class public Lorg/samsung/content/sbrowser/SbrPlaceHolderView;
.super Landroid/view/View;
.source "SbrPlaceHolderView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SbrPlaceHolderView"


# instance fields
.field bitMapDrawRect:Landroid/graphics/Rect;

.field destRect:Landroid/graphics/Rect;

.field h:I

.field private final mBgPaint:Landroid/graphics/Paint;

.field private mPHolderCViewAdapter:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

.field metrics:Landroid/util/DisplayMetrics;

.field oh:I

.field w:I


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->w:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->h:I

    iput v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->oh:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->metrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->destRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mPHolderCViewAdapter:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SbrPlaceHolderView"

    const-string v1, "APPLOGS:PlaceHolder is Hidden"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->requestLayout()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->w:I

    int-to-float v3, v0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->h:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->w:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->h:I

    int-to-float v6, v0

    iget-object v7, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->h:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mPHolderCViewAdapter:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getPlaceholderViewAreaState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "SbrPlaceHolderView"

    const-string v1, "APPLOGS: DRAWING WHITE BECAUSE NO STATE SET FOR DRAWING"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mPHolderCViewAdapter:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v0, v9}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->setConfigChangedStatus(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void

    :pswitch_1
    const-string v0, "SbrPlaceHolderView"

    const-string v1, "APPLOGS: DRAWING WHITE BECAUSE STATE_DEFAULT_FULL_WHITE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mPHolderCViewAdapter:Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderCViewAdapter;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    iput v9, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    iput v9, v0, Landroid/graphics/Rect;->top:I

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v9, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->bitMapDrawRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const-string v0, "SbrPlaceHolderView"

    const-string v1, "APPLOGS: BITMAP IS NULL DRAWING WHITE BY DEFAULT"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareAndShowPlaceHolderIfNeeded(II)V
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->h:I

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->oh:I

    iput p1, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->w:I

    iput p2, p0, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->h:I

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "SbrPlaceHolderView"

    const-string v1, "APPLOGS:PlaceHolder is shown"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/samsung/content/sbrowser/SbrPlaceHolderView;->setVisibility(I)V

    return-void
.end method
