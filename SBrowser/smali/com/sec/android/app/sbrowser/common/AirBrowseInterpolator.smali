.class Lcom/sec/android/app/sbrowser/common/AirBrowseInterpolator;
.super Ljava/lang/Object;
.source "GestureAirTurnListener.java"

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
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f00

    div-float/2addr p1, v2

    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    mul-float v1, v2, p1

    mul-float/2addr v1, p1

    mul-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    sub-float/2addr p1, v3

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    mul-float v0, v2, v1

    goto :goto_0
.end method
