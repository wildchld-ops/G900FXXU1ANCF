.class Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/high16 v1, -0x4100

    const-wide v2, 0x400921fb54442d18L

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v2, v4

    double-to-float v2, v2

    mul-float v0, v1, v2

    return v0
.end method
