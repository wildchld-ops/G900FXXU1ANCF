.class public Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;
.super Landroid/view/View;
.source "DataCompressionPreview.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;->getSetting()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    return-void
.end method


# virtual methods
.method public getDataCompressionCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionCheck()Z

    move-result v0

    return v0
.end method

.method public getDataCompressionCompressedSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionCompressedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataCompressionOriginalSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionOriginalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataCompressionPercent()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->mSbrowserSettings:Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;->getDataCompressionPercent()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/high16 v2, 0x4334

    const v6, 0x40666666

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getDataCompressionPercent()J

    move-result-wide v12

    long-to-float v11, v12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getHeight()I

    move-result v0

    div-int/lit16 v9, v0, 0xfa

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x4000

    div-float v7, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x4000

    div-float v8, v0, v4

    const/high16 v3, 0x43b4

    const/high16 v0, 0x42a0

    int-to-float v4, v9

    mul-float v10, v0, v4

    new-instance v1, Landroid/graphics/RectF;

    sub-float v0, v7, v10

    sub-float v4, v8, v10

    add-float v12, v7, v10

    add-float v13, v8, v10

    invoke-direct {v1, v0, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getDataCompressionCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xd9706a

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    mul-int/lit8 v0, v9, 0x23

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    mul-float v3, v11, v6

    new-instance v1, Landroid/graphics/RectF;

    sub-float v0, v7, v10

    sub-float v4, v8, v10

    add-float v12, v7, v10

    add-float v13, v8, v10

    invoke-direct {v1, v0, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getDataCompressionCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xefd4d5

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v0, 0x4248

    int-to-float v4, v9

    mul-float v10, v0, v4

    new-instance v1, Landroid/graphics/RectF;

    sub-float v0, v7, v10

    sub-float v4, v8, v10

    add-float v12, v7, v10

    add-float v13, v8, v10

    invoke-direct {v1, v0, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->getDataCompressionCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x5e00

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    mul-int/lit8 v0, v9, 0x5

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/preferences/DataCompressionPreview;->invalidate()V

    return-void

    :cond_0
    const v0, -0x72635d

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    const v0, -0xd9d9da

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    const v0, -0x72635d

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method
