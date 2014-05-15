.class public Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;,
        Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;
    }
.end annotation


# static fields
.field private static SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field private static START_SCALE_FACTOR:F

.field private static TAG:Ljava/lang/String;

.field private static TRANSLATION_DURATION:I

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


# instance fields
.field private mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mGhostViewSnapshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;

    const/16 v0, 0x190

    sput v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TRANSLATION_DURATION:I

    const v0, 0x3e99999a

    sput v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->START_SCALE_FACTOR:F

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->sBoundsEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAddDeleteListAnimator(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getChildMaxHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;ILjava/util/ArrayList;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;ILjava/util/ArrayList;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()F
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->START_SCALE_FACTOR:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method static synthetic access$700()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TRANSLATION_DURATION:I

    return v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private ensureAdapterAndListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

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

    const-string v2, "TwAddDeleteListAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

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

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private getChildMaxHeight()I
    .locals 8

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    add-int v6, v5, v3

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v7

    if-lt v6, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v7

    sub-int v7, v0, v7

    if-lt v6, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v4, v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_2
    return v2
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

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    iget-object v2, v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .locals 27
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

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->ensureAdapterAndListener()V

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v9

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v8

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v16

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v15

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v0, v9, :cond_3

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    add-int v21, v17, v8

    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    const-wide/16 v5, -0x1

    cmp-long v5, v18, v5

    if-nez v5, :cond_2

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    add-int/lit8 v5, v21, 0x1

    int-to-long v0, v5

    move-wide/from16 v18, v0

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v22, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v23

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v24

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;III)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_1
    sub-int v5, v12, v15

    move/from16 v0, v21

    if-lt v0, v5, :cond_0

    add-int v5, v21, v15

    sub-int/2addr v5, v12

    add-int/lit8 v14, v5, 0x1

    neg-int v5, v14

    int-to-long v0, v5

    move-wide/from16 v18, v0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v22, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v23

    add-int v24, v17, v8

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v25

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;III)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v5}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v22

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 29
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

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->ensureAdapterAndListener()V

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v8

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_2

    add-int v20, v12, v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    const-wide/16 v23, -0x1

    cmp-long v23, v16, v23

    if-nez v23, :cond_1

    sub-int v23, v6, v11

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    add-int v23, v20, v11

    sub-int v23, v23, v6

    add-int/lit8 v10, v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v23, v0

    int-to-long v0, v10

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    new-instance v25, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v26

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v27

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;III)V

    invoke-virtual/range {v23 .. v25}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v23, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    new-instance v25, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v26

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v27

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;III)V

    invoke-virtual/range {v23 .. v25}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    const/16 v18, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int v15, v13, v18

    sub-int v23, v15, v9

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v23

    new-instance v24, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v5, v2, v14}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    return-void
.end method
