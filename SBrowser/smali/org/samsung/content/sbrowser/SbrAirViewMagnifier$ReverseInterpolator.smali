.class Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;
.super Ljava/lang/Object;
.source "SbrAirViewMagnifier.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/samsung/content/sbrowser/SbrAirViewMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseInterpolator"
.end annotation


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const/high16 v0, 0x3f80

    sub-float p1, v0, p1

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrAirViewMagnifier$ReverseInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0
.end method
