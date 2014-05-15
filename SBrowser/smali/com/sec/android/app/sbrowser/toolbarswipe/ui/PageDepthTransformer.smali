.class public Lcom/sec/android/app/sbrowser/toolbarswipe/ui/PageDepthTransformer;
.super Ljava/lang/Object;
.source "PageDepthTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static MIN_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f40

    sput v0, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/PageDepthTransformer;->MIN_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v2, -0x4080

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    cmpg-float v2, p2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    cmpg-float v2, p2, v5

    if-gtz v2, :cond_2

    sub-float v2, v5, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    int-to-float v2, v0

    neg-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    sget v2, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/PageDepthTransformer;->MIN_SCALE:F

    sget v3, Lcom/sec/android/app/sbrowser/toolbarswipe/ui/PageDepthTransformer;->MIN_SCALE:F

    sub-float v3, v5, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
