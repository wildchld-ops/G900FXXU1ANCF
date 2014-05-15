.class public Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
.super Landroid/widget/LinearLayout;
.source "TwSoftkeyView.java"


# static fields
.field private static final DEFAULT_SOFTKEYITEM_PADDING_BOTTOM:F = 3.33f

.field private static final DEFAULT_SOFTKEYITEM_PADDING_SIDE:F = 3.33f

.field private static final DEFAULT_SOFTKEYITEM_PADDING_TOP:F = 10.0f

.field public static final DEFAULT_SOFTKEYVIEW_HEIGHT:F = 54.66f

.field public static final MAX_SOFTKEY_ITEM_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TwSoftkeyView"


# instance fields
.field private mChildLp:Landroid/widget/LinearLayout$LayoutParams;

.field private mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

.field private mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

.field private mScale:F

.field mSideMarginOneButton:F

.field mSideMarginTwoButton:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 12

    const v11, 0x40551eb8

    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v6, "sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "density :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", win w : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", win h : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v5, v4, :cond_0

    const v6, 0x42cea8f6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    :goto_0
    const v6, 0x202003a

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setBackgroundResource(I)V

    const v6, 0x425aa3d7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v3, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v6, v11

    add-float/2addr v6, v9

    float-to-int v1, v6

    const/high16 v6, 0x4120

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v2, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v6, v11

    add-float/2addr v6, v9

    float-to-int v0, v6

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setOrientation(I)V

    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setPadding(IIII)V

    const-string v6, "p1_sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "padding size : side : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , top : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , bottom : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "p1_sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backgroundHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setGravity(I)V

    return-void

    :cond_0
    const v6, 0x4374a8f6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    const v6, 0x4312a8f6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    goto/16 :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    const/high16 v10, 0x3f00

    const/16 v9, 0x11

    const/high16 v8, 0x3f80

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v4, "TwSoftkeyView"

    const-string v5, "onMeasure::W E L C O M E."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v1, :cond_2

    const v4, 0x42cea8f6

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    float-to-int v0, v4

    const-string v4, "p1_sjan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " fixed side margin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v0, v7, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_2
    const v4, 0x4374a8f6

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    const v4, 0x4312a8f6

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_4

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_5

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_5
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginTwoButton:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    float-to-int v0, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v0, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v7, v7, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mLeftChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mRightChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setEnableSoftkeyItem(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
