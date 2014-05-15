.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownX:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAdjustedVelocityX([F)F
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1800()I

    move-result v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v1

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1800()I

    move-result v7

    rem-int/2addr v6, v7

    aget v4, p1, v6

    cmpl-float v6, v4, v5

    if-nez v6, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    int-to-float v6, v0

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    add-int/2addr v3, v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    int-to-float v5, v3

    div-float v5, v2, v5

    goto :goto_0
.end method

.method private onActionUp(Landroid/view/MotionEvent;Landroid/view/View;I)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float v22, v4, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    sub-float v12, v22, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->getAdjustedVelocityX([F)F

    move-result v10

    move/from16 v0, v21

    int-to-float v4, v0

    cmpl-float v4, v20, v4

    if-lez v4, :cond_0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    :cond_0
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    sub-int v19, v21, v4

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1500()I

    move-result v4

    mul-int v4, v4, v19

    int-to-float v4, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v14, v4

    const-wide/16 v4, 0x1c2

    cmp-long v4, v14, v4

    if-lez v4, :cond_1

    const-wide/16 v14, 0x1c2

    :cond_1
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v4

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float v9, v4, v5

    const/16 v16, 0x0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v16, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v9, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;ZLandroid/view/View;IF)V

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;Landroid/view/View;II)V

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->resetTouchState()V

    return-void

    :cond_4
    move/from16 v0, v21

    int-to-float v4, v0

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    cmpl-float v4, v13, v4

    if-lez v4, :cond_5

    const/high16 v4, 0x43e1

    const/high16 v5, 0x3f80

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v0, v21

    int-to-float v8, v0

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v14, v4

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v4

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float v9, v4, v5

    const/16 v16, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_5
    const/high16 v4, 0x43e1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v14, v4

    const/4 v9, 0x0

    const/high16 v16, 0x3f80

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private resetTouchState()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1202(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2200()I

    move-result v2

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1702(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v10

    if-ne v10, v5, :cond_0

    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v8, v9

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v10, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v8, v9}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1202(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    goto :goto_1

    :pswitch_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v8

    if-ne v2, v8, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float v7, v8, v10

    iget v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    sub-float v3, v7, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    sub-float v8, v7, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v8, 0x3f80

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v4, v10

    sub-float v1, v8, v10

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v3, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    invoke-interface {v8, v5, v6}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweep(IF)V

    :cond_5
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1500()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1708(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v10

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1800()I

    move-result v11

    rem-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    aput v11, v8, v10

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v8, v9}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I
    invoke-static {v8, v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1002(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v5, v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweepStart(IF)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #calls: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->showForeground(Landroid/view/View;)V
    invoke-static {v9, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)V

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->resetTouchState()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v10

    if-ne v2, v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    #getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, p2, p1, v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
