.class public Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;
.super Ljava/lang/Object;
.source "TwAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;,
        Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static TRANSLATION_DURATION:I

.field private static sAccelDecel:Landroid/view/animation/Interpolator;

.field static final sBoundsEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sSineInOut70:Landroid/view/animation/Interpolator;

.field private static sStartScaleFactor:F


# instance fields
.field private mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mGhostViewSnapshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

.field mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->TAG:Ljava/lang/String;

    const/16 v0, 0x190

    sput v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->TRANSLATION_DURATION:I

    const v0, 0x3e99999a

    sput v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sStartScaleFactor:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sSineInOut70:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwGridView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setAddDeleteGridAnimator(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;ILjava/util/ArrayList;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()F
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sStartScaleFactor:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method static synthetic access$600()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->sSineInOut70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->TRANSLATION_DURATION:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;ILjava/util/ArrayList;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private ensureAdapterAndListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TwAddDeleteGridView requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private getNewPosition(ILjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    move v1, p1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method private getShiftCount(ILjava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    iget-object v2, v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->ensureAdapterAndListener()V

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v11

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v14

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int v2, v16, v14

    invoke-interface {v9, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    add-int v4, v16, v14

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;

    move-object/from16 v3, p0

    move v4, v14

    move v5, v11

    move-object v6, v9

    move-object v7, v13

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;IILandroid/widget/ListAdapter;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->ensureAdapterAndListener()V

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v12

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_0

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    add-int v3, v15, v13

    invoke-interface {v10, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v23, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    new-instance v3, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    add-int v5, v15, v13

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v17, v16, v20

    sub-int v3, v17, v13

    invoke-virtual {v14, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v10, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    return-void
.end method
