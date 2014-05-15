.class Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;
.super Ljava/lang/Object;
.source "TwAddDeleteGridAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->setInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPositions:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$insertedItemPositions:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static/range {v39 .. v39}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v10

    const/16 v33, 0x0

    const/16 v34, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v23

    const/16 v31, 0x0

    move/from16 v0, v23

    if-le v10, v0, :cond_0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v39

    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v40

    sub-int v31, v39, v40

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-ge v15, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v39, v0

    add-int v40, v15, v13

    invoke-interface/range {v39 .. v40}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v39, v0

    add-int v40, v15, v13

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [F

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v39, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    if-eqz v37, :cond_2

    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    cmpl-float v39, v39, v21

    if-nez v39, :cond_1

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    cmpl-float v39, v39, v22

    if-nez v39, :cond_1

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v37

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v33, v39, v21

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v34, v39, v22

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v43, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v43, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, v39

    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v32, :cond_3

    const/16 v39, 0x0

    aget v39, v32, v39

    sub-float v33, v39, v21

    const/16 v39, 0x1

    aget v39, v32, v39

    sub-float v34, v39, v22

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$300()F

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$300()F

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v9, v0}, Landroid/view/View;->setScaleY(F)V

    const/16 v39, 0x5

    move/from16 v0, v39

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v43, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v43, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v43, 0x3f80

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/high16 v43, 0x3f80

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v43, 0x3f80

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, v39

    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    add-int v11, v15, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$insertedItemPositions:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getShiftCount(ILjava/util/ArrayList;)I
    invoke-static {v0, v11, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$800(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;ILjava/util/ArrayList;)I

    move-result v30

    sub-int v24, v11, v30

    div-int v25, v24, v23

    div-int v19, v11, v23

    sub-int v29, v19, v25

    rem-int v39, v24, v23

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v27

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v39

    mul-int v40, v29, v31

    sub-int v28, v39, v40

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v33, v39, v21

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v34, v39, v22

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v43, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v41, v0

    sget-object v42, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v43, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v41 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, v39

    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getLastVisiblePosition()I

    move-result v18

    move/from16 v11, v18

    const/16 v35, 0x0

    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->val$insertedItemPositions:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/Map$Entry;

    invoke-interface/range {v36 .. v36}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->oldPosition:I

    move/from16 v39, v0

    div-int v25, v39, v23

    div-int v19, v11, v23

    sub-int v29, v19, v25

    rem-int v39, v11, v23

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v39, v0

    mul-int v40, v29, v31

    add-int v39, v39, v40

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v22, v0

    new-instance v26, Landroid/graphics/Rect;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->left:I

    move/from16 v39, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->right:I

    move/from16 v41, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->bottom:I

    move/from16 v42, v0

    move-object/from16 v0, v26

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    add-float v41, v41, v21

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v42, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int v42, v42, v43

    move-object/from16 v0, v20

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v39, v0

    const-string v40, "bounds"

    sget-object v41, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v26, v42, v43

    const/16 v43, 0x1

    aput-object v20, v42, v43

    invoke-static/range {v39 .. v42}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v35, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static/range {v39 .. v39}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$400(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v35, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$600()Landroid/view/animation/Interpolator;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v39, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;)V

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$700()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    move-wide/from16 v0, v39

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    const/16 v39, 0x1

    return v39
.end method
