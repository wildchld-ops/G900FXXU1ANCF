.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$insertedItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static/range {v42 .. v42}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v14

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v19

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/16 v36, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v34, 0x0

    const/16 v24, 0x0

    const/16 v41, 0x0

    move/from16 v0, v19

    if-le v11, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getChildMaxHeight()I
    invoke-static/range {v42 .. v42}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)I

    move-result v42

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v43

    add-int v34, v42, v43

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLeft()I

    move-result v24

    const/16 v42, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getWidth()I

    move-result v41

    :goto_0
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v0, v11, :cond_7

    add-int v31, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v21

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v39, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v27, v0

    const-wide/16 v42, -0x1

    cmp-long v42, v21, v42

    if-nez v42, :cond_4

    add-int v42, v31, v17

    sub-int v42, v42, v5

    add-int/lit8 v42, v42, 0x1

    move/from16 v0, v42

    int-to-long v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v42, v0

    neg-long v0, v15

    move-wide/from16 v43, v0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    if-nez v39, :cond_2

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$900()Ljava/lang/String;

    move-result-object v42

    const-string v43, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getWidth()I

    move-result v41

    goto :goto_0

    :cond_2
    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v42, v42, v27

    if-nez v42, :cond_3

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$900()Ljava/lang/String;

    move-result-object v42

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", newY="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    sub-float v36, v42, v27

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v46, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v42, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    if-eqz v39, :cond_5

    invoke-virtual/range {v39 .. v39}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v42, v42, v27

    if-eqz v42, :cond_0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    sub-float v36, v42, v27

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v46, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    if-eqz v35, :cond_6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    sub-float v36, v42, v27

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$400()F

    move-result v42

    move/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$400()F

    move-result v42

    move/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleY(F)V

    const/16 v42, 0x4

    move/from16 v0, v42

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v46, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v46, 0x3f80

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/high16 v46, 0x3f80

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v46, 0x3f80

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    add-int v12, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;)I
    invoke-static {v0, v12, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$1000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;ILjava/util/ArrayList;)I

    move-result v33

    sub-int v28, v12, v33

    sub-int v32, v12, v28

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v42

    mul-int v43, v32, v34

    sub-int v30, v42, v43

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v42, v0

    sub-float v36, v42, v27

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v44, v0

    sget-object v45, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v46, 0x0

    #calls: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    invoke-static/range {v44 .. v46}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, v42

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getLastVisiblePosition()I

    move-result v23

    const/16 v37, 0x0

    move/from16 v12, v23

    :cond_8
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_9

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/Map$Entry;

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->oldPosition:I

    move/from16 v42, v0

    sub-int v32, v12, v42

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    mul-int v43, v32, v34

    add-int v27, v42, v43

    new-instance v29, Landroid/graphics/Rect;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    add-int v43, v24, v41

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->bottom:I

    move/from16 v44, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v42

    add-int v42, v42, v24

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int v43, v43, v27

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v42, v0

    const-string v43, "bounds"

    sget-object v44, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v29, v45, v46

    const/16 v46, 0x1

    aput-object v26, v45, v46

    invoke-static/range {v42 .. v45}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v37, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static/range {v42 .. v42}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v37, 0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/Map$Entry;

    invoke-interface/range {v38 .. v38}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    mul-int v43, v43, v34

    add-int v27, v42, v43

    new-instance v29, Landroid/graphics/Rect;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->top:I

    move/from16 v42, v0

    add-int v43, v24, v41

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->bottom:I

    move/from16 v44, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v42

    add-int v42, v42, v24

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int v43, v43, v27

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v42, v0

    const-string v43, "bounds"

    sget-object v44, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v29, v45, v46

    const/16 v46, 0x1

    aput-object v26, v45, v46

    invoke-static/range {v42 .. v45}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    if-nez v37, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    #getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static/range {v42 .. v42}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_a
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$700()Landroid/view/animation/Interpolator;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v42, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3$1;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;)V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$800()I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    const/16 v42, 0x1

    return v42
.end method
