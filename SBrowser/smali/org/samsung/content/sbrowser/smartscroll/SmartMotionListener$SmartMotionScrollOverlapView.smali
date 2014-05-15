.class Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;
.super Landroid/view/View;
.source "SmartMotionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartMotionScrollOverlapView"
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field mBmDrawableDirectionGuide:[Landroid/graphics/drawable/BitmapDrawable;

.field mDisplay:Landroid/view/Display;

.field private mFacestate:Ljava/lang/String;

.field private mMotionState:I

.field mOrientation:I

.field private mPosition:[F

.field mScrollState:I

.field private mSumDy:I

.field private mTouchAction:I

.field mViewBallHeight:I

.field mViewHeight:I

.field mViewWidth:I

.field mViewX:I

.field mViewY:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;


# direct methods
.method public constructor <init>(Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->this$0:Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mFacestate:Ljava/lang/String;

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mTouchAction:I

    const-string v0, "scrollOverlapView"

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mScrollState:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewBallHeight:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewX:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewY:I

    iput v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mBmDrawableDirectionGuide:[Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method


# virtual methods
.method add()V
    .locals 9

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewX:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewY:I

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add:ViewWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ViewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->invalidate()V

    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public drawTrapezoid(Landroid/graphics/Canvas;FF)V
    .locals 9

    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v5, 0x60

    const/4 v6, 0x0

    const/16 v7, 0xbf

    const/16 v8, 0xff

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x6

    const/high16 v5, 0x42f0

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_2

    const/high16 v5, 0x4120

    cmpl-float v5, p3, v5

    if-lez v5, :cond_2

    const/high16 v3, 0x4080

    const/high16 v5, 0x4000

    mul-float/2addr v5, p3

    int-to-float v6, v0

    div-float v4, v5, v6

    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sub-float v5, p2, v3

    const/high16 v6, 0x4434

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v5, p2, v3

    const/high16 v6, 0x4434

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, p2, v4

    const/high16 v6, 0x4496

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v5, p2, v4

    const/high16 v6, 0x4496

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v5, p2, v3

    const/high16 v6, 0x4434

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-boolean v5, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawTrapezoid value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/high16 v5, 0x4120

    cmpg-float v5, p3, v5

    if-gtz v5, :cond_3

    const/high16 v5, -0x3ee0

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_3

    const/high16 v3, 0x4080

    const/high16 v4, 0x4080

    goto :goto_0

    :cond_3
    const/high16 v5, -0x3ee0

    cmpg-float v5, p3, v5

    if-gez v5, :cond_0

    const/high16 v5, -0x3d10

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_0

    const/high16 v5, 0x4000

    mul-float/2addr v5, p3

    int-to-float v6, v0

    div-float v3, v5, v6

    const/high16 v4, -0x3f80

    goto/16 :goto_0
.end method

.method public getMeanData(F)F
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v2, v2, v5

    aput v2, v1, v6

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v2, v2, v4

    aput v2, v1, v5

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aput p1, v1, v4

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v1, v1, v4

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v2, v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v2, v2, v6

    add-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float v0, v1, v2

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeanData mPosition[2] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPosition[1]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPosition[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mPosition:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public getPointerMoveParameter()F
    .locals 6

    const/16 v5, 0x19

    const/16 v4, -0x19

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    if-nez v2, :cond_1

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-le v2, v5, :cond_0

    const/high16 v1, -0x3d1a

    :cond_0
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-ge v2, v4, :cond_1

    const/high16 v1, 0x42e6

    :cond_1
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-lt v2, v5, :cond_6

    const/4 v1, 0x0

    :cond_2
    :goto_0
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-gt v2, v4, :cond_8

    const/4 v1, 0x0

    :cond_3
    :goto_1
    const/high16 v2, 0x42e6

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a

    const/high16 v1, 0x42e6

    :cond_4
    :goto_2
    sget-boolean v2, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "motion_state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v1}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->getMeanData(F)F

    move-result v0

    return v0

    :cond_6
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-ge v2, v5, :cond_7

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-lt v2, v4, :cond_7

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x73

    int-to-float v1, v2

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-ge v2, v4, :cond_2

    const/high16 v1, 0x42e6

    goto :goto_0

    :cond_8
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-le v2, v4, :cond_9

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-gt v2, v5, :cond_9

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x73

    int-to-float v1, v2

    goto :goto_1

    :cond_9
    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    if-le v2, v5, :cond_3

    const/high16 v1, -0x3d1a

    goto :goto_1

    :cond_a
    const/high16 v2, -0x3d1a

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    const/high16 v1, -0x3d1a

    goto :goto_2
.end method

.method declared-synchronized hide()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->getPointerMoveParameter()F

    move-result v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    if-nez v3, :cond_2

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    :goto_0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    sget-boolean v3, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "motion_state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mBmDrawableDirectionGuide:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v6, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewBallHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    add-float v0, v3, v4

    iget-object v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mBmDrawableDirectionGuide:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v6, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    if-ne v3, v8, :cond_0

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public setGyroSumDy(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mSumDy:I

    return-void
.end method

.method public setMotionState(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mMotionState:I

    return-void
.end method

.method public setStringFaceState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mFacestate:Ljava/lang/String;

    return-void
.end method

.method public setTouchAction(I)V
    .locals 0

    iput p1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mTouchAction:I

    return-void
.end method

.method declared-synchronized show()Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewX:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewY:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    iget v2, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewX:I

    iget v4, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewY:I

    const/16 v5, 0x3e8

    const/16 v6, 0x218

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v1, Lorg/samsung/content/sbrowser/smartscroll/SmartScrollSettings;->SMART_SCROLL_DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:ViewWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ViewHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/smartscroll/SmartMotionListener$SmartMotionScrollOverlapView;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
