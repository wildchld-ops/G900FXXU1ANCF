.class Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;
.super Ljava/lang/Object;
.source "TwAddDeleteGridAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->setDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$firstVisiblePosBefore:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;IILandroid/widget/ListAdapter;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$firstVisiblePosBefore:I

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$childCountBefore:I

    iput-object p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static/range {v50 .. v50}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v15

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getLastVisiblePosition()I

    move-result v22

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v32

    const/16 v43, -0x1

    move/from16 v0, v32

    if-le v9, v0, :cond_0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getTop()I

    move-result v50

    const/16 v51, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/view/View;->getTop()I

    move-result v51

    sub-int v43, v50, v51

    :cond_0
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$firstVisiblePosBefore:I

    move/from16 v50, v0

    sub-int v24, v50, v15

    move/from16 v25, v24

    add-int/lit8 v50, v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$childCountBefore:I

    move/from16 v51, v0

    sub-int v51, v51, v9

    add-int v30, v50, v51

    const/16 v18, 0x0

    move/from16 v31, v30

    :goto_0
    move/from16 v0, v18

    if-ge v0, v9, :cond_5

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v50, v0

    add-int v51, v18, v15

    invoke-interface/range {v50 .. v51}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v50, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    if-eqz v49, :cond_2

    const/16 v23, 0x0

    invoke-virtual/range {v49 .. v49}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    cmpl-float v50, v50, v28

    if-nez v50, :cond_1

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    cmpl-float v50, v50, v29

    if-nez v50, :cond_1

    move/from16 v30, v31

    :goto_1
    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v30

    goto :goto_0

    :cond_1
    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v45, v50, v28

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v46, v50, v29

    move/from16 v30, v31

    :goto_2
    move/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v52, v0

    sget-object v53, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v54, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v52 .. v54}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v52

    aput-object v52, v50, v51

    const/16 v51, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v52, v0

    sget-object v53, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v54, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v52 .. v54}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v52

    aput-object v52, v50, v51

    move-object/from16 v0, v50

    invoke-static {v8, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v10, v18, v15

    const/16 v34, -0x1

    if-lez v25, :cond_4

    if-eqz v23, :cond_4

    sub-int v34, v10, v24

    add-int/lit8 v25, v25, -0x1

    move/from16 v30, v31

    :goto_3
    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->floor(D)D

    move-result-wide v50

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v33, v0

    div-int v26, v10, v32

    sub-int v42, v33, v26

    rem-int v39, v34, v32

    if-gez v39, :cond_3

    add-int v39, v39, v32

    :cond_3
    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getLeft()I

    move-result v36

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v50

    mul-int v51, v42, v43

    add-int v37, v50, v51

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v45, v50, v28

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v46, v50, v29

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v30, v31, 0x1

    move/from16 v34, v31

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v47, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map$Entry;

    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v44, Landroid/graphics/Rect;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v50, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v51, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->right:I

    move/from16 v52, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->bottom:I

    move/from16 v53, v0

    move-object/from16 v0, v44

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    move/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->oldPosition:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getNewPosition(ILjava/util/ArrayList;)I
    invoke-static/range {v50 .. v52}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;ILjava/util/ArrayList;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->oldPosition:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v49

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->fadeout:Z

    sub-int v11, v27, v15

    const/16 v40, 0x0

    const/16 v41, 0x0

    if-ltz v11, :cond_6

    if-lt v11, v9, :cond_a

    :cond_6
    rem-int v50, v27, v32

    move/from16 v0, v50

    if-le v9, v0, :cond_9

    rem-int v50, v27, v32

    move-object/from16 v0, v16

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getLeft()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v40, v0

    :goto_5
    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    div-int v50, v50, v32

    div-int v51, v27, v32

    sub-int v42, v50, v51

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v50, v0

    mul-int v51, v42, v43

    sub-int v50, v50, v51

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v41, v0

    :goto_6
    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v45, v40, v50

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v50, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v46, v41, v50

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, v44

    invoke-direct {v12, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v19, :cond_7

    const/high16 v50, 0x3f80

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$300()F

    move-result v51

    sub-float v50, v50, v51

    const/high16 v51, 0x4000

    div-float v50, v50, v51

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v50, v50, v51

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v17, v0

    const/high16 v50, 0x3f80

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$300()F

    move-result v51

    sub-float v50, v50, v51

    const/high16 v51, 0x4000

    div-float v50, v50, v51

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v50, v50, v51

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v48, v0

    new-instance v13, Landroid/graphics/Rect;

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    add-int v50, v50, v17

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    add-int v51, v51, v48

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    sub-int v52, v52, v17

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    sub-int v53, v53, v48

    move/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v13

    :cond_7
    const-string v50, "bounds"

    sget-object v51, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v44, v52, v53

    const/16 v53, 0x1

    aput-object v12, v52, v53

    invoke-static/range {v50 .. v52}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v38, v51, v52

    invoke-static/range {v50 .. v51}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-nez v47, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static/range {v50 .. v50}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v47, 0x1

    :cond_8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getPaddingLeft()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v40, v0

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getLeft()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getTop()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v41, v0

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v50, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1$1;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;)V

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$600()Landroid/view/animation/Interpolator;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$700()I

    move-result v50

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    const/16 v50, 0x1

    return v50
.end method
