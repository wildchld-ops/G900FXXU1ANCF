.class public Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReorderBookmarksPhoneUiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksUi;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    check-cast p1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;)Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObjectsize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObjectsize()I

    move-result v0

    if-gt v0, p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v10, p1}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getReorderObject(I)Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getDisplayMode()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;->LIST_VIEW:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$ShowMode;

    if-ne v10, v11, :cond_5

    const v10, 0x7f04001b

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v10, 0x7f0a00c3

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v10, 0x7f0a00c4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090107

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v10, 0x3f80

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v10, v11, :cond_1

    const v10, 0x7f0200d8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09007e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v11, v11, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09026a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09007f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900e0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setWidth(I)V

    :goto_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getRootObject()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    const v10, 0x7f0c01d3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-object v7

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const v10, 0x3ecccccd

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    const v10, 0x3ecccccd

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isFaviconAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_4
    const v10, 0x7f02001c

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900ae

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090080

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v11, v11, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09026a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090081

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_2
    const v10, 0x7f020014

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_3
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900e1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x0

    if-nez p2, :cond_6

    const v10, 0x7f040076

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;Landroid/view/View;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_5
    if-nez v5, :cond_7

    new-instance v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mReorderBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/ReorderBookmarksUiController;->getRootObject()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->id()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f0c01d3

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    :goto_6
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->type()Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;->FOLDER:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkConstants$Type;

    if-ne v10, v11, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x7f0201d7

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->access$100(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$1;

    invoke-direct {v11, p0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->editable()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090105

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v10

    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_8
    move-object/from16 v7, p2

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->title()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->isThumbnailAvailable()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/BookmarkObject;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x7f0201d6

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter;->mUi:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;

    iget-object v12, v12, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090106

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x3ecccccd

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ReorderBookmarksPhoneUiAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const v11, 0x3ecccccd

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8
.end method
