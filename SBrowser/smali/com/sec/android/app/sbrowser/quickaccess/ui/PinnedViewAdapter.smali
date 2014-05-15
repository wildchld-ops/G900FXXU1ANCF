.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;
.source "PinnedViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private gridViewItem:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

.field private mPinTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getUrlDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "^www.*?\\."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "www."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "m."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private scaleImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 15

    if-eqz p2, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090164

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v5, v11

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090165

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v4, v11

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    int-to-float v11, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v7, v11, v12

    int-to-float v11, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v8, v11, v12

    int-to-float v11, v5

    const/high16 v12, 0x4000

    div-float v2, v11, v12

    int-to-float v11, v4

    const/high16 v12, 0x4000

    div-float v3, v11, v12

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v9, v7, v8, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float v11, v2, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float v12, v3, v12

    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090164

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090165

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateViewInfo(I)Landroid/view/View;
    .locals 13

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getMtitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmTouchIcon()[B

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;->getmDominantColor()I

    move-result v3

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->mostVisitedTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_2

    :cond_0
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_1
    new-instance v11, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$1;

    invoke-direct {v11, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->domainTextView:Landroid/widget/TextView;

    iget-object v5, v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->quickLaunchIcon:Landroid/widget/ImageView;

    iget-object v6, v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->mFrameIconHolder:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_3

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getUrlDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    :goto_1
    return-object v11

    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v11, -0x1

    if-ne v3, v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200fb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getUrlDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getUrlDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    const/4 v11, 0x0

    array-length v12, v4

    invoke-static {v4, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_6

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v11, 0xdc

    invoke-direct {p0, v5, v1, v11}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->scaleImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040060

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$1;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    const v2, 0x7f0a019e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->quickLaunchIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    const v2, 0x7f0a01a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->domainTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    const v2, 0x7f0a019f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->mostVisitedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    const v2, 0x7f0a01a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter$ViewHolder;->mFrameIconHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->updateViewInfo(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    return-object v1

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->gridViewItem:Landroid/view/View;

    goto :goto_0
.end method

.method public getmPinTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quickaccess/data/PinnedViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->set(Ljava/util/List;)V

    return-void
.end method

.method public setListBackToUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mLoadQuickAccessPhoneUi:Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/PinnedViewAdapter;->mPinTabList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/LoadQuickAccessPhoneUi;->setmPinTabList(Ljava/util/ArrayList;)V

    return-void
.end method
