.class Lorg/chromium/content/browser/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"


# static fields
.field public static final CONVERSION_ERROR:I = -0x1

.field static TOUCH_EVENT_TYPE_CANCEL:I

.field static TOUCH_EVENT_TYPE_END:I

.field static TOUCH_EVENT_TYPE_MOVE:I

.field static TOUCH_EVENT_TYPE_START:I

.field private static TOUCH_POINT_STATE_CANCELLED:I

.field private static TOUCH_POINT_STATE_MOVED:I

.field private static TOUCH_POINT_STATE_PRESSED:I

.field private static TOUCH_POINT_STATE_RELEASED:I

.field private static TOUCH_POINT_STATE_STATIONARY:I

.field private static TOUCH_POINT_STATE_UNDEFINED:I


# instance fields
.field private final mId:I

.field private final mPressure:F

.field private final mSize:F

.field private final mState:I

.field private final mX:F

.field private final mY:F


# direct methods
.method constructor <init>(IIFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content/browser/TouchPoint;->mState:I

    iput p2, p0, Lorg/chromium/content/browser/TouchPoint;->mId:I

    iput p3, p0, Lorg/chromium/content/browser/TouchPoint;->mX:F

    iput p4, p0, Lorg/chromium/content/browser/TouchPoint;->mY:F

    iput p5, p0, Lorg/chromium/content/browser/TouchPoint;->mSize:F

    iput p6, p0, Lorg/chromium/content/browser/TouchPoint;->mPressure:F

    return-void
.end method

.method public static createTouchPoints(Landroid/view/MotionEvent;[Lorg/chromium/content/browser/TouchPoint;)I
    .locals 10

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Chromium"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown motion event action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    :cond_0
    return v9

    :pswitch_1
    sget v9, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_START:I

    sget v7, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_PRESSED:I

    :goto_0
    const/4 v8, 0x0

    :goto_1
    array-length v0, p1

    if-ge v8, v0, :cond_0

    move v1, v7

    sget v0, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_STATIONARY:I

    if-ne v7, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    sget v1, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_PRESSED:I

    :cond_1
    :goto_2
    new-instance v0, Lorg/chromium/content/browser/TouchPoint;

    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v5

    invoke-virtual {p0, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/TouchPoint;-><init>(IIFFFF)V

    aput-object v0, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_2
    sget v9, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_MOVE:I

    sget v7, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_MOVED:I

    goto :goto_0

    :pswitch_3
    sget v9, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_END:I

    sget v7, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_RELEASED:I

    goto :goto_0

    :pswitch_4
    sget v9, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_CANCEL:I

    sget v7, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_CANCELLED:I

    goto :goto_0

    :pswitch_5
    sget v9, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_MOVE:I

    sget v7, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_STATIONARY:I

    goto :goto_0

    :cond_2
    sget v1, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_RELEASED:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static initializeConstants(IIIIIIIIII)V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    sput p0, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_START:I

    sput p1, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_MOVE:I

    sput p2, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_END:I

    sput p3, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_CANCEL:I

    sput p4, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_UNDEFINED:I

    sput p5, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_RELEASED:I

    sput p6, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_PRESSED:I

    sput p7, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_MOVED:I

    sput p8, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_STATIONARY:I

    sput p9, Lorg/chromium/content/browser/TouchPoint;->TOUCH_POINT_STATE_CANCELLED:I

    return-void
.end method

.method static initializeConstantsForTesting()V
    .locals 10

    sget v0, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_START:I

    sget v1, Lorg/chromium/content/browser/TouchPoint;->TOUCH_EVENT_TYPE_MOVE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/16 v9, 0x9

    invoke-static/range {v0 .. v9}, Lorg/chromium/content/browser/TouchPoint;->initializeConstants(IIIIIIIIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/TouchPoint;->mId:I

    return v0
.end method

.method public getPressure()D
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/TouchPoint;->mPressure:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getSize()D
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/TouchPoint;->mSize:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getState()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/TouchPoint;->mState:I

    return v0
.end method

.method public getX()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/TouchPoint;->mX:F

    float-to-int v0, v0

    return v0
.end method

.method public getY()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/TouchPoint;->mY:F

    float-to-int v0, v0

    return v0
.end method
