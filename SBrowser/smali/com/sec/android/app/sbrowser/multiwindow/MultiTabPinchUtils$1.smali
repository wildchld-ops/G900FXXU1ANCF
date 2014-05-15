.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;
.super Ljava/lang/Object;
.source "MultiTabPinchUtils.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->adjustScrollView(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

.field final synthetic val$duration:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->val$duration:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-wide v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mAdjustScrollViewStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mElapsedTime:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-wide v3, v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mElapsedTime:J

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->val$duration:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolation:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setScrollY(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDistanceY:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v2, v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mInterpolation:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDY:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mScrollView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils$1;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;

    iget v1, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPinchUtils;->mDY:I

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScrollY(I)V

    goto :goto_0
.end method
