.class Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;
.super Ljava/lang/Object;
.source "MultiTabPerspIntroUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->perspIntroAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->closeMenu()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroExitInProgress:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setisClickDisabled(Z)V

    sget-boolean v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

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

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getChromeViewListAdapter()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;->getCurrentControl()Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->isIncognito()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v13

    invoke-virtual {v13, v6, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->setCurrentTabById(ZI)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    const/4 v14, 0x1

    invoke-interface {v13, v9, v14}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->bottomBarExitAnimation(IZ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    new-instance v14, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;

    invoke-direct {v14}, Lcom/sec/android/app/sbrowser/multiwindow/Sinusoidalineaseout;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    sget v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

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

    new-instance v7, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;ZI)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mIntroLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    invoke-virtual {v13, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->exitintroset:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mTabBackground:Landroid/view/View;

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

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabAnimations()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;->exitTabMannagerAnimation()V

    sget-boolean v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v13}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

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

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v13, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

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

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v13, v13, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    check-cast v13, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils$2;->this$0:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;

    iget-object v14, v14, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;->mActivity:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

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
