.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"


# instance fields
.field ThumbnailXtranslate:F

.field ThumbnailYscale:F

.field ThumbnailYtranslate:F

.field exitintroset:Landroid/animation/AnimatorSet;

.field isSpenMode:Z

.field mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

.field mContext:Landroid/content/Context;

.field mFullScreenBitmap:Landroid/graphics/Bitmap;

.field mIntroExitInProgress:Z

.field mIntroLayout:Landroid/widget/LinearLayout;

.field mLoadCurrentThumbnailHandler:Landroid/os/Handler;

.field mNextTabId:I

.field mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field mTabBackground:Landroid/view/View;

.field mXScaleLandscape:F

.field mXScalePortrait:F

.field mXTranslate:F

.field mYRotationAngle:F

.field mYScale:F

.field mYTranslate:F

.field removeOldImageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mFullScreenBitmap:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mNextTabId:I

    const v0, 0x3f666666

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXScalePortrait:F

    const v0, 0x3f59999a

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXScaleLandscape:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mYScale:F

    const v0, 0x3f733333

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYscale:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailXtranslate:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYtranslate:F

    iput v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mYTranslate:F

    const/high16 v0, 0x4220

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXTranslate:F

    const/high16 v0, 0x40e0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mYRotationAngle:F

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroExitInProgress:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->isSpenMode:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->perspIntroAnim(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->getByteArrayForDeletion()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->setNextTabId(I)V

    return-void
.end method

.method private getByteArrayForDeletion()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$6;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mNextTabId:I

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadByteDuringDeletion(ILandroid/os/Handler;)V

    return-void
.end method

.method private perspIntroAnim(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const/4 v7, 0x1

    :goto_0
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->iseasymode()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmStatusBarHeight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f80

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXScalePortrait:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mYTranslate:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXScaleLandscape:F

    const/high16 v15, 0x41a0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mYRotationAngle:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXTranslate:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mYScale:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v13, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v17, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    sget v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_2
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    const/16 v18, 0x2

    aput-object v4, v17, v18

    const/16 v18, 0x3

    aput-object v3, v17, v18

    const/16 v18, 0x4

    aput-object v2, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v9, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$3;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V

    invoke-virtual {v10, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYscale:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailXtranslate:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v17, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    sget-boolean v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/high16 v18, 0x3f80

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0x64

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    return-void

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYscale:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailXtranslate:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYtranslate:F

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v17, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v14, v17, v18

    const/16 v18, 0x2

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/high16 v18, 0x3f80

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0x64

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    :cond_7
    sget-boolean v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/high16 v18, 0x3f80

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/high16 v18, 0x3f80

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2
.end method

.method private setNextTabId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mNextTabId:I

    return-void
.end method


# virtual methods
.method IsIntroExitInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroExitInProgress:Z

    return v0
.end method

.method public animateTempImage(I)V
    .locals 21

    const-string v4, "animateTempImage"

    const-string v5, "animateTempImage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->showHidePerspImageView(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackground()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMthumbnailxtranslate()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mXTranslate:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMperspectiveBitmapxtranslate()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailXtranslate:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMperspectiveBitmapYtranslate()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYtranslate:F

    const v4, 0x3f70a3d7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->ThumbnailYscale:F

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabValid()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabFullBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getmCurrentTabBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_8

    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->isSPenMode()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getFullScreenSetting()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v15, v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mSMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v4

    sub-int v4, v15, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntrolayoutBottomclippingHeight()I

    move-result v5

    sub-int v15, v4, v5

    :cond_5
    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage screen width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage screen height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage ORIENTATION_LANDSCAPE tabBitmap.getWidth() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage ORIENTATION_LANDSCAPE tabBitmap.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v15, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v4, v15, :cond_c

    const/4 v10, 0x0

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v17, v4, v5

    int-to-float v4, v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v18, v4, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v10

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->invalidate()V

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mFullScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mFullScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    const-string v4, "animateTempImage"

    const-string v5, "mFullScreenBitmap bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mFullScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    const-string v4, "animateTempImage"

    const-string v5, "setting mFullScreenBitmap to intro_tab_view"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mFullScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->perspIntroAnim(I)V

    :goto_5
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiwindowToolBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntrolayoutBottomclippingHeight()I

    move-result v5

    sub-int v15, v4, v5

    goto/16 :goto_1

    :cond_c
    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage ORIENTATION_PORTRAIT tabBitmap.getWidth() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage ORIENTATION_PORTRAIT tabBitmap.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->iseasymode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v4, v15, :cond_7

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    :catch_1
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_4

    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isMostVisitedorDaumURL(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "MultiTabPerspIntroUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTempImage tabBitmap.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v4, v15, :cond_7

    const/4 v10, 0x0

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v17, v4, v5

    int-to-float v4, v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v18, v4, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v10

    goto/16 :goto_3

    :catch_2
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_4

    :cond_f
    new-instance v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;Landroid/widget/ImageView;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    new-instance v14, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    invoke-direct {v14, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v5

    invoke-virtual {v4, v14, v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    goto/16 :goto_5

    :cond_10
    const-string v4, "animateTempImage"

    const-string v5, "current tab is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->perspIntroAnim(I)V

    goto/16 :goto_5
.end method

.method delAnimation(F)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v6, v5, v7

    aput p1, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v3, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_PERSPECTIVE_FULL_BITMAP_DELETE_ANIMATION_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$7;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;F)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public destroy(ZI)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    :cond_2
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeOldImageHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public exitTabManagerAnimation()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabBackground()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->finishActivty()V

    goto :goto_0

    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroExitInProgress:Z

    sget-boolean v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v14, 0x1

    invoke-interface {v13, v9, v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->bottomBarExitAnimation(IZ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13, v6, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentTabById(ZI)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v14}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    sget v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    const/4 v14, 0x5

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/4 v15, 0x2

    aput-object v3, v14, v15

    const/4 v15, 0x3

    aput-object v4, v14, v15

    const/4 v15, 0x4

    aput-object v5, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$8;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;ZI)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v13, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v13}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v13, v13

    invoke-virtual {v8, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v13, 0x3

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    const/4 v14, 0x2

    aput-object v12, v13, v14

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabAnimations()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->exitTabMannagerAnimation()V

    sget-boolean v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v13, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getAddNewTabButtonLayoutID()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v13, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowFrameID()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method

.method public getIntroLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPerspTabId()I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method isSPenMode()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->isInSpenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->isSpenMode:Z

    const-string v0, "MultiTabPerspIntroUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->isSpenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->isSpenMode:Z

    return v0
.end method

.method removeTempimage(Lcom/sec/android/app/sbrowser/common/TabData;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabValid()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Crashh"

    const-string v2, " current tab is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getNextTabIfClosed(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Crashh"

    const-string v2, " next tab to current tab is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$4;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$4;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeOldImageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mLoadCurrentThumbnailHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeOldImageHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeOldImageHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->loadBitmapDuringDeletion(Lcom/sec/android/app/sbrowser/common/TabData;Landroid/os/Handler;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->runAnimation(Z)V

    goto :goto_0
.end method

.method runAnimation(Z)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public updatePerspBitmap(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabValid()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$5;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;Landroid/widget/ImageView;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeOldImageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->removeOldImageHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mRemoveOldImageWeakReferenceHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setFullScreenBitmap(Ljava/lang/ref/WeakReference;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->runAnimation(Z)V

    goto :goto_0
.end method

.method public updatePerspTabId()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
