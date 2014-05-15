.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemSelectHighlightingAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;,
        Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    }
.end annotation


# static fields
.field public static final ITEM_ANIMATION_FADE:I = 0x4

.field public static final ITEM_ANIMATION_HORIZONTAL_SLIDE:I = 0x1

.field public static final ITEM_ANIMATION_MAX:I = 0x5

.field public static final ITEM_ANIMATION_NONE:I = 0x0

.field public static final ITEM_ANIMATION_VERTICAL_DROPDOWN:I = 0x3

.field public static final ITEM_ANIMATION_VERTICAL_SLIDE:I = 0x2

.field static final ITEM_DNDITEMANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TwAnimatedListView"


# instance fields
.field private DEBUG_ANIMATION_FLAG:Z

.field private mAnimationType:I

.field private mCurIxdex:[J

.field private mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

.field private mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

.field private mDeleteDelay:I

.field private mDeleteDuration:I

.field private mDeleteItemList:Ljava/util/ArrayList;

.field private mDuration:I

.field private mFlexibleViews:Ljava/util/ArrayList;

.field private mIndexOffset:[I

.field private mInsertDelay:I

.field private mInsertDuration:I

.field private mIsAnimating:Z

.field private mIsDrawingDeleteView:Z

.field private mIsDrawingInsertView:Z

.field private mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

.field protected mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

.field private mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

.field private mMaxAlpha:I

.field private mMinAlpha:I

.field private mPrevIndex:[J

.field private mPrevPosition:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTrans:Landroid/view/animation/Transformation;

.field private mTranslateDelay:I

.field private mUseCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method private drawDeleteItem(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    :goto_0
    if-ltz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v2, v11}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getDeleteItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v15

    if-nez v15, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDrawingTime()J

    move-result-wide v12

    if-eqz v10, :cond_0

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    sub-int v2, v16, v17

    int-to-float v3, v2

    move-object v2, v15

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v7, v16, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v2, :cond_4

    instance-of v2, v15, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_3

    move-object v9, v15

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v18

    if-nez v18, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    :cond_3
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/16 v8, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private drawInsertItem(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v2, :cond_6

    add-int v2, v14, v11

    add-int/lit8 v15, v2, -0x1

    :goto_0
    if-lt v15, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v2, v2, v15

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v2, v15}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v16

    if-eqz v16, :cond_0

    sub-int v2, v15, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDrawingTime()J

    move-result-wide v12

    if-eqz v10, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    sub-int v2, v17, v18

    int-to-float v3, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v7, v18, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v2, :cond_3

    move-object/from16 v9, v16

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    if-nez v19, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    :cond_3
    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/16 v8, 0x14

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private drawKeepView(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDrawingTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    array-length v0, v10

    if-lez v0, :cond_1

    move-object v6, v10

    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v9, v6, v7

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawKeepChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findItemOffsetPos()V
    .locals 11

    const v10, 0x7fffffff

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v0, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v6

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_3

    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v5, :cond_1

    :goto_2
    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    aput v10, v6, v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    aget-wide v6, v6, v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    add-int/lit8 v9, v5, -0x1

    sub-int/2addr v9, v3

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v2

    sub-int v8, v2, v3

    aput v8, v6, v7

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_4
    if-lt v3, v5, :cond_5

    :goto_5
    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aput v10, v6, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v8, v8, v3

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    sub-int v7, v2, v3

    aput v7, v6, v2

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-nez v6, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    :goto_6
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v5, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v0, :cond_a

    :goto_9
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    :cond_a
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    const/4 v1, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method private getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    neg-int v1, p1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    iput p1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    neg-int v1, p2

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    iput p3, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    :cond_0
    return-object v0
.end method

.method private getCustomDeleteAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_2

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;->getDeleteAnimationDuration()J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    int-to-long v1, v3

    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->start(JII)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_2

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;->getInsertAnimationDuration()J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    int-to-long v1, v3

    :cond_0
    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    :cond_1
    long-to-int v3, v1

    invoke-virtual {v0, p3, p4, p1, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertItemAnimation;->start(JII)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeleteAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    if-eqz v8, :cond_1

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    invoke-direct {v5, p0, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    const/4 v8, 0x1

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v6, :cond_0

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    invoke-direct {v5, p0, v9}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    iput p2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    iput v0, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v4, p1, -0x1

    :goto_1
    if-lt v4, v3, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v8, v8

    if-ge v4, v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    neg-int v8, v7

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto :goto_0

    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x0

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v4, p1, -0x1

    :goto_5
    if-lt v4, v3, :cond_9

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    neg-int v8, v2

    iput v8, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto/16 :goto_0

    :cond_a
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    goto :goto_6

    :pswitch_3
    iput v10, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInsertAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 11

    const/4 v8, 0x0

    const v10, 0x7fffffff

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    if-eqz v7, :cond_0

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    invoke-direct {v5, p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    const/4 v7, 0x1

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    :goto_0
    return-object v5

    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getWidth()I

    move-result v0

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    invoke-direct {v5, p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    iput p2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    iput p3, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    iput v0, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    neg-int v7, v0

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    goto :goto_0

    :pswitch_1
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v4, p1, -0x1

    :goto_1
    if-lt v4, v3, :cond_1

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, p1, 0x1

    :goto_2
    add-int v7, v3, v1

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    neg-int v7, v6

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iput v6, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto :goto_0

    :pswitch_2
    sub-int v7, p1, v3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v4, p1, -0x1

    :goto_3
    if-lt v4, v3, :cond_3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v7, v7, v4

    if-ne v7, v10, :cond_3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_3
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    neg-int v7, v2

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iput v2, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    goto/16 :goto_0

    :pswitch_3
    iput v9, v5, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;-><init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;Lcom/sec/android/touchwiz/widget/TwAnimatedListView$1;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    neg-int v1, p1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    neg-int v1, p3

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iput p4, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    iput p5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    :cond_1
    return-object v0
.end method

.method private getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
    .locals 5

    if-eqz p1, :cond_2

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startX:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaX:I

    iget v3, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->startY:I

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->deltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(I)V

    :goto_0
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorX:I

    iget v2, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaX:I

    iget v3, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    iget v4, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->move(IIII)V

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->delay:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->delay(I)V

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->createDrawingCache(Landroid/view/View;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->duration:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->start(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected addFlexibleView(Landroid/view/View;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected changeItemIndex(II)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v1, v4

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [J

    if-lez v2, :cond_3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    sub-int v4, v0, p1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v4, p2, p1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    sub-int v5, v0, p1

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v5, v5, p1

    aput-wide v5, v3, v4

    add-int/lit8 v0, p2, 0x1

    :goto_2
    if-gt v0, p1, :cond_4

    sub-int v4, v0, p2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_3
    if-gt v0, p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    sub-int v5, v0, p2

    aget-wide v5, v3, v5

    aput-wide v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawDeleteItem(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawInsertItem(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawKeepView(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawDeleteItem(Landroid/graphics/Canvas;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawInsertItem(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method protected drawChild2(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getFirstVisiblePosition()I

    move-result v5

    add-int v2, v1, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v2

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method protected drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 0

    return-void
.end method

.method protected drawKeepChild(Landroid/graphics/Canvas;ILandroid/view/View;J)Z
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->getRetainItemAnimation(I)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->getType()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    if-eqz v4, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->setPaint(Landroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {v1, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {v1, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->drawChildForAddtionalDepth(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method public getCustomItemDeleteDrawCallback()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-object v0
.end method

.method public getCustomItemInsertDrawCallback()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-object v0
.end method

.method public getDeleteAnimationDelay()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    return v0
.end method

.method public getDeleteAnimationDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    return v0
.end method

.method protected getFlexibleViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInsertAnimationDelay()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    return v0
.end method

.method public getInsertAnimationDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    return v0
.end method

.method public getItemAnimationDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    return v0
.end method

.method public getItemAnimationListener()Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-object v0
.end method

.method public getItemAnimationType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    return v0
.end method

.method public getTranslateAnimationDelay()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    return v0
.end method

.method public isAnimationDrawingCacheEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return v0
.end method

.method public isAnimationOnDataChangeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    return v0
.end method

.method public isDrawDeleteAnimationFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    return v0
.end method

.method public isDrawInsertAnimationFront()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 68

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevPosition:I

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwListView;->layoutChildren()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_57

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-nez v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    new-array v5, v0, [J

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    const/16 v37, 0x0

    :goto_0
    move/from16 v0, v37

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v37

    invoke-interface {v6, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    aput-wide v6, v5, v37

    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getFirstVisiblePosition()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildCount()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevPosition:I

    move/from16 v54, v0

    if-eqz v21, :cond_55

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v5, :cond_55

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    new-instance v57, Landroid/util/SparseArray;

    invoke-direct/range {v57 .. v57}, Landroid/util/SparseArray;-><init>()V

    new-instance v25, Landroid/util/SparseArray;

    invoke-direct/range {v25 .. v25}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    move/from16 v41, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->findItemOffsetPos()V

    sub-int v34, v33, v54

    move/from16 v37, v33

    :goto_1
    add-int v5, v33, v15

    move/from16 v0, v37

    if-ge v0, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getInsertAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    sub-int v48, v5, v34

    const/4 v9, 0x0

    if-lez v48, :cond_a

    if-nez v34, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_4

    move/from16 v66, v37

    :goto_3
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    :cond_3
    add-int/lit8 v66, v66, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    if-eqz v56, :cond_6

    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    :cond_5
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v37

    sub-int v60, v33, v5

    if-ltz v60, :cond_8

    move/from16 v0, v60

    if-ge v0, v15, :cond_8

    move/from16 v66, v33

    :goto_5
    move/from16 v0, v66

    move/from16 v1, v37

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    :cond_7
    add-int/lit8 v66, v66, 0x1

    goto :goto_5

    :cond_8
    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    if-lez v60, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v9, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v5, v5, v60

    sub-int/2addr v9, v5

    goto :goto_4

    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v9, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v5

    move/from16 v0, v60

    neg-int v6, v0

    mul-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_4

    :cond_a
    if-gez v48, :cond_5

    if-nez v34, :cond_10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_b
    :goto_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getLastVisiblePosition()I

    move-result v5

    move/from16 v0, v51

    if-gt v0, v5, :cond_b

    move/from16 v0, v51

    move/from16 v1, v37

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    if-eqz v59, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    sub-int v6, v37, v48

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v56

    if-eqz v56, :cond_d

    sub-int v5, v37, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    if-eqz v64, :cond_e

    if-eqz v65, :cond_e

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v9, v5

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_f
    :goto_7
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    move/from16 v0, v51

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    sub-int v5, v37, v48

    move/from16 v0, v51

    if-ge v0, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    if-eqz v59, :cond_f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_7

    :cond_10
    move/from16 v66, v37

    :goto_8
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    sub-int v6, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    :cond_11
    add-int/lit8 v66, v66, 0x1

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getRetainViewPositions()[Ljava/lang/Object;

    move-result-object v47

    if-eqz v47, :cond_23

    move-object/from16 v14, v47

    array-length v0, v14

    move/from16 v46, v0

    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_1b

    aget-object v43, v14, v38

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    const/16 v37, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-lt v0, v5, :cond_14

    :cond_13
    :goto_b
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v58

    if-le v5, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-le v5, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    if-eqz v59, :cond_13

    add-int v5, v33, v15

    move/from16 v0, v37

    if-lt v0, v5, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getHeight()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v9, v5, v6

    add-int v66, v33, v15

    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-ge v0, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_15

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v9, v5

    :cond_15
    add-int/lit8 v66, v66, 0x1

    goto :goto_c

    :cond_16
    if-eqz v9, :cond_13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_17
    move/from16 v0, v37

    move/from16 v1, v33

    if-ge v0, v1, :cond_13

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v9, v5

    move/from16 v66, v37

    :goto_d
    move/from16 v0, v66

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v6, v6, v66

    sub-int v6, v37, v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_18

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v9, v5

    :cond_18
    add-int/lit8 v66, v66, 0x1

    goto :goto_d

    :cond_19
    if-eqz v9, :cond_13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_1a
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_a

    :cond_1b
    if-eqz v34, :cond_23

    move-object/from16 v14, v47

    array-length v0, v14

    move/from16 v46, v0

    const/16 v38, 0x0

    :goto_e
    move/from16 v0, v38

    move/from16 v1, v46

    if-ge v0, v1, :cond_23

    aget-object v43, v14, v38

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    const/16 v31, 0x0

    move/from16 v37, v33

    :goto_f
    add-int v5, v33, v15

    move/from16 v0, v37

    if-lt v0, v5, :cond_1d

    :goto_10
    move/from16 v0, v58

    move/from16 v1, v33

    if-ge v0, v1, :cond_1c

    if-eqz v31, :cond_1f

    :cond_1c
    :goto_11
    add-int/lit8 v38, v38, 0x1

    goto :goto_e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v58

    if-le v5, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v37

    if-le v5, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v37

    cmp-long v5, v5, v7

    if-nez v5, :cond_1e

    const/16 v31, 0x1

    goto :goto_10

    :cond_1e
    add-int/lit8 v37, v37, 0x1

    goto :goto_f

    :cond_1f
    const/4 v9, 0x0

    move/from16 v66, v58

    :goto_12
    add-int v5, v33, v15

    move/from16 v0, v66

    if-ge v0, v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v66

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_21

    :cond_20
    :goto_13
    add-int/lit8 v66, v66, 0x1

    goto :goto_12

    :cond_21
    sub-int v5, v66, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    goto :goto_13

    :cond_22
    if-eqz v9, :cond_1c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getKeepAnimatedItemData(IIIII)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_11

    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :goto_14
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_27

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_29

    if-nez v34, :cond_28

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    if-eqz v5, :cond_25

    const-string v5, "TwAnimatedListView.ItemAnimation"

    const-string v6, "[stack bottom] no first position changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    const/16 v37, 0x0

    :goto_16
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_4f

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v20, :cond_26

    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_0

    :cond_26
    :goto_17
    add-int/lit8 v37, v37, 0x1

    goto :goto_16

    :cond_27
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Integer;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getDeleteAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_14

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->DEBUG_ANIMATION_FLAG:Z

    if-eqz v5, :cond_25

    const-string v5, "TwAnimatedListView.ItemAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stack bottom] first position changed as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_29
    if-nez v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v64

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    if-eqz v64, :cond_25

    if-eqz v65, :cond_25

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v49, v5, v6

    if-eqz v49, :cond_25

    move/from16 v44, v33

    :goto_18
    add-int v5, v33, v15

    move/from16 v0, v44

    if-ge v0, v5, :cond_2b

    const/4 v5, 0x0

    move/from16 v0, v44

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v20, :cond_2a

    :goto_19
    add-int/lit8 v44, v44, 0x1

    goto :goto_18

    :cond_2a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v5, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    :cond_2b
    const/16 v44, 0x0

    :goto_1a
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_25

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v23, :cond_2c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v5, :pswitch_data_1

    :cond_2c
    :goto_1b
    add-int/lit8 v44, v44, 0x1

    goto :goto_1a

    :pswitch_0
    move/from16 v0, v49

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_1b

    :cond_2d
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v55

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    if-eqz v55, :cond_2e

    if-eqz v17, :cond_2e

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v30, v5, v6

    :cond_2e
    move/from16 v67, v33

    :goto_1c
    add-int v5, v33, v15

    move/from16 v0, v67

    if-ge v0, v5, :cond_38

    if-nez v47, :cond_30

    :cond_2f
    :goto_1d
    add-int/lit8 v67, v67, 0x1

    goto :goto_1c

    :cond_30
    const/16 v35, 0x0

    move-object/from16 v14, v47

    array-length v0, v14

    move/from16 v46, v0

    const/16 v38, 0x0

    :goto_1e
    move/from16 v0, v38

    move/from16 v1, v46

    if-lt v0, v1, :cond_32

    :cond_31
    :goto_1f
    if-nez v35, :cond_2f

    const/16 v48, 0x0

    const/16 v66, 0x0

    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-lt v0, v5, :cond_34

    :goto_21
    if-eqz v48, :cond_2f

    move/from16 v0, v30

    neg-int v9, v0

    if-lez v48, :cond_36

    const/16 v44, 0x0

    :goto_22
    move/from16 v0, v48

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_37

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v9, v5

    add-int/lit8 v44, v44, 0x1

    goto :goto_22

    :cond_32
    aget-object v43, v14, v38

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v58

    if-le v5, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v67

    if-le v5, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v58

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_33

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    sub-int v5, v67, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v59, :cond_31

    if-eqz v18, :cond_31

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v61, v5, v6

    if-eqz v61, :cond_31

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-direct {v0, v5, v1, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v67

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1f

    :cond_33
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1e

    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v66

    if-le v5, v0, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    move/from16 v0, v67

    if-le v5, v0, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v67

    cmp-long v5, v5, v7

    if-nez v5, :cond_35

    sub-int v5, v67, v33

    sub-int v6, v66, v54

    sub-int v48, v5, v6

    goto/16 :goto_21

    :cond_35
    add-int/lit8 v66, v66, 0x1

    goto/16 :goto_20

    :cond_36
    const/16 v44, 0x0

    :goto_23
    move/from16 v0, v48

    neg-int v5, v0

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v44

    if-ge v0, v5, :cond_37

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwListView;->mDividerHeight:I

    add-int/lit8 v6, v15, -0x1

    sub-int v6, v6, v44

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v9, v5

    add-int/lit8 v44, v44, 0x1

    goto :goto_23

    :cond_37
    if-eqz v9, :cond_2f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v10}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getAnimatedItemData(III)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    move-result-object v5

    move/from16 v0, v67

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1d

    :cond_38
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_15

    :pswitch_1
    const/16 v19, 0x0

    :goto_24
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_3e

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-nez v20, :cond_3a

    :cond_39
    :goto_25
    add-int/lit8 v19, v19, 0x1

    goto :goto_24

    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    add-int/lit8 v11, v45, -0x1

    add-int/lit8 v32, v45, -0x1

    :goto_26
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_3b

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3b

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v32, v32, -0x1

    goto :goto_26

    :cond_3b
    if-eqz v59, :cond_39

    sub-int v5, v11, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/16 v53, 0x0

    move/from16 v50, v54

    :goto_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v50

    if-lt v0, v5, :cond_3c

    :goto_28
    if-eqz v12, :cond_39

    if-eqz v53, :cond_39

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v53 .. v53}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v48, v5, v6

    move/from16 v0, v48

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_25

    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v50

    if-le v5, v0, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    if-le v5, v11, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v50

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v53

    goto :goto_28

    :cond_3d
    add-int/lit8 v50, v50, 0x1

    goto :goto_27

    :cond_3e
    const/16 v19, 0x0

    :goto_29
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_25

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_40

    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v20, :cond_40

    if-lez v34, :cond_40

    sub-int v5, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_40

    add-int/lit8 v11, v45, -0x1

    add-int/lit8 v32, v45, -0x1

    :goto_2a
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3f

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v32, v32, -0x1

    goto :goto_2a

    :cond_3f
    move/from16 v0, v33

    if-ge v11, v0, :cond_41

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    :cond_40
    :goto_2b
    add-int/lit8 v19, v19, 0x1

    goto :goto_29

    :cond_41
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    const/4 v12, 0x0

    move/from16 v64, v54

    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-lt v0, v5, :cond_42

    :goto_2d
    if-eqz v12, :cond_40

    if-eqz v39, :cond_40

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    move/from16 v0, v29

    neg-int v5, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_2b

    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-le v5, v0, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    if-le v5, v11, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    goto :goto_2d

    :cond_43
    add-int/lit8 v64, v64, 0x1

    goto :goto_2c

    :pswitch_2
    const/16 v19, 0x0

    :goto_2e
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_48

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-nez v20, :cond_45

    :cond_44
    :goto_2f
    add-int/lit8 v19, v19, 0x1

    goto :goto_2e

    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v59

    if-eqz v59, :cond_44

    add-int/lit8 v11, v45, -0x1

    add-int/lit8 v32, v45, -0x1

    :goto_30
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_46

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_46

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v32, v32, -0x1

    goto :goto_30

    :cond_46
    move/from16 v0, v33

    if-ge v11, v0, :cond_47

    invoke-virtual/range {v59 .. v59}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_2f

    :cond_47
    sub-int v5, v11, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v26

    if-eqz v12, :cond_44

    if-eqz v26, :cond_44

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_2f

    :cond_48
    const/16 v19, 0x0

    :goto_31
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_25

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v45

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_4a

    :cond_49
    :goto_32
    add-int/lit8 v19, v19, 0x1

    goto :goto_31

    :cond_4a
    const/4 v5, 0x0

    move/from16 v0, v45

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v20, :cond_49

    if-lez v34, :cond_49

    sub-int v5, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_49

    add-int/lit8 v11, v45, -0x1

    add-int/lit8 v32, v45, -0x1

    :goto_33
    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    aget v5, v5, v32

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_4b

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v32, v32, -0x1

    goto :goto_33

    :cond_4b
    move/from16 v0, v33

    if-ge v11, v0, :cond_4c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_32

    :cond_4c
    add-int/lit8 v5, v11, 0x1

    sub-int v5, v5, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    const/4 v12, 0x0

    move/from16 v64, v54

    :goto_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-lt v0, v5, :cond_4d

    :goto_35
    if-eqz v12, :cond_49

    if-eqz v39, :cond_49

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v29, v5, v6

    move/from16 v0, v29

    neg-int v5, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorY:I

    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->anchorDeltaY:I

    goto :goto_32

    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    array-length v5, v5

    move/from16 v0, v64

    if-le v5, v0, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    array-length v5, v5

    if-le v5, v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    aget-wide v5, v5, v64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    aget-wide v7, v7, v11

    cmp-long v5, v5, v7

    if-nez v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v12

    goto :goto_35

    :cond_4e
    add-int/lit8 v64, v64, 0x1

    goto :goto_34

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto/16 :goto_17

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto/16 :goto_17

    :cond_4f
    const/16 v37, 0x0

    :goto_36
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_52

    move-object/from16 v0, v57

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    const/4 v5, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v20, :cond_50

    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_3

    :cond_50
    :goto_37
    add-int/lit8 v37, v37, 0x1

    goto :goto_36

    :pswitch_5
    move/from16 v0, v45

    move/from16 v1, v33

    if-ge v0, v1, :cond_51

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_37

    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    sub-int v6, v45, v33

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_37

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomInsertAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putRetainItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_37

    :cond_52
    const/16 v37, 0x0

    :goto_38
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_54

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;

    if-eqz v20, :cond_53

    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;->type:I

    packed-switch v5, :pswitch_data_4

    :cond_53
    :goto_39
    add-int/lit8 v37, v37, 0x1

    goto :goto_38

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getShouldRetainView(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v62

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getTranslateAnimation(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;JLandroid/view/View;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_39

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v45

    move-object/from16 v2, v20

    move-wide/from16 v3, v62

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->getCustomDeleteAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$AnimatedItemData;J)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;

    move-result-object v6

    move/from16 v0, v45

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->putDeleteItemAnimation(ILcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;)V

    goto :goto_39

    :cond_54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->start()V

    :cond_55
    :goto_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_56
    :goto_3b
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5a

    return-void

    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v5, :cond_58

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    :cond_58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-eqz v5, :cond_59

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    :cond_59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v5, :cond_55

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    goto :goto_3a

    :cond_5a
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/view/View;

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_56

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_3b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeFlexibleView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->removeViewInLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mFlexibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimator:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimator;->forceFinish()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mPrevIndex:[J

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCurIxdex:[J

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIndexOffset:[I

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAnimationAlpha(II)V
    .locals 1

    const/16 v0, 0xff

    if-lt p2, p1, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    :cond_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    :cond_1
    return-void
.end method

.method public setAnimationDrawingCacheEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mUseCache:Z

    return-void
.end method

.method public setAnimationMaxAlpha(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMinAlpha:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    :cond_0
    return-void
.end method

.method public setAnimationMinAlpha(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mMaxAlpha:I

    :cond_0
    return-void
.end method

.method public setAnimationOnDataChangeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwListView;->mShowAnimationOnDataChange:Z

    return-void
.end method

.method public setCustomItemDeleteDrawCallback(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    return-void
.end method

.method public setCustomItemInsertDrawCallback(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemInsertDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemInsertDrawCallback;

    return-void
.end method

.method public setDeleteAnimationDelay(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDelay:I

    :cond_0
    return-void
.end method

.method public setDeleteAnimationDuration(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDeleteDuration:I

    :cond_0
    return-void
.end method

.method public setDrawDeleteAnimationFront(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingDeleteView:Z

    return-void
.end method

.method public setDrawInsertAnimationFront(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mIsDrawingInsertView:Z

    return-void
.end method

.method public setInsertAnimationDelay(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDelay:I

    :cond_0
    return-void
.end method

.method public setInsertAnimationDuration(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mInsertDuration:I

    :cond_0
    return-void
.end method

.method public setItemAnimationDuration(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mDuration:I

    goto :goto_0
.end method

.method public setItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimationListener;

    return-void
.end method

.method public setItemAnimationType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mAnimationType:I

    :cond_0
    return-void
.end method

.method protected setLocalItemAnimationListener(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mLocalItemAnimationListener:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$LocalItemAnimationListener;

    return-void
.end method

.method public setTranslateAnimationDelay(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTranslateDelay:I

    :cond_0
    return-void
.end method
