.class Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "TwScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveState"
.end annotation


# instance fields
.field beginX:F

.field beginY:F

.field mFingerDiffX:F

.field mFingerDiffY:F

.field mLen:F

.field mLenBeforeSqrt:F

.field mPressure:F

.field mTimeStamp:J

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->this$0:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->reset()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->y:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->x:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginY:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->beginX:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxY:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->maxX:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minY:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->minX:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLen:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mTimeStamp:J

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffX:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mFingerDiffY:F

    iput v2, p0, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$SaveState;->mPressure:F

    return-void
.end method
