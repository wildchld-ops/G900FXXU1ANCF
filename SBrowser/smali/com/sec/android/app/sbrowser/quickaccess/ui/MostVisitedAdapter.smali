.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;
.source "MostVisitedAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickLaunchAdapter"


# instance fields
.field private gridView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mCount:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQuickLaunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
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
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/common/BaseQuickAccessGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateViewInfo(I)V
    .locals 11

    const v10, 0x7f0a019e

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v5, v7, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v6, v7, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;

    iget-object v2, v7, Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;->mThumbnail:[B

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    const v8, 0x7f0a019f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v2, :cond_4

    const/4 v7, 0x0

    :try_start_0
    array-length v8, v2

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    const v8, 0x7f0a019e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_2
    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v7, 0x7f0200f5

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04005e

    const/4 v2, 0x0

    if-nez p2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsQuickAccessViewPagerEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->updateViewInfo(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getIsNewQuickLaunch()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->gridView:Landroid/view/View;

    goto :goto_0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sbrowser/quicklaunch/model/QuickLaunchModel$MostVisitedItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->mQuickLaunchList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/MostVisitedAdapter;->set(Ljava/util/List;)V

    return-void
.end method

.method public setListBackToUi()V
    .locals 0

    return-void
.end method
