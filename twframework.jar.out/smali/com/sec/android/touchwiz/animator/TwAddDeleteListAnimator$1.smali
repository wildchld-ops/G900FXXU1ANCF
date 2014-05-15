.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$firstVisiblePosBefore:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$firstVisiblePosBefore:I

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$childCountBefore:I

    iput-object p5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static/range {v47 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v16

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getLastVisiblePosition()I

    move-result v25

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v19

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/16 v42, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v40, 0x0

    const/16 v26, 0x0

    const/16 v46, 0x0

    move/from16 v0, v19

    if-le v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getChildMaxHeight()I
    invoke-static/range {v47 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)I

    move-result v47

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v48

    add-int v40, v47, v48

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getLeft()I

    move-result v26

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getWidth()I

    move-result v46

    :goto_0
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$firstVisiblePosBefore:I

    move/from16 v47, v0

    sub-int v29, v47, v16

    move/from16 v30, v29

    add-int/lit8 v47, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$childCountBefore:I

    move/from16 v48, v0

    sub-int v48, v48, v10

    add-int v33, v47, v48

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v10, :cond_7

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    add-int v36, v21, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v23

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v45, 0x0

    const-wide/16 v47, -0x1

    cmp-long v47, v23, v47

    if-nez v47, :cond_3

    move/from16 v0, v36

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    add-int/lit8 v47, v36, 0x1

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v23, v0

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v47, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    :goto_3
    if-eqz v45, :cond_5

    invoke-virtual/range {v45 .. v45}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->recycleBitmap()V

    const/16 v28, 0x0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    cmpl-float v47, v47, v32

    if-nez v47, :cond_4

    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getWidth()I

    move-result v46

    goto/16 :goto_0

    :cond_2
    sub-int v47, v5, v18

    move/from16 v0, v36

    move/from16 v1, v47

    if-lt v0, v1, :cond_0

    add-int v47, v36, v18

    sub-int v47, v47, v5

    add-int/lit8 v17, v47, 0x1

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v23, v0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v47, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    goto :goto_3

    :cond_4
    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v42, v47, v32

    :goto_5
    move/from16 v0, v42

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    sget-object v50, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v51, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v49 .. v51}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v47

    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-lez v30, :cond_6

    if-eqz v28, :cond_6

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v39, v0

    add-int/lit8 v30, v30, -0x1

    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v47

    mul-int v48, v39, v40

    add-int v35, v47, v48

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v42, v47, v32

    goto :goto_5

    :cond_6
    sub-int v39, v33, v36

    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v43, 0x0

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/Map$Entry;

    invoke-interface/range {v34 .. v34}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v41, Landroid/graphics/Rect;

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v47, v0

    add-int v48, v26, v46

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->bottom:I

    move/from16 v49, v0

    move-object/from16 v0, v41

    move/from16 v1, v26

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->oldPosition:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;)I
    invoke-static/range {v47 .. v49}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;ILjava/util/ArrayList;)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->oldPosition:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v45

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->fadeout:Z

    sub-int v11, v31, v16

    if-ltz v11, :cond_8

    if-lt v11, v10, :cond_c

    :cond_8
    if-nez v10, :cond_b

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingTop()I

    move-result v47

    move/from16 v0, v47

    int-to-float v15, v0

    :goto_8
    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v42, v15, v47

    neg-int v0, v11

    move/from16 v47, v0

    mul-int v47, v47, v40

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v42, v42, v47

    :goto_9
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-direct {v12, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v47, 0x0

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v48, v0

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v22, :cond_9

    const/high16 v47, 0x3f80

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$400()F

    move-result v48

    sub-float v47, v47, v48

    const/high16 v48, 0x4000

    div-float v47, v47, v48

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    mul-float v47, v47, v48

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v47, 0x3f80

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$400()F

    move-result v48

    sub-float v47, v47, v48

    const/high16 v48, 0x4000

    div-float v47, v47, v48

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v48

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    mul-float v47, v47, v48

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v44, v0

    new-instance v13, Landroid/graphics/Rect;

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v47, v0

    add-int v47, v47, v20

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v48, v0

    add-int v48, v48, v44

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v49, v0

    sub-int v49, v49, v20

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    sub-int v50, v50, v44

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v13

    :cond_9
    const-string v47, "bounds"

    sget-object v48, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v41, v49, v50

    const/16 v50, 0x1

    aput-object v12, v49, v50

    invoke-static/range {v47 .. v49}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v37

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v37, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v43, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static/range {v47 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v43, 0x1

    :cond_a
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_b
    const/16 v47, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getTop()I

    move-result v47

    move/from16 v0, v47

    int-to-float v15, v0

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getTop()I

    move-result v47

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v42, v38, v47

    goto/16 :goto_9

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v47, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1$1;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;)V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$700()Landroid/view/animation/Interpolator;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$800()I

    move-result v47

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v47, v0

    move-wide/from16 v0, v47

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    const/16 v47, 0x1

    return v47
.end method
