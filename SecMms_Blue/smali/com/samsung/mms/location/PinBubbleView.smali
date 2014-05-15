.class public Lcom/samsung/mms/location/PinBubbleView;
.super Ljava/lang/Object;
.source "PinBubbleView.java"


# static fields
.field public static final CLIPPED_BUBBLE:I = 0x1

.field public static final CLIPPED_FAVORITE:I = 0x2

.field public static final CLIPPED_NOTHING:I = 0x0

.field private static final PADDING_ACCURACY_X:I = 0x6

.field private static final PADDING_ACCURACY_X_TEXT:F = 6.66f

.field private static final PADDING_ACCURACY_Y:I = 0x7

.field private static final PADDING_ACCURACY_Y_TEXT:F = 69.0f

.field private static final PADDING_BOTTOM_MEDIA:I = 0x12

.field private static final PADDING_BOTTOM_TEXT:I = 0x24

.field private static final PADDING_MAIN_X:I = 0x0

.field private static final PADDING_MAIN_Y:I = 0x1

.field private static final PADDING_MEDIA:I = 0x1

.field private static final PADDING_SECONDARY1_X:I = 0x2

.field private static final PADDING_SECONDARY1_Y:I = 0x3

.field private static final PADDING_SECONDARY2_X:I = 0x4

.field private static final PADDING_SECONDARY2_Y:I = 0x5

.field private static final PADDING_SUBTITLE1_X_MEDIA:F = 3.33f

.field private static final PADDING_SUBTITLE1_X_TEXT:F = 6.66f

.field private static final PADDING_SUBTITLE1_Y_MEDIA:F = 19.33f

.field private static final PADDING_SUBTITLE1_Y_TEXT:F = 36.66f

.field private static final PADDING_SUBTITLE2_X_MEDIA:F = 3.33f

.field private static final PADDING_SUBTITLE2_X_TEXT:F = 6.66f

.field private static final PADDING_SUBTITLE2_Y_MEDIA:F = 35.0f

.field private static final PADDING_SUBTITLE2_Y_TEXT:F = 53.33f

.field private static final PADDING_TITLE:I = 0x0

.field private static final PADDING_TITLE_TEXT:I = 0x14

.field private static final PADDING_TITLE_X_MEDIA:F = 3.33f

.field private static final PADDING_TITLE_X_TEXT:F = 6.66f

.field private static final PADDING_TITLE_Y_MEDIA:F = 4.66f

.field private static final PADDING_TITLE_Y_TEXT:F = 18.0f

.field private static final TAG:Ljava/lang/String; = "PinBubbleView"

.field private static final TEXT_SIZE_LARGE:I = 0x19

.field private static final TEXT_SIZE_MEDIUM:I = 0xf

.field private static final TEXT_SIZE_SMALL:I = 0xf


# instance fields
.field private accuracyText:Ljava/lang/String;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private final bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

.field private bubbleMediaBitmap:Landroid/graphics/Bitmap;

.field private final bubblePadding:[[F

.field private final bubbleRectangle:Lcom/nbi/map/data/Rectangle;

.field private final bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private final bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private isFavorite:Z

.field private isLoading:Z

.field private isMedia:Z

.field private final loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

.field private mContext:Landroid/content/Context;

.field private padX:I

.field private padY:I

.field private final paintAccuracy:Landroid/graphics/Paint;

.field private final paintLoading:Landroid/graphics/Paint;

.field private final paintSubtitle1:Landroid/graphics/Paint;

.field private final paintSubtitle2:Landroid/graphics/Paint;

.field private final paintTitle:Landroid/graphics/Paint;

.field private subTitleText1:Ljava/lang/String;

.field private subTitleText2:Ljava/lang/String;

.field private textStartX:F

.field private textStartY:F

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 9

    const/high16 v5, -0x100

    const/high16 v4, 0x4170

    const v8, 0x40d51eb8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    iput-object p1, p0, Lcom/samsung/mms/location/PinBubbleView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    const v2, 0x7f02018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    const v2, 0x7f0200e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Lcom/nbi/map/data/Rectangle;

    invoke-direct {v2}, Lcom/nbi/map/data/Rectangle;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/samsung/mms/location/PinBubbleView;->initLoadingBubble(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x2

    const/16 v3, 0x8

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    aput v3, v2, v7

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/high16 v3, 0x4190

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x3

    const v4, 0x4212a3d7

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x4

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x5

    const v4, 0x425551ec

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v7

    const/4 v3, 0x7

    const/high16 v4, 0x428a

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const v3, 0x40551eb8

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v7

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const v3, 0x40951eb8

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x2

    const v4, 0x40551eb8

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x3

    const v4, 0x419aa3d7

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x4

    const v4, 0x40551eb8

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x5

    const/high16 v4, 0x420c

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v8

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x7

    const/high16 v4, 0x428a

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    aput v4, v2, v3

    iput-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    return-void
.end method

.method private initLoadingBubble(Landroid/util/DisplayMetrics;)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/high16 v3, -0x4180

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/high16 v3, 0x4170

    iget v4, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c02fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x428a

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x4059e00000000000L

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PinBubbleView;->drawMediaBubble(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/location/PinBubbleView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PinBubbleView;->drawLoadingBubble(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/mms/location/PinBubbleView;->drawAddressBubble(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawAddressBubble(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v10}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v5, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v1, v5, v6

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_0
    sub-int v5, v1, v4

    div-int/lit8 v0, v5, 0x2

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v8

    add-int/2addr v8, v0

    iget v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x4

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x5

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x4

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x5

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected drawLoadingBubble(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v9}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v10}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->mContext:Landroid/content/Context;

    const v6, 0x7f0c02fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v3, v6, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    int-to-float v5, v1

    int-to-float v6, v2

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->paintLoading:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawMediaBubble(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v3}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v2}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x0

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v3, v3, v6

    aget v3, v3, v6

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x2

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v3, v3, v6

    const/4 v4, 0x3

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v2, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v2, v2, v6

    const/4 v3, 0x4

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->bubblePadding:[[F

    aget-object v3, v3, v6

    const/4 v4, 0x5

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public isInPinbuble(FF)I
    .locals 7

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Lcom/nbi/map/data/Rectangle;->isPointInRectangle(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clicked at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectangle Top "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rectangle Left "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int v1, v4, v5

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, 0xc

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    iget-boolean v4, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    if-nez v4, :cond_0

    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_0

    const-string v4, "NGM"

    const-string v5, "Clicked on Star"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    :goto_0
    return v4

    :cond_0
    const-string v4, "NGM"

    const-string v5, "Not Clicked on Star"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    return v0
.end method

.method public setAddressData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/nbi/map/data/Rectangle;
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iput-object p1, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iput-object p2, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    :cond_1
    const-string v6, ""

    iput-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    :goto_1
    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    iget-boolean v6, p0, Lcom/samsung/mms/location/PinBubbleView;->isFavorite:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleSelectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_2
    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->paintAccuracy:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    const-string v8, "PinBubbleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bubble width is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_3
    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "PinBubbleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bubble height is:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v10, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    :goto_5
    add-int/2addr v10, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    :goto_6
    add-int/2addr v6, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x24

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget v9, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    :goto_7
    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v8, v6}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    :goto_9
    add-int/2addr v9, v6

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_a
    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x24

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    const-string v6, "PinBubbleView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bubble width After padding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PinBubbleView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bubble height After padding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v7}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v8}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v6

    iget v7, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    return-object v6

    :cond_4
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Loading..."

    iput-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleUnselectedFavoriteBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto/16 :goto_a
.end method

.method public setImageData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/nbi/map/data/Rectangle;
    .locals 9

    iput-object p2, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->accuracyText:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/mms/location/PinBubbleView;->isMedia:Z

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p1, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintTitle:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->titleText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle1:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText1:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->paintSubtitle2:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const-string v5, "PinBubbleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetImageData height is:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v4, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v4

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x12

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4, p5}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4, p6}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->subTitleText2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x12

    invoke-virtual {v5, v4}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setWidth(I)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setHeight(I)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v6}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padX:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v5}, Lcom/nbi/map/data/Rectangle;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartX:F

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v4}, Lcom/nbi/map/data/Rectangle;->getTop()I

    move-result v4

    iget v5, p0, Lcom/samsung/mms/location/PinBubbleView;->padY:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleMediaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/samsung/mms/location/PinBubbleView;->textStartY:F

    iget-object v4, p0, Lcom/samsung/mms/location/PinBubbleView;->bubbleRectangle:Lcom/nbi/map/data/Rectangle;

    return-object v4

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto/16 :goto_1
.end method

.method public setIsLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/location/PinBubbleView;->isLoading:Z

    return-void
.end method

.method public setLoadingData(II)Lcom/nbi/map/data/Rectangle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setLeft(I)V

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    iget-object v1, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    invoke-virtual {v1}, Lcom/nbi/map/data/Rectangle;->getHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/nbi/map/data/Rectangle;->setTop(I)V

    iget-object v0, p0, Lcom/samsung/mms/location/PinBubbleView;->loadingBubbleRectangle:Lcom/nbi/map/data/Rectangle;

    return-object v0
.end method
