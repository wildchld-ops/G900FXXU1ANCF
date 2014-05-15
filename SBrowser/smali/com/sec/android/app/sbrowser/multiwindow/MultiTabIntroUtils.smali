.class public Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;
.super Ljava/lang/Object;
.source "MultiTabIntroUtils.java"


# instance fields
.field private NUM_OF_TABS:I

.field layout:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field mPresThumbnail:Landroid/graphics/Bitmap;

.field multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    return-void
.end method


# virtual methods
.method public animateTempImage()V
    .locals 21

    sget-boolean v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTITAB_SINGLE_ACTIVTY_ENABLED:Z

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmSuperView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :goto_1
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroAnimLayoutID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleIconViewID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabValid()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmTabInfos()Landroid/util/SparseBooleanArray;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTabTitleViewBackgroundID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoBackgroundID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getImageIncognitoTitleIconID()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->isCurrentTabValid()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->getCurrentTabFullBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_3

    :try_start_0
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f40

    mul-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_a

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmFirstCreated(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;->RecycleTabManagerFullBitmap()V

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    goto/16 :goto_2

    :cond_9
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    :cond_a
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

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

    if-eqz v17, :cond_10

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getTitleViewHeight()I

    move-result v18

    add-int v6, v17, v18

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmStatusBarHeight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_b
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewBottomMargin()I

    move-result v18

    sub-int v9, v17, v18

    :goto_7
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v10, 0x0

    :cond_c
    new-instance v2, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1, v10}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;-><init>(Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {v2, v9}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setMinHeight(I)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setMaxHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getmIntroSlideTopMargin()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setTopInit(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setTopLater(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setleftbefore(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLeftPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewLeftMargin()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setleftafter(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getMultiWindowScreenWidth()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setrightbefore(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLeftPadding()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewWidth()F

    move-result v18

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewLeftMargin()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setrightafter(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLeftPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewLeftMargin()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setleftafter(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getShadowViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getDistanceBetweenViews()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    move/from16 v19, v0

    div-int v18, v18, v19

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScrollYPos()I

    move-result v18

    sub-int v16, v17, v18

    :cond_d
    :goto_8
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setTopLater(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScreenOrientation()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    sget v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_LANDSCAPE_INTRO_ANIMATION_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setDuration(J)V

    :goto_9
    sget v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_INTRO_ANIMATION_DELAY:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setStartOffset(J)V

    new-instance v17, Lcom/sec/android/app/sbrowser/multiwindow/CubiceaseineaseoutIntro;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/CubiceaseineaseoutIntro;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setFillAfter(Z)V

    new-instance v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils$1;-><init>(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->setmFirstCreated(Z)V

    goto/16 :goto_1

    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_f
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_5

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewBottomMargin()I

    move-result v18

    sub-int v9, v17, v18

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    move/from16 v19, v0

    rem-int v18, v18, v19

    add-int/lit8 v18, v18, 0x1

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeVerticalViewGap()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    move/from16 v20, v0

    rem-int v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewLeftMargin()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setrightafter(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLeftPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeVerticalViewGap()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    move/from16 v20, v0

    rem-int v19, v19, v20

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getContentViewLeftMargin()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setleftafter(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeShadowViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getLandscapeViewGap()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmCurrentViewingTabIndex()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->NUM_OF_TABS:I

    move/from16 v19, v0

    div-int v18, v18, v19

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getFirstViewTopMargin()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getScrollYPos()I

    move-result v18

    sub-int v16, v17, v18

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setTopLater(I)V

    goto/16 :goto_8

    :cond_13
    sget v17, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabConstants;->MULTI_TAB_STACK_PORTRAIT_INTRO_ANIMATION_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroAnimation;->setDuration(J)V

    goto/16 :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;->getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;->getIntroTabThumbnailViewID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->multiwindow:Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mPresThumbnail:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->layout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/multiwindow/MultiTabIntroUtils;->mContext:Landroid/content/Context;

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
