.class public Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickLaunchAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickLaunchAdapter"


# instance fields
.field private gridView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPinnedImageClickListener:Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;

.field private mQuickLaunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mPinnedImageClickListener:Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mPinnedImageClickListener:Lcom/sec/android/app/sbrowser/quickaccess/common/PinnedImageClickListener;

    return-object v0
.end method

.method private updateViewInfo(I)V
    .locals 12

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getSearchUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v0, "Google"

    const/4 v10, 0x2

    new-array v7, v10, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const v11, 0x7f0200f7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const v11, 0x7f0200f6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->getFavIcon()[B

    move-result-object v3

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchHolder;->ismIsMostVisited()Z

    move-result v4

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    const v11, 0x7f0a019f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    :cond_0
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    const-string v10, "Google"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    const v11, 0x7f0a019e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    const v11, 0x7f0a019e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const/4 v10, 0x0

    :try_start_0
    array-length v11, v3

    invoke-static {v3, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    const v11, 0x7f0a019e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    const v11, 0x7f0a019e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v10, 0x7f0200f5

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v2, 0x7f04005e

    const/4 v3, 0x0

    if-nez p2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->updateViewInfo(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    const v2, 0x7f0a019b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$3;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter$4;-><init>(Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    goto/16 :goto_0

    :cond_6
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quicklaunch/ui/QuickLaunchAdapter;->gridView:Landroid/view/View;

    goto/16 :goto_0
.end method
