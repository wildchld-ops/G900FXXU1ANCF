.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iget-object v5, v5, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v5, 0x3f80

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iget-object v5, v5, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v5, v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-boolean v5, v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->fadeout:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iget-object v5, v5, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    iget-boolean v5, v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->fadeout:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    :cond_2
    iget-object v5, v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v5}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
