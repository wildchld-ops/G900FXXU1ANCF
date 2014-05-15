.class public Lcom/sec/android/app/sbrowser/history/XLargeExpandListAdapter;
.super Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;
.source "XLargeExpandListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;)V

    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryController:Lcom/sec/android/app/sbrowser/history/controller/HistoryController;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/history/controller/HistoryController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, p1

    if-ge v3, v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/history/XLargeExpandListAdapter;->getChildrenCount(I)I

    move-result v14

    add-int/2addr v12, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int v6, p2, v12

    const-string v10, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v10, v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-boolean v4, v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsBookmarked:Z

    :cond_1
    move-object v13, v10

    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    instance-of v14, v0, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    if-nez v14, :cond_6

    :cond_2
    new-instance v5, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v14, v4}, Lcom/sec/android/app/sbrowser/history/HistoryItem;-><init>(Landroid/content/Context;Z)V

    :goto_1
    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setIsBookmark(Z)V

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v11, v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v14, v13}, Lorg/samsung/chrome/browser/SbrFaviconController;->IsFaviconAvailable(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v14, v13}, Lorg/samsung/chrome/browser/SbrFaviconController;->RequestFavicon(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mFaviconController:Lorg/samsung/chrome/browser/SbrFaviconController;

    invoke-virtual {v14, v13}, Lorg/samsung/chrome/browser/SbrFaviconController;->GetFaviconData(Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_8

    const/4 v14, 0x0

    array-length v15, v7

    invoke-static {v7, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    :goto_3
    invoke-virtual {v5, v11}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setUrl(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mHistoryData:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-wide v8, v14, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_4
    invoke-virtual {v5, v8, v9}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setTime(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.sec.feature.hovering_ui"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getUrlView()Landroid/widget/TextView;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v14

    const/16 v15, 0x3031

    invoke-virtual {v14, v15}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_5
    return-object v5

    :cond_6
    move-object/from16 v5, p4

    check-cast v5, Lcom/sec/android/app/sbrowser/history/HistoryItem;

    goto/16 :goto_1

    :cond_7
    :try_start_2
    const-string v11, ""
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string v14, "ExpandListAdapter"

    const-string v15, "getChildView : mHistoryData is null "

    invoke-static {v14, v15}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, ""

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02007a

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/history/HistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :catch_1
    move-exception v2

    const-wide/16 v8, 0x0

    const-string v14, "ExpandListAdapter"

    const-string v15, "getChildView : mHistoryData is null "

    invoke-static {v14, v15}, Lorg/samsung/base/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;

    if-eqz v5, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;-><init>(Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;)V

    const v5, 0x7f0a0146

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/history/XLargeExpandListAdapter;->groupPositionToBin(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter$GroupViewHolder;->tvGroup:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_2
    const v5, 0x7f04003e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object p3, v4

    goto :goto_0
.end method
