.class Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$1;
.super Ljava/lang/Object;
.source "TwHorizontalDndListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->mDragViewBitmapTranslateX:I
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->access$002(Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;I)I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalDndListView;->invalidate()V

    return-void
.end method
