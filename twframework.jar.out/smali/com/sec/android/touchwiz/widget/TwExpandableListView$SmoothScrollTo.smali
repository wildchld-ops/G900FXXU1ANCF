.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmoothScrollTo"
.end annotation


# static fields
.field static final SCROLL_TO_ADJUST_BOTTOM:I = 0x0

.field static final SCROLL_TO_ADJUST_EXPAND:I = 0x1

.field static final SCROLL_TO_COLLAPSE_ALL:I = 0x3

.field static final SCROLL_TO_EXPAND_ALL:I = 0x2


# instance fields
.field count:I

.field mDuration:I

.field mFinishAnimation:Z

.field mOffset:I

.field mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

.field mScrollMode:I

.field mStartTime:J

.field moffsetMovedTillNow:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mStartTime:J

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSmoothScrollTo:Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public endScroll()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->cancel()V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TwExpandableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WRONG mScrollMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->expandGroup(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->requestLayout()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->requestLayout()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TwExpandableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something wrong in SCROLL_TO_EXPAND_ALL mFirstPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TwExpandableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something wrong in SCROLL_TO_COLLAPSE_ALL mFirstPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->animationStateData:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$AnimationStateData;->animationState:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->findVisibleGroups(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    return v0
.end method

.method public run()V
    .locals 7

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    mul-int/lit8 v5, v5, 0x1

    int-to-long v2, v5

    long-to-float v5, v2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->endScroll()V

    :goto_0
    return-void

    :cond_0
    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    sub-int v0, v5, v6

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollExpandableList(I)Z

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidate()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->endScroll()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$500()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    sub-int v0, v5, v6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->scrollExpandableList(I)Z

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidate()V

    goto :goto_1
.end method

.method public start(IILcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->cancel()V

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mOffset:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->count:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->moffsetMovedTillNow:I

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mFinishAnimation:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mStartTime:J

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mScrollMode:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->setAnimationState(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->DEBUG_TW_EXP_LIST:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TwExpandableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***********SmoothScrollTo start end list first pos is************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mPosMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->requestLayout()V

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$SmoothScrollTo;->mDuration:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
