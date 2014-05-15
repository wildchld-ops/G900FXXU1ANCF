.class Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAfterImageTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;->createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$oldDrawingCacheEnableFlag:Z

.field final synthetic val$oldWillNotCacheDrawingFlag:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;Landroid/widget/ImageView;Landroid/view/View;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->this$0:Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$view:Landroid/view/View;

    iput-boolean p4, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$oldWillNotCacheDrawingFlag:Z

    iput-boolean p5, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$oldDrawingCacheEnableFlag:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$oldWillNotCacheDrawingFlag:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$2;->val$oldDrawingCacheEnableFlag:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method
