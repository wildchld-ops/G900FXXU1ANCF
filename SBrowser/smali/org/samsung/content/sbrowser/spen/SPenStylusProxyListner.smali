.class public Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;
.super Ljava/lang/Object;
.source "SPenStylusProxyListner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private final DELTA:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field private mStartX:F

.field private mStartY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SPenStylusProxyHandler"

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mDirLTR:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    const/16 v0, 0xf

    iput v0, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->DELTA:I

    iput-object p1, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    sget-object v10, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->TAG:Ljava/lang/String;

    const-string v11, "onStylusButtonEvent END"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    if-eqz v10, :cond_2

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_4

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    const/high16 v12, 0x4170

    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mDirLTR:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    goto :goto_1

    :cond_3
    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    const/high16 v12, 0x4170

    add-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mDirLTR:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    goto :goto_1

    :cond_4
    iget-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mDirLTR:Z

    if-eqz v10, :cond_6

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    goto :goto_1

    :cond_5
    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    const/high16 v12, 0x4170

    add-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    sget-object v10, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->TAG:Ljava/lang/String;

    const-string v11, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    goto/16 :goto_1

    :cond_6
    iget-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mDirLTR:Z

    if-nez v10, :cond_2

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    goto/16 :goto_1

    :cond_7
    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    const/high16 v11, 0x4170

    add-float/2addr v10, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    sget-object v10, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->TAG:Ljava/lang/String;

    const-string v11, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    goto/16 :goto_1

    :pswitch_1
    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setDoingSpenStylus(Z)V

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    const/4 v10, 0x0

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mMaxX:F

    goto/16 :goto_1

    :pswitch_2
    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->setDoingSpenStylus(Z)V

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10, v6, v5}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    iget v11, v6, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_a

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_a

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-ltz v10, :cond_a

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_b

    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    goto/16 :goto_0

    :cond_b
    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    iget v11, v5, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    const/4 v10, 0x0

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    :cond_c
    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    const/4 v10, 0x0

    iput v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    :cond_d
    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float/2addr v3, v10

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    const/4 v10, 0x0

    cmpg-float v10, v3, v10

    if-gez v10, :cond_e

    const/4 v3, 0x0

    :cond_e
    const/4 v10, 0x0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_f

    const/4 v4, 0x0

    :cond_f
    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartX:F

    float-to-int v7, v10

    iget v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mStartY:F

    float-to-int v8, v10

    float-to-int v1, v3

    float-to-int v2, v4

    if-le v7, v1, :cond_10

    move v9, v7

    move v7, v1

    move v1, v9

    move v9, v8

    move v8, v2

    move v2, v9

    :cond_10
    if-eq v7, v1, :cond_11

    if-eq v8, v2, :cond_11

    sget-object v10, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->TAG:Ljava/lang/String;

    const-string v11, "onStylusButtonEvent - trigger selection"

    invoke-static {v10, v11}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v10, v7, v8, v1, v2}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->spenSelectBetweenCoordinates(IIII)V

    :cond_11
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    goto/16 :goto_1

    :pswitch_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/samsung/content/sbrowser/spen/SPenStylusProxyListner;->mPressed:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
