.class public Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;
.super Ljava/lang/Object;
.source "TwAnimatedGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    return-object v0
.end method

.method public putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v0, 0x1

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;

    sget-boolean v8, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez v5, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_0
    invoke-virtual {v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->isFinished()Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimation;->getRetainOnFinish()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->removeItemAnimation(I)V

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->invalidate()V

    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v8, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->onAllAnimationsFinished()V

    goto :goto_1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedGridView$ItemAnimator;->run()V

    return-void
.end method
