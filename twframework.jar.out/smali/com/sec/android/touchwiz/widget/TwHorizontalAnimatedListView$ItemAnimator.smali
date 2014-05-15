.class public Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TwHorizontalAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public forceFinish()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->removeAll()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    :cond_1
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public getItemAnimationKey(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    return-object v0
.end method

.method public itemAnimationCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public putItemAnimation(ILcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public removeAll()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    instance-of v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-nez v4, :cond_7

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearShouldRetainView()V

    :cond_9
    return-void
.end method

.method public removeDeleteItemAnimation(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearShouldRetainView()V

    :cond_2
    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearShouldRetainView()V

    :cond_1
    return-void
.end method

.method public removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearShouldRetainView()V

    :cond_2
    return-void
.end method

.method public removeRetainItemAnimation(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mUseCache:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearShouldRetainView()V

    :cond_2
    return-void
.end method

.method public run()V
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/2addr v2, v10

    add-int/lit8 v6, v10, -0x1

    :goto_0
    if-ltz v6, :cond_2

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    and-int/2addr v1, v5

    if-eqz v5, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/2addr v2, v10

    add-int/lit8 v6, v10, -0x1

    :goto_2
    if-ltz v6, :cond_5

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mKeepAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    if-nez v8, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    and-int/2addr v1, v5

    if-eqz v5, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/2addr v2, v10

    add-int/lit8 v6, v10, -0x1

    :goto_4
    if-ltz v6, :cond_8

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    if-nez v8, :cond_7

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v8, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    and-int/2addr v1, v5

    if-eqz v5, :cond_6

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimation;)V

    goto :goto_6

    :cond_9
    if-nez v2, :cond_a

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearShouldRetainView()V

    :cond_a
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->invalidate()V

    if-nez v1, :cond_c

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    invoke-virtual {v11, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_b
    :goto_7
    return-void

    :cond_c
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    const/4 v12, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v11, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;Z)Z

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    :cond_d
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    goto :goto_7
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->run()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$202(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$300(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAnimatedListView$LocalItemAnimationListener;->OnLocalItemAnimatorEnd()V

    :cond_1
    return-void
.end method
