.class public Lcom/sec/android/app/sbrowser/SbrowserParent;
.super Landroid/widget/FrameLayout;
.source "SbrowserParent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateBottomBarVisibilityOnSIP()Z
    .locals 14

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v12, 0x7f0a0003

    invoke-virtual {v11, v12}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    const v12, 0x7f0a0007

    invoke-virtual {v11, v12}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getController()Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->getmToolBarUITranslations()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;

    move-result-object v5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SbrowserParent;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController;->getWindowMode()I

    move-result v11

    if-nez v11, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget v11, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v10

    if-le v2, v11, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getMainActivityStatus()Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;->PAUSED:Lcom/sec/android/app/sbrowser/SBrowserMainActivity$SBrowserMainActivityStatus;

    if-eq v11, v12, :cond_0

    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->checkUtilityConditionsForHideUrl()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_1
    :goto_1
    return v9

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isHideToolBarCalled()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09001a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_2
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090019

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_5
    iget v11, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v10

    if-gt v2, v11, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->isFindTextToolbarShowing()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const/4 v9, 0x1

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/mainactivity/ui/MainActivityPhoneUi;->checkUtilityConditionsForHideUrl()Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09001a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/SbrowserParent;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090019

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->isHideToolBarCalled()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;->setTranslationForInfoBarIfAny()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->mAppSideHideURLBarFeatureSIP:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SbrowserParent;->updateBottomBarVisibilityOnSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Name"

    const-string v1, "Before Measure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const-string v0, "Name"

    const-string v1, "After Measure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
