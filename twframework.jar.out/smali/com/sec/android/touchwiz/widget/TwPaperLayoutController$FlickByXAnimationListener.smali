.class Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;
.super Ljava/lang/Object;
.source "TwPaperLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlickByXAnimationListener"
.end annotation


# instance fields
.field private mIsLeft:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->mIsLeft:Z

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->mIsLeft:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->mIsLeft:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget v6, v8, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I
    invoke-static {v9}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v9

    iput v9, v8, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v7, v6

    :goto_0
    if-lez v4, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v8, v4, v7, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    add-int/lit8 v4, v4, -0x1

    move v7, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    sub-int v8, v2, v5

    invoke-virtual {v1, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->refreshCaching()V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z
    invoke-static {v8, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$402(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z

    move v6, v7

    :goto_1
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v8

    invoke-interface {v8, v3, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I
    invoke-static {v8, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$502(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;I)I

    :cond_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget v6, v8, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    #getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I
    invoke-static {v9}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v9

    iput v9, v8, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x2

    :goto_2
    if-ltz v4, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    add-int v9, v6, v4

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v2, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    sub-int v8, v2, v5

    invoke-virtual {v1, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->refreshCaching()V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    #setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z
    invoke-static {v8, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$402(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
