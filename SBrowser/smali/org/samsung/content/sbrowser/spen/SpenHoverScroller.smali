.class public Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;
.super Ljava/lang/Object;
.source "SpenHoverScroller.java"


# static fields
.field private static final HOVERSCROLL_DELAY:I = 0xa

.field private static final HOVERSCROLL_DOWN:I = 0xf

.field private static final HOVERSCROLL_LEFT:I = 0x11

.field private static final HOVERSCROLL_MODE_LINE:I = 0x1

.field private static final HOVERSCROLL_MODE_PAGE:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_MOVE_STEP:I = 0x2

.field private static final HOVERSCROLL_NONE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0xd

.field private static final HOVERSCROLL_UP:I = 0xb

.field private static final HOVER_AREA_HEIGHT:I = 0x64

.field private static final HOVER_BOTTOM_AREA_HEIGHT:I = 0x64

.field private static TAG:Ljava/lang/String;

.field private static mHoverRecognitionStartTime:I

.field private static mHoverScrollDirection:I


# instance fields
.field private mCheckHoverScrollStart:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDoScrollMove:Z

.field private mHoverIconStatus:I

.field private mHoverPageScrollInProgress:Z

.field private mHoverScrollMode:I

.field private mHoverScrollPageHeight:I

.field private mHoverScrollPageWidth:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mInVSync:Z

.field private final mPrivateEventHandler:Landroid/os/Handler;

.field private mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

.field final mVsyncCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SpenHoverScroller"

    sput-object v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/samsung/content/sbrowser/SbrContentViewCore;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollMode:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverPageScrollInProgress:Z

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageHeight:I

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageWidth:I

    const/16 v0, 0x1f4

    iput v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollTimeInterval:I

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollStartTime:I

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mCheckHoverScrollStart:Z

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mInVSync:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    iput-boolean v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mDoScrollMove:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I

    new-instance v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$1;-><init>(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    new-instance v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller$2;-><init>(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V

    iput-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mVsyncCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    return-void
.end method

.method static synthetic access$000(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)I
    .locals 1

    iget v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollMode:I

    return v0
.end method

.method static synthetic access$100(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doHoverScrollMove()V

    return-void
.end method

.method static synthetic access$200(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)V
    .locals 0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doHoverScrollByPage()V

    return-void
.end method

.method static synthetic access$300(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->doHoverScrollMoveByStep(II)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method private doHoverScrollByPage()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageHeight:I

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v5

    iput v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageWidth:I

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getScrollXY()Landroid/graphics/Point;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    sget v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    if-gtz v4, :cond_2

    :cond_1
    sget v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    if-ge v4, v1, :cond_3

    :cond_2
    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverPageScrollInProgress:Z

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    sget v7, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-virtual {v6, v9, v2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :pswitch_1
    iget v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageHeight:I

    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageHeight:I

    sub-int v5, v1, v4

    if-le v2, v5, :cond_0

    sub-int v2, v1, v4

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageWidth:I

    if-le v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollPageWidth:I

    sub-int v5, v0, v3

    if-le v2, v5, :cond_0

    sub-int v2, v0, v3

    goto :goto_0

    :cond_3
    sget v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_4

    if-gtz v3, :cond_5

    :cond_4
    sget v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    if-ge v3, v0, :cond_6

    :cond_5
    iput-boolean v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverPageScrollInProgress:Z

    iget-object v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    sget v7, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-virtual {v6, v9, v2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    sget-object v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " else OverGlow offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private doHoverScrollMove()V
    .locals 15

    const/16 v14, 0xb

    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v4, v8

    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverRecognitionStartTime:I

    sub-int v8, v4, v8

    div-int/lit16 v5, v8, 0x3e8

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x5

    const/16 v0, 0xc

    iget-object v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollStartTime:I

    sub-int v8, v4, v8

    iget v9, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollTimeInterval:I

    if-ge v8, v9, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x2

    if-le v5, v8, :cond_4

    if-ge v5, v12, :cond_4

    const/16 v6, 0xe

    :goto_1
    if-lez v6, :cond_2

    int-to-float v8, v6

    iget-object v9, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v9

    invoke-virtual {v9}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    :cond_2
    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    if-ne v8, v14, :cond_7

    mul-int/lit8 v7, v6, -0x1

    :goto_2
    iget-object v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    iget-object v9, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v9}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget-object v10, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBegin(FF)V

    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    if-eq v8, v14, :cond_3

    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v9, 0xf

    if-ne v8, v9, :cond_9

    :cond_3
    iget-object v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v8, v11, v7}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBy(II)V

    goto :goto_0

    :cond_4
    if-lt v5, v12, :cond_5

    if-ge v5, v13, :cond_5

    const/16 v6, 0x10

    goto :goto_1

    :cond_5
    if-lt v5, v13, :cond_6

    const/16 v6, 0x12

    goto :goto_1

    :cond_6
    const/16 v6, 0xc

    goto :goto_1

    :cond_7
    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v9, 0x11

    if-ne v8, v9, :cond_8

    mul-int/lit8 v7, v6, -0x1

    goto :goto_2

    :cond_8
    mul-int/lit8 v7, v6, 0x1

    goto :goto_2

    :cond_9
    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v9, 0x11

    if-eq v8, v9, :cond_a

    sget v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    const/16 v9, 0xd

    if-ne v8, v9, :cond_b

    :cond_a
    iget-object v8, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v8, v7, v11}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBy(II)V

    goto :goto_0

    :cond_b
    sget-object v8, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    const-string v9, " else OverGlow "

    invoke-static {v8, v9}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private doHoverScrollMoveByStep(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    sget-object v2, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHoverScrollMoveByStep in dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingScrollDistance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHoverPageScrollInProgress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverPageScrollInProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverPageScrollInProgress:Z

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x10

    move v1, v0

    if-lt v0, p1, :cond_1

    move v1, p1

    const/4 p1, 0x0

    :goto_1
    sget-object v2, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollBy step="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/samsung/base/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_2
    :pswitch_0
    if-lez p1, :cond_2

    iget-object v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v1, v1, -0x1

    :pswitch_2
    iget-object v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, v5, v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBy(II)V

    goto :goto_2

    :pswitch_3
    mul-int/lit8 v1, v1, -0x1

    :pswitch_4
    iget-object v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v2, v1, v5}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollBy(II)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v5, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleHoverScrolling(I)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sput p1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverRecognitionStartTime:I

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->acquireCPUDVFS()V

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setInitVSync()V

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setEnableVSync(Z)V

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mDoScrollMove:Z

    goto :goto_0
.end method

.method private initVSync()V
    .locals 1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private isHoverScrollOn(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v4}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_list_scroll"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private isScrollingPossible(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private setHoverIcon(I)V
    .locals 3

    iget v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I

    if-eq v1, p1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v1, 0xb

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v1, 0xb

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_UP"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xf

    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v1, 0xf

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DOWN"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x11

    const/4 v2, -0x1

    :try_start_2
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v1, 0x11

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_LEFT"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    const/16 v1, 0xd

    const/4 v2, -0x1

    :try_start_3
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/16 v1, 0xd

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_RIGHT"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->scrollEnd()V

    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_4
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    const/4 v1, 0x1

    iput v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverIconStatus:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    sget-object v1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0xb -> :sswitch_0
        0xd -> :sswitch_3
        0xf -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method private stopVSync()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mInVSync:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mVsyncCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    :cond_0
    return-void
.end method

.method private updateVSync()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mInVSync:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mInVSync:Z

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->initVSync()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mVsyncCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkHoverScrolling(Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v10, 0xd

    const/16 v9, 0xb

    const/16 v8, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->isHoverScrollOn(Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    iget-object v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getHeight()I

    move-result v0

    iget-object v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v6}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getWidth()I

    move-result v1

    if-le v3, v8, :cond_1

    add-int/lit8 v6, v0, -0x64

    if-ge v3, v6, :cond_1

    if-le v2, v8, :cond_1

    add-int/lit8 v6, v1, -0x64

    if-ge v2, v6, :cond_1

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->stopHoverScroll()V

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->stopHoverScroll()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v4, v5

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mCheckHoverScrollStart:Z

    if-nez v6, :cond_4

    iput-boolean v5, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mCheckHoverScrollStart:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollStartTime:I

    :cond_4
    if-ltz v3, :cond_6

    if-gt v3, v8, :cond_6

    invoke-direct {p0, v9}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->isScrollingPossible(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v9}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    invoke-direct {p0, v9}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->handleHoverScrolling(I)V

    goto :goto_1

    :cond_5
    sput v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-direct {p0, v5}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    const/16 v6, 0x32

    if-le v3, v6, :cond_3

    goto :goto_0

    :cond_6
    add-int/lit8 v6, v0, -0x64

    if-lt v3, v6, :cond_8

    if-gt v3, v0, :cond_8

    const/16 v6, 0xf

    invoke-direct {p0, v6}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->isScrollingPossible(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->handleHoverScrolling(I)V

    goto :goto_1

    :cond_7
    sput v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-direct {p0, v5}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    add-int/lit8 v6, v0, -0x32

    if-ge v3, v6, :cond_3

    goto :goto_0

    :cond_8
    if-ltz v2, :cond_a

    if-gt v2, v8, :cond_a

    const/16 v6, 0x11

    invoke-direct {p0, v6}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->isScrollingPossible(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->handleHoverScrolling(I)V

    goto :goto_1

    :cond_9
    sput v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-direct {p0, v5}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    const/16 v6, 0x32

    if-le v2, v6, :cond_3

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v6, v1, -0x64

    if-lt v2, v6, :cond_c

    if-gt v2, v1, :cond_c

    invoke-direct {p0, v10}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->isScrollingPossible(I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, v10}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    invoke-direct {p0, v10}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->handleHoverScrolling(I)V

    goto/16 :goto_1

    :cond_b
    sput v5, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    invoke-direct {p0, v5}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    add-int/lit8 v6, v1, -0x32

    if-ge v2, v6, :cond_3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->stopHoverScroll()V

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mCheckHoverScrollStart:Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->stopHoverScroll()V

    iput-boolean v4, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mCheckHoverScrollStart:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method doVSync(J)V
    .locals 4

    invoke-virtual {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->onStartScroll()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mVsyncCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartScroll()V
    .locals 3

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mDoScrollMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setEnableVSync(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->updateVSync()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->stopVSync()V

    goto :goto_0
.end method

.method public setInitVSync()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mInVSync:Z

    invoke-direct {p0}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->initVSync()V

    return-void
.end method

.method public stopHoverScroll()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput v1, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mHoverScrollDirection:I

    iput-boolean v2, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mDoScrollMove:Z

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mSbrContentViewCore:Lorg/samsung/content/sbrowser/SbrContentViewCore;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->releaseDVFS()V

    invoke-virtual {p0, v2}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setEnableVSync(Z)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0, v1}, Lorg/samsung/content/sbrowser/spen/SpenHoverScroller;->setHoverIcon(I)V

    return-void
.end method
