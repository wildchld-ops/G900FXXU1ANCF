.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->registerSmartScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 11

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v8, v8, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSmartScrollSettingOn:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v8, v8, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverrideSmartScroll:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p1, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v8, v9, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    if-lez v4, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I
    invoke-static {v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-gt v8, v9, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v10, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_6

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v8, v8, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v8, :cond_7

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_4

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_8

    const/4 v1, 0x1

    :cond_4
    :goto_4
    const/4 v8, -0x1

    if-gt v7, v8, :cond_9

    if-eqz v1, :cond_9

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/16 v9, -0x28

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v9, 0x0

    #setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6702(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)Z

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    const/4 v8, 0x1

    if-lt v7, v8, :cond_a

    if-eqz v2, :cond_a

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/16 v9, 0x28

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v8, 0x1

    if-ne v6, v8, :cond_e

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #calls: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v8

    if-nez v8, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_0

    if-gez v7, :cond_f

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    const v9, 0x3ecccccd

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    :cond_c
    :goto_6
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_d
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postInvalidate()V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    if-lez v7, :cond_c

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    const v9, 0x3ecccccd

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_6
.end method
